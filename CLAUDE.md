# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A single-page marketing site ("CatchUp — Smarter decisions for tomato growers") plus the Terraform and GitHub Actions wiring that hosts it on AWS. The site is a **SvelteKit** app prerendered to fully static HTML with `@sveltejs/adapter-static`. There **is** a build step (`npm run build`); the deployable artifact is the generated `build/` directory, not the repo root.

## Architecture

```
push to main ──► Deploy workflow ──► npm ci + npm run build ──► terraform apply ──► aws s3 sync build/ ──► CloudFront invalidation /*
                                                                      │
                                                                      └─► S3 (private) ◄── OAC ◄── CloudFront distribution
```

- **Frontend** is SvelteKit (Svelte 5 runes). `src/routes/+layout.js` sets `prerender = true`, so `vite build` emits a static `index.html` plus hashed `_app/` assets into `build/` — no Node server runs in production. Source lives in `src/` (`routes/` for pages, `lib/` for components and assets).

- **S3 bucket** (`catchup-countdown`) is fully private. Public access is blocked; reads go through CloudFront only, authorized by an Origin Access Control + bucket policy that requires the request to come from this distribution's ARN (`terraform/main.tf:50-71`).
- **CloudFront** uses the AWS-managed "CachingOptimized" cache policy and the default CloudFront cert (no custom domain configured).
- **GitHub Actions auth** is OIDC, not long-lived keys. The trust policy is scoped to `repo:${github_owner}/${github_repo}:*` (`terraform/main.tf:89-110`). The role gets `AdministratorAccess` *deliberately* because Terraform here manages IAM itself and the AWS account holds only this site — see the comment at `terraform/main.tf:73-76` before narrowing it.
- **Terraform state** lives in S3 bucket `catchup-countdown-tfstate` with native S3 locking (Terraform 1.10+, no DynamoDB). The state bucket is provisioned out-of-band by `bootstrap.sh` — this is a one-time operation that has already been run.

## Deploy flow specifics

- `terraform apply` runs on **every push to main** as part of the deploy job — it is not gated behind an approval. PRs that touch `terraform/**` run `.github/workflows/terraform-plan.yml`, which executes `terraform plan` and enforces `terraform fmt -check -recursive`; plan output is viewable in the Actions run logs.
- The deploy job runs `npm ci && npm run build` (Node 20) before touching AWS. The `aws s3 sync build "s3://…" --delete` step uploads **only** the build output, so the bucket mirrors `build/` exactly. No exclude list is needed — repo tooling files never reach S3 because they're not in `build/`. Adding a top-level config/script/doc is safe.
- CloudFront invalidation is `/*` on every deploy — fine for this size, costly at scale.
- `vars.AWS_ROLE_TO_ASSUME` (repo variable, not secret) holds the IAM role ARN output by `terraform output github_actions_role_arn`.

## Common commands

```bash
# Format Terraform (CI enforces this on PRs)
cd terraform && terraform fmt -recursive

# Plan locally (requires AWS creds with access to the state bucket + resources)
cd terraform && terraform init && terraform plan

# Develop the site locally (hot-reloading dev server)
npm install        # first time only
npm run dev        # then open http://localhost:5173

# Build the static site (emits build/) and preview the production output
npm run build
npm run preview

# One-time state bucket bootstrap (already done; do not re-run unless rebuilding from scratch)
./bootstrap.sh
```

## Editing the site

The page lives in `src/routes/+page.svelte` (markup + section-scoped styles). Brand colors are CSS custom properties on `:root` in `src/app.css` (cream/field-green/tomato palette), which also holds the global resets and `.wrap`/`.mono` helpers. Reusable pieces are in `src/lib/`: `Logo.svelte` (the berry mark, used in nav + footer) and `Countdown.svelte` (the launch clock — it renders `—` placeholders during prerender and starts ticking on mount via `onMount`, so the prerendered HTML stays hydration-stable). The hero image is imported as an asset from `src/lib/assets/tomato.webp` (Vite fingerprints it); the hero composes it with CSS blobs and a radial-gradient overlay, so changes to the image dimensions or aspect will affect the hero layout.

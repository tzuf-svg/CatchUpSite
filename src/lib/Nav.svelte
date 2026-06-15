<script>
	import Logo from '$lib/Logo.svelte';

	/** @type {{ active?: 'home' | 'features' | 'rules' }} */
	let { active = 'home' } = $props();
</script>

<header class="nav">
	<div class="nav-inner">
		<div class="wrap nav-row">
			<Logo size={25} />
			<nav class="nav-links">
				<a href="/" class:active={active === 'home'}>Home</a>
				<a href="/features" class:active={active === 'features'}>Features</a>
				<a href="/rules" class:active={active === 'rules'}>Rules</a>
			</nav>
		</div>
	</div>
</header>

<style>
	header.nav {
		position: sticky;
		top: 0;
		z-index: 50;
	}
	.nav-inner {
		background: var(--field-deep);
		color: var(--cream);
	}
	.nav-row {
		display: flex;
		align-items: center;
		justify-content: space-between;
		gap: 24px;
		height: 72px;
	}
	.nav-links {
		display: flex;
		align-items: center;
		gap: 30px;
	}
	.nav-links a {
		font-weight: 600;
		font-size: 14.5px;
		color: var(--cream-muted);
		transition: 0.18s;
		position: relative;
	}
	.nav-links a:hover {
		color: var(--cream);
	}
	.nav-links a.active {
		color: var(--cream);
	}
	.nav-links a.active::after {
		content: '';
		position: absolute;
		left: 0;
		right: 0;
		bottom: -7px;
		height: 2px;
		border-radius: 2px;
		background: var(--tomato);
	}
	@media (max-width: 880px) {
		.nav-links {
			gap: 18px;
		}
		.nav-links a {
			font-size: 13px;
		}
	}
</style>

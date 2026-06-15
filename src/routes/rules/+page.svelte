<script>
	import Nav from '$lib/Nav.svelte';
	import Footer from '$lib/Footer.svelte';
</script>

<svelte:head>
	<title>CatchUp — How rules work</title>
	<meta
		name="description"
		content="Rules turn raw data into the right call for your field — a when/then policy that weighs the outside world against your own farm facts."
	/>
</svelte:head>

<Nav active="rules" />

<main>
	<!-- HERO -->
	<section class="phero">
		<div class="blob b1"></div>
		<div class="blob b2"></div>
		<div class="wrap">
			<span class="eyebrow mono"><span class="dot"></span>How rules work</span>
			<h1>Rules turn raw data into the <span>right call</span> for your field.</h1>
			<p class="lede">
				A rule is a simple policy: <em>when</em> conditions from the world meet what's true about your
				farm, <em>then</em> CatchUp acts. They run quietly in the background and you stay in control of
				every one.
			</p>
		</div>
	</section>

	<!-- TWO STREAMS -->
	<section class="streams">
		<div class="wrap">
			<span class="sec-tag mono">Two streams, one decision</span>
			<h2 class="sec-title">Every rule weighs the outside world against your own field.</h2>
			<p class="sec-sub">
				On their own, a temperature reading or a crop type means little. A rule is where they meet —
				and that's what makes the advice yours, not generic.
			</p>
			<div class="stream-grid">
				<div class="stream world">
					<div class="sh"><span class="sdot"></span><h3>From the world</h3></div>
					<p>
						Live signals coming in from your connected sources and the environment around the field.
					</p>
					<div class="chips">
						<span class="chip world">heat sensor</span>
						<span class="chip world">soil moisture</span>
						<span class="chip world">weather forecast</span>
						<span class="chip world">irrigation flow</span>
						<span class="chip world">humidity</span>
					</div>
				</div>
				<div class="stream farm">
					<div class="sh"><span class="sdot"></span><h3>From your farm</h3></div>
					<p>What CatchUp knows about you — set once, refined as the season goes on.</p>
					<div class="chips">
						<span class="chip farm">location</span>
						<span class="chip farm">crop type</span>
						<span class="chip farm">variety</span>
						<span class="chip farm">growth stage</span>
						<span class="chip farm">planting date</span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ANATOMY -->
	<section>
		<div class="wrap">
			<span class="sec-tag mono">Anatomy of a rule</span>
			<h2 class="sec-title">Readable as a sentence. Precise as a policy.</h2>
			<p class="sec-sub">
				Like a written policy, a rule reads top to bottom: the conditions that must hold, then exactly
				what happens when they do. Coloured tags show where each value comes from.
			</p>
			<div class="legend">
				<span><i class="lw"></i>From the world</span>
				<span><i class="lf"></i>From your farm</span>
			</div>

			<div class="rule">
				<div class="rule-head">
					<span class="berry"></span><span class="rname">Heat-stress watch</span><span class="rstate"
						>Active</span
					>
				</div>
				<div class="rule-body">
					<div class="kw">WHEN</div>
					<div class="clause">
						<span class="tok world">heat sensor</span><span class="op">average over 3 days</span><span
							class="op">&gt;</span
						><span class="val">35°C</span>
					</div>
					<div class="and">AND</div>
					<div class="clause">
						<span class="tok farm">crop type</span><span class="op">is</span><span class="val"
							>tomato</span
						>
					</div>
					<div class="and">AND</div>
					<div class="clause">
						<span class="tok farm">growth stage</span><span class="op">is</span><span class="val"
							>fruit set</span
						><span class="op">— most heat-sensitive</span>
					</div>
					<div class="and">AND</div>
					<div class="clause">
						<span class="tok world">soil moisture</span><span class="op">dropped</span><span
							class="op">&gt;</span
						><span class="val">15%</span>
					</div>
					<div class="then">
						<div class="kw" style="color:var(--tomato)">THEN</div>
						<div class="action msg">
							<div class="ai"></div>
							<p>
								<b>Send message</b>"Heat stress risk on block 3 this afternoon — an early-evening
								irrigation pulse will help fruit set hold."
							</p>
						</div>
						<div class="action">
							<div class="ai"></div>
							<p><b>Suggest action</b>Evening irrigation pulse, tuned to your valve schedule.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- HOW IT RUNS -->
	<section class="how">
		<div class="wrap">
			<span class="sec-tag mono">How a rule runs</span>
			<h2 class="sec-title">Quiet in the background, until it matters.</h2>
			<div class="steps">
				<div class="step">
					<div class="n">1</div>
					<div>
						<h4>Watch</h4>
						<p>
							CatchUp continuously checks incoming readings against every active rule — no polling, no
							dashboards to babysit.
						</p>
					</div>
				</div>
				<div class="step">
					<div class="n">2</div>
					<div>
						<h4>Match</h4>
						<p>
							When the world conditions and your farm facts all line up, the rule fires once — and
							won't nag you again until things change.
						</p>
					</div>
				</div>
				<div class="step">
					<div class="n">3</div>
					<div>
						<h4>Act</h4>
						<p>
							It sends the message or recommendation, always showing the readings that triggered it so
							you can trust the call.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- TEMPLATES -->
	<section>
		<div class="wrap">
			<span class="sec-tag mono">A library to start from</span>
			<h2 class="sec-title">Begin with a proven rule, then tune it to your field.</h2>
			<p class="sec-sub">
				Every rule ships editable. Adjust a threshold, swap a source, or write your own from scratch —
				your field knows things no template does.
			</p>
			<div class="tpl-grid">
				<div class="tpl">
					<div class="tt">Disease pressure</div>
					<h4>Blight risk window</h4>
					<p>Warns when humidity and leaf-wetness conditions favour late blight for your variety.</p>
					<div class="uses">
						<span class="mini world">humidity</span><span class="mini world">forecast</span><span
							class="mini farm">variety</span
						>
					</div>
				</div>
				<div class="tpl">
					<div class="tt">Water</div>
					<h4>Irrigation drift</h4>
					<p>Flags when a valve runs longer or shorter than its norm for your block layout.</p>
					<div class="uses">
						<span class="mini world">irrigation flow</span><span class="mini farm">location</span>
					</div>
				</div>
				<div class="tpl">
					<div class="tt">Spraying</div>
					<h4>Safe spray window</h4>
					<p>Tells you the dry, low-wind hours left before rain — for the product you're applying.</p>
					<div class="uses">
						<span class="mini world">forecast</span><span class="mini world">wind</span><span
							class="mini farm">crop type</span
						>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- FINAL -->
	<section class="final">
		<div class="blob"></div>
		<div class="wrap">
			<h2>Your field's rules, <span>working while you do.</span></h2>
			<p>See the features that feed every rule — the data connections, the messages, the conversation.</p>
			<a class="cta" href="/features">Explore the features →</a>
		</div>
	</section>
</main>

<Footer />

<style>
	/* page hero */
	.phero {
		background: var(--field-deep);
		color: var(--cream);
		position: relative;
		overflow: hidden;
		padding: 96px 0 110px;
		text-align: center;
	}
	.phero .blob {
		position: absolute;
		border-radius: 50%;
		filter: blur(2px);
		opacity: 0.45;
		z-index: 0;
	}
	.phero .b1 {
		width: 480px;
		height: 480px;
		background: radial-gradient(circle at 35% 35%, var(--field-bright), transparent 65%);
		top: -180px;
		right: -120px;
	}
	.phero .b2 {
		width: 340px;
		height: 340px;
		background: radial-gradient(circle at 50% 50%, var(--tomato), transparent 68%);
		bottom: -160px;
		left: -90px;
		opacity: 0.3;
	}
	.phero .wrap {
		position: relative;
		z-index: 2;
	}
	.eyebrow {
		display: inline-flex;
		align-items: center;
		gap: 9px;
		background: rgba(255, 255, 255, 0.08);
		border: 1px solid rgba(255, 255, 255, 0.16);
		padding: 8px 16px;
		border-radius: 40px;
		color: var(--cream);
	}
	.eyebrow .dot {
		width: 7px;
		height: 7px;
		border-radius: 50%;
		background: var(--tomato);
	}
	.phero h1 {
		font-family: var(--disp);
		font-weight: 500;
		font-size: clamp(34px, 5vw, 60px);
		line-height: 1.04;
		letter-spacing: -0.02em;
		max-width: 18ch;
		margin: 22px auto 0;
	}
	.phero h1 span {
		font-style: italic;
		font-weight: 400;
		color: var(--tomato);
	}
	.phero p.lede {
		color: var(--cream-muted);
		max-width: 56ch;
		margin: 22px auto 0;
		font-size: clamp(16px, 1.5vw, 19px);
	}

	section {
		padding: 104px 0;
	}
	.sec-tag {
		display: inline-block;
		color: var(--tomato);
		margin-bottom: 14px;
	}
	.sec-title {
		font-family: var(--disp);
		font-weight: 500;
		font-size: clamp(28px, 3.6vw, 44px);
		letter-spacing: -0.015em;
		max-width: 22ch;
		line-height: 1.08;
	}
	.sec-sub {
		color: var(--muted);
		font-size: 17px;
		max-width: 58ch;
		margin-top: 16px;
	}

	/* two streams */
	.streams {
		background: var(--cream-2);
	}
	.stream-grid {
		display: grid;
		grid-template-columns: 1fr 1fr;
		gap: 22px;
		margin-top: 52px;
	}
	.stream {
		background: #fff;
		border: 1px solid var(--cream-2);
		border-radius: 24px;
		padding: 30px 30px 26px;
	}
	.stream .sh {
		display: flex;
		align-items: center;
		gap: 12px;
		margin-bottom: 6px;
	}
	.stream .sdot {
		width: 12px;
		height: 12px;
		border-radius: 50%;
		flex: 0 0 auto;
	}
	.stream.world .sdot {
		background: var(--field-bright);
	}
	.stream.farm .sdot {
		background: var(--tomato);
	}
	.stream h3 {
		font-family: var(--disp);
		font-weight: 600;
		font-size: 22px;
		letter-spacing: -0.01em;
	}
	.stream > p {
		color: var(--muted);
		font-size: 14.5px;
		margin-bottom: 20px;
	}
	.chips {
		display: flex;
		flex-wrap: wrap;
		gap: 9px;
	}
	.chip {
		font-family: var(--mono);
		font-weight: 600;
		font-size: 12.5px;
		padding: 8px 13px;
		border-radius: 9px;
		display: inline-flex;
		align-items: center;
		gap: 8px;
	}
	.chip::before {
		content: '';
		width: 7px;
		height: 7px;
		border-radius: 50%;
		flex: 0 0 auto;
	}
	.chip.world {
		background: oklch(0.58 0.11 150 / 0.14);
		color: var(--field-deep);
	}
	.chip.world::before {
		background: var(--field-bright);
	}
	.chip.farm {
		background: oklch(0.62 0.18 28 / 0.12);
		color: var(--tomato-deep);
	}
	.chip.farm::before {
		background: var(--tomato);
	}

	/* anatomy / rule card */
	.legend {
		display: flex;
		gap: 24px;
		flex-wrap: wrap;
		margin-top: 34px;
	}
	.legend span {
		display: inline-flex;
		align-items: center;
		gap: 9px;
		font-size: 13.5px;
		font-weight: 600;
		color: var(--muted);
	}
	.legend i {
		width: 11px;
		height: 11px;
		border-radius: 50%;
	}
	.legend .lw {
		background: var(--field-bright);
	}
	.legend .lf {
		background: var(--tomato);
	}

	.rule {
		background: #fff;
		border: 1px solid var(--cream-2);
		border-radius: 24px;
		overflow: hidden;
		box-shadow: 0 30px 60px -40px rgba(20, 40, 25, 0.5);
		margin-top: 40px;
	}
	.rule-head {
		display: flex;
		align-items: center;
		gap: 13px;
		padding: 20px 28px;
		background: var(--field-deep);
		color: var(--cream);
	}
	.berry {
		width: 18px;
		height: 18px;
		border-radius: 50%;
		background: var(--tomato);
		position: relative;
		flex: 0 0 auto;
		box-shadow: inset -2px -2px 0 rgba(0, 0, 0, 0.12);
	}
	.berry::after {
		content: '';
		position: absolute;
		top: -5px;
		left: 50%;
		transform: translateX(-50%) rotate(-16deg);
		width: 11px;
		height: 7px;
		border-radius: 0 70% 0 70%;
		background: var(--field-bright);
	}
	.rule-head .berry {
		width: 14px;
		height: 14px;
	}
	.rule-head .rname {
		font-family: var(--disp);
		font-weight: 600;
		font-size: 19px;
	}
	.rule-head .rstate {
		margin-left: auto;
		font-family: var(--mono);
		font-size: 11.5px;
		font-weight: 600;
		letter-spacing: 0.1em;
		text-transform: uppercase;
		color: var(--field-bright);
		display: flex;
		align-items: center;
		gap: 8px;
	}
	.rule-head .rstate::before {
		content: '';
		width: 8px;
		height: 8px;
		border-radius: 50%;
		background: var(--field-bright);
	}
	.rule-body {
		padding: 28px 30px;
		font-family: var(--mono);
		font-size: 14px;
	}
	.kw {
		font-family: var(--mono);
		font-weight: 700;
		font-size: 12px;
		letter-spacing: 0.14em;
		color: var(--muted);
	}
	.clause {
		display: flex;
		flex-wrap: wrap;
		align-items: center;
		gap: 10px;
		padding: 11px 0;
	}
	.clause + .clause {
		border-top: 1px dashed var(--cream-2);
	}
	.tok {
		padding: 6px 12px;
		border-radius: 8px;
		display: inline-flex;
		align-items: center;
		gap: 8px;
		font-weight: 600;
		font-size: 13px;
	}
	.tok::before {
		content: '';
		width: 7px;
		height: 7px;
		border-radius: 50%;
		flex: 0 0 auto;
	}
	.tok.world {
		background: oklch(0.58 0.11 150 / 0.14);
		color: var(--field-deep);
	}
	.tok.world::before {
		background: var(--field-bright);
	}
	.tok.farm {
		background: oklch(0.62 0.18 28 / 0.12);
		color: var(--tomato-deep);
	}
	.tok.farm::before {
		background: var(--tomato);
	}
	.op {
		color: var(--muted);
		font-weight: 600;
	}
	.val {
		color: var(--ink);
		font-weight: 700;
	}
	.and {
		font-family: var(--mono);
		font-weight: 700;
		font-size: 11px;
		letter-spacing: 0.16em;
		color: var(--tomato);
		padding: 4px 0;
	}
	.then {
		margin-top: 8px;
		padding-top: 20px;
		border-top: 2px solid var(--cream-2);
	}
	.action {
		display: flex;
		gap: 12px;
		align-items: flex-start;
		padding: 9px 0;
		font-family: var(--sans);
	}
	.action .ai {
		flex: 0 0 auto;
		width: 26px;
		height: 26px;
		border-radius: 8px;
		background: var(--field);
		display: flex;
		align-items: center;
		justify-content: center;
		margin-top: 1px;
	}
	.action .ai::after {
		content: '';
		width: 9px;
		height: 9px;
		border-radius: 50%;
		background: var(--cream);
	}
	.action.msg .ai {
		background: var(--tomato);
	}
	.action p {
		font-size: 14.5px;
		color: var(--ink);
	}
	.action p b {
		font-family: var(--mono);
		font-weight: 700;
		font-size: 11px;
		letter-spacing: 0.1em;
		text-transform: uppercase;
		color: var(--muted);
		display: block;
		margin-bottom: 2px;
	}

	/* steps */
	.how {
		background: var(--cream-2);
	}
	.steps {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: 0;
		margin-top: 52px;
		border-top: 1px solid #ddd6c4;
	}
	.step {
		display: flex;
		flex-direction: column;
		gap: 14px;
		padding: 34px 34px 10px 0;
		border-right: 1px solid #ddd6c4;
	}
	.step:last-child {
		border-right: none;
		padding-right: 0;
	}
	.step .n {
		width: 42px;
		height: 42px;
		border-radius: 50%;
		background: var(--field);
		color: var(--cream);
		font-family: var(--disp);
		font-style: italic;
		font-weight: 500;
		display: flex;
		align-items: center;
		justify-content: center;
		font-size: 20px;
	}
	.step h4 {
		font-family: var(--disp);
		font-weight: 600;
		font-size: 21px;
		margin-bottom: 5px;
	}
	.step p {
		color: var(--muted);
		font-size: 15px;
	}

	/* templates */
	.tpl-grid {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: 18px;
		margin-top: 48px;
	}
	.tpl {
		background: #fff;
		border: 1px solid var(--cream-2);
		border-radius: 20px;
		padding: 24px;
		transition: 0.2s;
	}
	.tpl:hover {
		transform: translateY(-4px);
		box-shadow: 0 22px 44px -30px rgba(20, 40, 25, 0.45);
	}
	.tpl .tt {
		font-family: var(--mono);
		font-weight: 700;
		font-size: 11px;
		letter-spacing: 0.12em;
		text-transform: uppercase;
		color: var(--tomato);
		margin-bottom: 12px;
	}
	.tpl h4 {
		font-family: var(--disp);
		font-weight: 600;
		font-size: 19px;
		margin-bottom: 8px;
		letter-spacing: -0.01em;
	}
	.tpl p {
		color: var(--muted);
		font-size: 14.5px;
	}
	.tpl .uses {
		display: flex;
		gap: 7px;
		flex-wrap: wrap;
		margin-top: 16px;
	}
	.mini {
		font-family: var(--mono);
		font-weight: 600;
		font-size: 10.5px;
		padding: 4px 9px;
		border-radius: 6px;
		display: inline-flex;
		align-items: center;
		gap: 6px;
	}
	.mini::before {
		content: '';
		width: 6px;
		height: 6px;
		border-radius: 50%;
	}
	.mini.world {
		background: oklch(0.58 0.11 150 / 0.14);
		color: var(--field-deep);
	}
	.mini.world::before {
		background: var(--field-bright);
	}
	.mini.farm {
		background: oklch(0.62 0.18 28 / 0.12);
		color: var(--tomato-deep);
	}
	.mini.farm::before {
		background: var(--tomato);
	}

	/* final */
	.final {
		background: var(--field-deep);
		color: var(--cream);
		text-align: center;
		position: relative;
		overflow: hidden;
	}
	.final .blob {
		position: absolute;
		width: 420px;
		height: 420px;
		border-radius: 50%;
		background: radial-gradient(circle, var(--tomato), transparent 66%);
		opacity: 0.3;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}
	.final .wrap {
		position: relative;
		z-index: 2;
	}
	.final h2 {
		font-family: var(--disp);
		font-weight: 500;
		font-size: clamp(32px, 5vw, 56px);
		line-height: 1.05;
		letter-spacing: -0.02em;
		max-width: 18ch;
		margin: 0 auto;
	}
	.final h2 span {
		font-style: italic;
		font-weight: 400;
		color: var(--tomato);
	}
	.final p {
		color: var(--cream-muted);
		max-width: 48ch;
		margin: 20px auto 0;
		font-size: 17px;
	}
	.final .cta {
		display: inline-flex;
		align-items: center;
		gap: 9px;
		margin-top: 30px;
		padding: 15px 28px;
		border-radius: 44px;
		background: var(--tomato);
		color: #fff;
		font-weight: 700;
		font-size: 16px;
		transition: 0.2s;
	}
	.final .cta:hover {
		background: var(--tomato-deep);
		transform: translateY(-1px);
	}

	@media (max-width: 880px) {
		section {
			padding: 72px 0;
		}
		.stream-grid {
			grid-template-columns: 1fr;
		}
		.steps {
			grid-template-columns: 1fr;
			border-top: none;
		}
		.step {
			border-right: none;
			border-bottom: 1px solid #ddd6c4;
			padding: 24px 0;
		}
		.step:last-child {
			border-bottom: none;
		}
		.tpl-grid {
			grid-template-columns: 1fr;
		}
		.rule-body {
			font-size: 13px;
		}
	}
</style>

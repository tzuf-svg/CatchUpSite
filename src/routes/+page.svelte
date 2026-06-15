<script>
	import Nav from '$lib/Nav.svelte';
	import Footer from '$lib/Footer.svelte';
	import Countdown from '$lib/Countdown.svelte';
	import tomato from '$lib/assets/tomato.webp';
</script>

<Nav active="home" />

<main id="top">
	<!-- HERO -->
	<section class="hero">
		<div class="blob b1"></div>
		<div class="blob b2"></div>
		<div class="hero-bg">
			<div class="ring"></div>
			<img class="tomato-photo" src={tomato} alt="Ripe tomatoes on the vine" />
			<div class="leaf"></div>
		</div>
		<div class="hero-center">
			<span class="eyebrow mono"><span class="dot"></span>AI agronomist for tomato growers</span>
			<h1 class="head">The field is changing faster than ever. Time to <span>catch up.</span></h1>
			<Countdown />
			<div class="signup-note">Launching on iOS, Android &amp; web in 2026.</div>
		</div>
	</section>

	<!-- PRESSURES -->
	<section class="wrap">
		<span class="sec-tag mono">Why now</span>
		<h2 class="sec-title">The season is getting harder. Your tools should get smarter.</h2>
		<div class="grid3">
			<div class="pcard">
				<div class="picon"><b></b></div>
				<h3>A shifting climate</h3>
				<p>
					Heat spikes and erratic rain throw proven calendars out of step. CatchUp adapts the plan to
					the weather you're actually getting.
				</p>
			</div>
			<div class="pcard">
				<div class="picon"><b></b></div>
				<h3>Disease on the move</h3>
				<p>
					Blight, viruses and pests are reaching new regions. Spot the early signs and act before a
					problem spreads down the row.
				</p>
			</div>
			<div class="pcard">
				<div class="picon"><b></b></div>
				<h3>Faster decisions</h3>
				<p>
					Irrigate or hold? Spray or wait? Get a grounded recommendation in seconds — not after the
					next agronomist visit.
				</p>
			</div>
		</div>
	</section>

	<!-- HOW -->
	<section class="how">
		<div class="wrap">
			<span class="sec-tag mono">How it works</span>
			<h2 class="sec-title">Your field, plus a century of tomato know-how.</h2>
			<div class="how-steps">
				<div class="steps">
					<div class="step">
						<div class="n">1</div>
						<div>
							<h4>Bring your field in</h4>
							<p>
								Scouting notes, photos, sensors, weather and soil — CatchUp works with the data you
								already gather.
							</p>
						</div>
					</div>
					<div class="step">
						<div class="n">2</div>
						<div>
							<h4>Just ask</h4>
							<p>
								"Why are these leaves curling?" "Safe to spray before the rain?" Answers grounded in
								real agronomy.
							</p>
						</div>
					</div>
					<div class="step">
						<div class="n">3</div>
						<div>
							<h4>Act with confidence</h4>
							<p>
								A clear recommendation, the reasoning behind it, and what to watch — tuned to your
								variety and region.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- FINAL -->
	<section class="final">
		<div class="blob"></div>
		<div class="wrap">
			<h2>Stop chasing the season. <span>Catch up</span> to it.</h2>
			<p>Join the growers getting first access when CatchUp opens in 2026.</p>
			<div class="signup-note">Opening in 2026.</div>
		</div>
	</section>
</main>

<Footer />

<style>
	/* hero — full-viewport, clock as centerpiece */
	.hero {
		background: var(--field-deep);
		color: var(--cream);
		position: relative;
		overflow: hidden;
		min-height: calc(100svh - 72px);
		display: flex;
		align-items: center;
		justify-content: center;
		padding: 48px 0 60px;
		text-align: center;
	}
	.hero-bg {
		position: absolute;
		inset: 0;
		display: flex;
		align-items: center;
		justify-content: center;
		z-index: 1;
	}
	.hero-bg .ring {
		position: absolute;
		width: min(640px, 82vmin);
		aspect-ratio: 1;
		border-radius: 50%;
		background: radial-gradient(circle at 40% 36%, var(--field-bright), transparent 60%);
		opacity: 0.5;
		filter: blur(10px);
	}
	.hero-bg .tomato-photo {
		position: relative;
		width: min(420px, 54vmin);
		height: min(420px, 54vmin);
		border-radius: 50%;
		object-fit: cover;
		opacity: 0.92;
		box-shadow: 0 40px 90px -28px rgba(0, 0, 0, 0.6);
		background: rgba(239, 231, 212, 0.1);
	}
	.hero-bg .leaf {
		position: absolute;
		z-index: 3;
		top: calc(50% - min(210px, 27vmin));
		left: calc(50% + min(120px, 15vmin));
		width: 54px;
		height: 34px;
		border-radius: 0 80% 0 80%;
		background: var(--field-bright);
		transform: rotate(-24deg);
		box-shadow: 0 8px 18px -8px rgba(0, 0, 0, 0.5);
	}
	.hero::after {
		content: '';
		position: absolute;
		inset: 0;
		z-index: 2;
		background: radial-gradient(
			ellipse 90% 70% at 50% 50%,
			rgba(18, 38, 24, 0.55),
			rgba(18, 38, 24, 0.82)
		);
	}
	.hero .blob {
		position: absolute;
		border-radius: 50%;
		filter: blur(2px);
		opacity: 0.5;
		z-index: 1;
	}
	.b1 {
		width: 520px;
		height: 520px;
		background: radial-gradient(circle at 35% 35%, var(--field-bright), transparent 65%);
		top: -160px;
		right: -120px;
	}
	.b2 {
		width: 360px;
		height: 360px;
		background: radial-gradient(circle at 50% 50%, var(--tomato), transparent 68%);
		bottom: -140px;
		left: -100px;
		opacity: 0.32;
	}
	.hero-center {
		position: relative;
		z-index: 4;
		display: flex;
		flex-direction: column;
		align-items: center;
		gap: clamp(22px, 3.4vh, 38px);
		max-width: 1040px;
		margin: 0 auto;
		padding: 0 40px;
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
		margin: 0;
	}
	.eyebrow .dot {
		width: 7px;
		height: 7px;
		border-radius: 50%;
		background: var(--tomato);
		animation: pulse 2.4s infinite;
	}
	@keyframes pulse {
		0%,
		100% {
			opacity: 1;
		}
		50% {
			opacity: 0.3;
		}
	}
	h1.head {
		font-family: var(--disp);
		font-weight: 500;
		font-size: clamp(28px, 4.4vw, 56px);
		line-height: 1.05;
		letter-spacing: -0.02em;
		max-width: 20ch;
		margin: 0;
	}
	h1.head span {
		font-style: italic;
		font-weight: 400;
		color: var(--tomato);
		position: relative;
		white-space: nowrap;
	}
	h1.head span::after {
		content: '';
		position: absolute;
		left: 0;
		right: 0;
		bottom: 0.02em;
		height: 0.06em;
		background: var(--field-bright);
		border-radius: 4px;
	}
	.signup-note {
		margin-top: 14px;
		color: var(--cream-muted);
		font-size: 13.5px;
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
		font-size: clamp(30px, 4vw, 48px);
		letter-spacing: -0.015em;
		max-width: 20ch;
		line-height: 1.06;
	}

	.grid3 {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: 22px;
		margin-top: 52px;
	}
	.pcard {
		background: #fff;
		border: 1px solid var(--cream-2);
		border-radius: 24px;
		padding: 32px 30px;
		transition: 0.2s;
	}
	.pcard:hover {
		transform: translateY(-4px);
		box-shadow: 0 22px 44px -28px rgba(20, 40, 25, 0.45);
	}
	.picon {
		width: 48px;
		height: 48px;
		border-radius: 14px;
		background: var(--cream-2);
		display: flex;
		align-items: center;
		justify-content: center;
		margin-bottom: 22px;
	}
	.picon b {
		width: 16px;
		height: 16px;
		border-radius: 5px;
		background: var(--field);
	}
	.pcard:nth-child(2) .picon b {
		border-radius: 50%;
		background: var(--tomato);
	}
	.pcard:nth-child(3) .picon b {
		background: var(--field-bright);
		transform: rotate(45deg);
	}
	.pcard h3 {
		font-family: var(--disp);
		font-weight: 600;
		font-size: 23px;
		margin-bottom: 10px;
		letter-spacing: -0.01em;
	}
	.pcard p {
		color: var(--muted);
		font-size: 15px;
	}

	/* how */
	.how {
		background: var(--cream-2);
	}
	.how-steps {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: 0;
		margin-top: 52px;
		border-top: 1px solid #ddd6c4;
	}
	.how-steps .steps {
		display: contents;
	}
	.steps .step {
		display: flex;
		flex-direction: column;
		gap: 16px;
		padding: 34px 34px 34px 0;
		border-right: 1px solid #ddd6c4;
	}
	.steps .step:last-child {
		border-right: none;
		padding-right: 0;
	}
	.step .n {
		flex: 0 0 auto;
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
		font-size: clamp(34px, 5.4vw, 64px);
		line-height: 1.04;
		letter-spacing: -0.02em;
		max-width: 16ch;
		margin: 0 auto;
	}
	.final h2 span {
		font-style: italic;
		font-weight: 400;
		color: var(--tomato);
	}
	.final p {
		color: var(--cream-muted);
		max-width: 46ch;
		margin: 20px auto 0;
		font-size: 17px;
	}
	.final .signup-note {
		color: var(--cream-muted);
		margin-top: 24px;
	}

	@media (max-width: 880px) {
		.grid3 {
			grid-template-columns: 1fr;
		}
		.how-steps {
			grid-template-columns: 1fr;
			gap: 0;
			border-top: none;
		}
		.how-steps .step {
			flex-direction: row;
			gap: 18px;
			padding: 24px 0;
			border-right: none;
			border-bottom: 1px solid #ddd6c4;
		}
		.how-steps .step:last-child {
			border-bottom: none;
		}
		.hero {
			min-height: calc(100svh - 72px);
			padding: 40px 0 48px;
		}
		.hero-bg .tomato-photo {
			width: min(340px, 70vmin);
			height: min(340px, 70vmin);
		}
		.hero-bg .ring {
			width: min(420px, 86vmin);
		}
	}
</style>

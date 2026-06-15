<script>
	import Nav from '$lib/Nav.svelte';
	import Footer from '$lib/Footer.svelte';
</script>

<svelte:head>
	<title>CatchUp — Features</title>
	<meta
		name="description"
		content="An agronomist that talks, watches and plugs into your field — voice and chat, proactive messages, and connections to the data you already collect."
	/>
</svelte:head>

<Nav active="features" />

<main>
	<!-- HERO -->
	<section class="phero">
		<div class="blob b1"></div>
		<div class="blob b2"></div>
		<div class="wrap">
			<span class="eyebrow mono"><span class="dot"></span>What CatchUp does</span>
			<h1>An agronomist that <span>talks, watches</span> and plugs into your field.</h1>
			<p class="lede">
				CatchUp isn't another dashboard to check. You speak to it, it reaches out when something
				matters, and it reads straight from the equipment you already run.
			</p>
		</div>
	</section>

	<!-- FEATURE 1 — TALK -->
	<section class="feat">
		<div class="wrap">
			<div class="frow">
				<div class="ftext">
					<div class="fnum">Feature 01</div>
					<h2 class="ftitle">Just talk to it — out loud or in writing.</h2>
					<p class="fbody">
						Ask the way you'd ask a trusted agronomist standing next to you in the row. No menus, no
						forms. CatchUp listens, understands the crop you grow, and answers in plain language.
					</p>
					<ul class="flist">
						<li><span class="tick"></span>Speak a question hands-free while you walk the field.</li>
						<li><span class="tick"></span>Follow up naturally — it remembers the conversation.</li>
						<li><span class="tick"></span>Answers cite the data and reasoning behind them.</li>
					</ul>
				</div>
				<div class="vis">
					<div class="panel">
						<div class="panel-head">
							<span class="berry"></span><span class="ttl">CatchUp</span><span class="meta"
								>Listening…</span
							>
						</div>
						<div class="bubble me">
							"The lower leaves on block 3 are curling — what's going on?"
						</div>
						<div class="bubble app">
							Block 3 hit 36°C three afternoons running and soil moisture dropped 18%. That points to
							heat &amp; water stress, not disease. I'd irrigate this evening rather than spray.
						</div>
						<div class="voicebar">
							<div class="micbtn"></div>
							<div class="wave">
								<i style="animation-delay:0s"></i><i style="animation-delay:.1s"></i><i
									style="animation-delay:.2s"
								></i><i style="animation-delay:.3s"></i><i style="animation-delay:.15s"></i><i
									style="animation-delay:.25s"
								></i><i style="animation-delay:.05s"></i><i style="animation-delay:.35s"></i><i
									style="animation-delay:.2s"
								></i><i style="animation-delay:.1s"></i>
							</div>
							<span class="wave-cap">Tap to speak</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- FEATURE 2 — PROACTIVE -->
	<section class="feat">
		<div class="wrap">
			<div class="frow">
				<div class="ftext">
					<div class="fnum">Feature 02</div>
					<h2 class="ftitle">It reaches out first — before you'd think to ask.</h2>
					<p class="fbody">
						CatchUp watches your incoming data around the clock and messages you the moment a pattern
						needs attention. Every note is specific to your field, with a clear next step — not a
						generic alert.
					</p>
					<ul class="flist">
						<li><span class="tick"></span>Timely heads-ups built from your live sensor and weather feeds.</li>
						<li><span class="tick"></span>Each message explains what it saw and what it suggests.</li>
						<li><span class="tick"></span>You set how often and how loud — quiet by default.</li>
					</ul>
				</div>
				<div class="vis">
					<div class="notif">
						<div class="ic"><b></b></div>
						<div class="nbody">
							<h5>Heat stress likely this afternoon</h5>
							<p>
								Block 3 forecast to pass 35°C for a 4th day. Consider an early-evening irrigation
								pulse.
							</p>
							<div class="nt">Now · from your weather + heat sensors</div>
						</div>
					</div>
					<div class="notif">
						<div class="ic"><b></b></div>
						<div class="nbody">
							<h5>Spray window closing</h5>
							<p>Rain expected in 9 hrs. If you're treating block 1, the dry window ends around 6pm.</p>
							<div class="nt">2h ago · from forecast</div>
						</div>
					</div>
					<div class="notif">
						<div class="ic"><b></b></div>
						<div class="nbody">
							<h5>Irrigation ran long on valve 4</h5>
							<p>Cycle exceeded its usual duration by 40 min. Worth a quick check for a stuck valve.</p>
							<div class="nt">Yesterday · from your irrigation computer</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- FEATURE 3 — CONNECT -->
	<section class="feat">
		<div class="wrap">
			<div class="frow">
				<div class="ftext">
					<div class="fnum">Feature 03</div>
					<h2 class="ftitle">Plugs into the data you already collect.</h2>
					<p class="fbody">
						Heat and soil sensors, your irrigation controller, a spreadsheet you keep by hand —
						CatchUp brings them together so its advice is grounded in your real numbers, not
						assumptions.
					</p>
					<ul class="flist">
						<li><span class="tick"></span>Connect once; readings flow in automatically.</li>
						<li><span class="tick"></span>Import history from Excel and CSV in a few clicks.</li>
						<li><span class="tick"></span>New source types added continually.</li>
					</ul>
				</div>
				<div class="vis">
					<div class="hub">
						<div class="src">
							<div class="si"><b></b></div>
							<h6>Heat &amp; soil sensors</h6>
							<span>Live temperature &amp; moisture readings</span>
						</div>
						<div class="src">
							<div class="si"><b></b></div>
							<h6>Irrigation computer</h6>
							<span>Valve cycles, durations &amp; flow</span>
						</div>
						<div class="src">
							<div class="si"><b></b></div>
							<h6>Excel &amp; CSV</h6>
							<span>Your records and scouting logs</span>
						</div>
						<div class="src">
							<div class="si"><b></b></div>
							<h6>Weather feeds</h6>
							<span>Local forecast &amp; field history</span>
						</div>
						<div class="src more">+ Soil probes, drones, lab results &amp; more</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- FINAL -->
	<section class="final">
		<div class="blob"></div>
		<div class="wrap">
			<h2>One assistant for the <span>whole season.</span></h2>
			<p>See how rules turn all of this data into the right message at the right moment.</p>
			<a class="cta" href="/rules">How rules work →</a>
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
		max-width: 54ch;
		margin: 22px auto 0;
		font-size: clamp(16px, 1.5vw, 19px);
	}

	/* feature rows */
	section.feat {
		padding: 104px 0;
	}
	section.feat:nth-child(even) {
		background: var(--cream-2);
	}
	.frow {
		display: grid;
		grid-template-columns: 1fr 1fr;
		gap: 72px;
		align-items: center;
	}
	.feat:nth-child(even) .frow {
		direction: rtl;
	}
	.feat:nth-child(even) .frow > * {
		direction: ltr;
	}
	.fnum {
		font-family: var(--disp);
		font-style: italic;
		font-weight: 500;
		font-size: 18px;
		color: var(--tomato);
	}
	.ftitle {
		font-family: var(--disp);
		font-weight: 500;
		font-size: clamp(28px, 3.4vw, 42px);
		letter-spacing: -0.015em;
		line-height: 1.08;
		margin: 10px 0 18px;
		max-width: 15ch;
	}
	.fbody {
		color: var(--muted);
		font-size: 17px;
		max-width: 46ch;
	}
	.flist {
		list-style: none;
		margin: 26px 0 0;
		display: flex;
		flex-direction: column;
		gap: 14px;
	}
	.flist li {
		display: flex;
		gap: 13px;
		align-items: flex-start;
		font-size: 15.5px;
		color: var(--ink);
	}
	.flist .tick {
		flex: 0 0 auto;
		width: 22px;
		height: 22px;
		border-radius: 7px;
		background: var(--field);
		display: flex;
		align-items: center;
		justify-content: center;
		margin-top: 1px;
	}
	.flist .tick::after {
		content: '';
		width: 9px;
		height: 5px;
		border-left: 2px solid var(--cream);
		border-bottom: 2px solid var(--cream);
		transform: rotate(-45deg) translateY(-1px);
	}

	/* visual: chat */
	.vis {
		position: relative;
	}
	.panel {
		background: #fff;
		border: 1px solid var(--cream-2);
		border-radius: 26px;
		padding: 26px;
		box-shadow: 0 30px 60px -36px rgba(20, 40, 25, 0.5);
	}
	.panel-head {
		display: flex;
		align-items: center;
		gap: 11px;
		padding-bottom: 18px;
		border-bottom: 1px solid var(--cream-2);
		margin-bottom: 20px;
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
	.panel-head .berry {
		width: 15px;
		height: 15px;
	}
	.panel-head .ttl {
		font-family: var(--disp);
		font-weight: 600;
		font-size: 17px;
	}
	.panel-head .meta {
		margin-left: auto;
		font-size: 12px;
		color: var(--muted);
		font-weight: 600;
	}
	.bubble {
		padding: 14px 18px;
		border-radius: 18px;
		font-size: 15px;
		max-width: 88%;
		line-height: 1.45;
	}
	.bubble.me {
		background: var(--field-deep);
		color: var(--cream);
		margin-left: auto;
		border-bottom-right-radius: 6px;
	}
	.bubble.app {
		background: var(--cream);
		color: var(--ink);
		border: 1px solid var(--cream-2);
		border-bottom-left-radius: 6px;
	}
	.bubble + .bubble {
		margin-top: 12px;
	}
	.voicebar {
		display: flex;
		align-items: center;
		gap: 14px;
		margin-top: 22px;
		padding: 12px 14px;
		border: 1px solid var(--cream-2);
		border-radius: 40px;
	}
	.micbtn {
		flex: 0 0 auto;
		width: 44px;
		height: 44px;
		border-radius: 50%;
		background: var(--tomato);
		display: flex;
		align-items: center;
		justify-content: center;
		position: relative;
	}
	.micbtn::before {
		content: '';
		width: 11px;
		height: 18px;
		border-radius: 6px;
		background: #fff;
	}
	.micbtn::after {
		content: '';
		position: absolute;
		width: 18px;
		height: 18px;
		border: 2px solid #fff;
		border-top: none;
		border-radius: 0 0 12px 12px;
		bottom: 9px;
	}
	.wave {
		display: flex;
		align-items: center;
		gap: 4px;
		flex: 1;
	}
	.wave i {
		display: block;
		width: 3px;
		border-radius: 3px;
		background: var(--field-bright);
		animation: wv 1.1s ease-in-out infinite;
	}
	@keyframes wv {
		0%,
		100% {
			height: 8px;
		}
		50% {
			height: 24px;
		}
	}
	.wave-cap {
		font-size: 12.5px;
		color: var(--muted);
		font-weight: 600;
		white-space: nowrap;
	}

	/* visual: notifications */
	.notif {
		background: #fff;
		border: 1px solid var(--cream-2);
		border-radius: 20px;
		padding: 18px 20px;
		box-shadow: 0 20px 44px -34px rgba(20, 40, 25, 0.5);
		display: flex;
		gap: 15px;
		align-items: flex-start;
	}
	.notif + .notif {
		margin-top: 16px;
	}
	.notif .ic {
		flex: 0 0 auto;
		width: 42px;
		height: 42px;
		border-radius: 13px;
		display: flex;
		align-items: center;
		justify-content: center;
		background: var(--cream-2);
	}
	.notif .ic b {
		width: 15px;
		height: 15px;
		border-radius: 5px;
		background: var(--field);
	}
	.notif:nth-child(2) .ic {
		background: oklch(0.62 0.18 28 / 0.14);
	}
	.notif:nth-child(2) .ic b {
		border-radius: 50%;
		background: var(--tomato);
	}
	.notif:nth-child(3) .ic b {
		background: var(--field-bright);
		transform: rotate(45deg);
	}
	.notif .nbody h5 {
		font-family: var(--disp);
		font-weight: 600;
		font-size: 16px;
		margin-bottom: 3px;
	}
	.notif .nbody p {
		font-size: 13.5px;
		color: var(--muted);
		line-height: 1.45;
	}
	.notif .nt {
		font-size: 11px;
		color: var(--muted);
		font-weight: 700;
		letter-spacing: 0.08em;
		text-transform: uppercase;
		margin-top: 8px;
	}

	/* visual: data hub */
	.hub {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: 14px;
	}
	.src {
		background: #fff;
		border: 1px solid var(--cream-2);
		border-radius: 18px;
		padding: 20px;
		display: flex;
		flex-direction: column;
		gap: 12px;
		box-shadow: 0 18px 40px -34px rgba(20, 40, 25, 0.45);
		transition: 0.2s;
	}
	.src:hover {
		transform: translateY(-3px);
	}
	.src .si {
		width: 40px;
		height: 40px;
		border-radius: 12px;
		background: var(--cream-2);
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.src .si b {
		width: 16px;
		height: 16px;
		background: var(--field);
		border-radius: 4px;
	}
	.src:nth-child(2) .si b {
		border-radius: 50%;
		background: var(--tomato);
	}
	.src:nth-child(3) .si b {
		background: var(--field-bright);
		border-radius: 3px;
		transform: rotate(45deg);
	}
	.src:nth-child(4) .si b {
		background: var(--field);
		border-radius: 50% 50% 50% 2px;
	}
	.src h6 {
		font-family: var(--disp);
		font-weight: 600;
		font-size: 16px;
	}
	.src span {
		font-size: 12.5px;
		color: var(--muted);
	}
	.src.more {
		align-items: center;
		justify-content: center;
		text-align: center;
		border-style: dashed;
		background: transparent;
		color: var(--muted);
		font-weight: 600;
		font-size: 14px;
		gap: 6px;
		grid-column: span 2;
	}

	/* final */
	.final {
		background: var(--field-deep);
		color: var(--cream);
		text-align: center;
		position: relative;
		overflow: hidden;
		padding: 104px 0;
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
		.frow {
			grid-template-columns: 1fr;
			gap: 34px;
		}
		.feat:nth-child(even) .frow {
			direction: ltr;
		}
		section.feat {
			padding: 72px 0;
		}
	}

	@media (prefers-reduced-motion: reduce) {
		.wave i {
			animation: none;
			height: 16px;
		}
	}
</style>

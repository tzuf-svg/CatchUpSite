<script>
	import { onMount } from 'svelte';

	const LAUNCH = new Date('2026-09-15T09:00:00').getTime();
	const pad = (/** @type {number} */ n) => String(n).padStart(2, '0');

	// Dashes until the client computes the live value — keeps prerendered
	// HTML stable and avoids a hydration mismatch.
	let days = $state('—');
	let hours = $state('—');
	let mins = $state('—');
	let secs = $state('—');

	function tick() {
		const diff = Math.max(0, LAUNCH - Date.now());
		days = pad(Math.floor(diff / 86400000));
		hours = pad(Math.floor((diff % 86400000) / 3600000));
		mins = pad(Math.floor((diff % 3600000) / 60000));
		secs = pad(Math.floor((diff % 60000) / 1000));
	}

	onMount(() => {
		tick();
		const id = setInterval(tick, 1000);
		return () => clearInterval(id);
	});
</script>

<div class="count-label mono">
	Harvest is coming<span class="big">CatchUp launches in</span>
</div>
<div class="clock">
	<div class="unit"><div class="num">{days}</div><div class="cap">Days</div></div>
	<div class="unit"><div class="num">{hours}</div><div class="cap">Hrs</div></div>
	<div class="unit"><div class="num">{mins}</div><div class="cap">Min</div></div>
	<div class="unit"><div class="num">{secs}</div><div class="cap">Sec</div></div>
</div>

<style>
	.count-label {
		color: var(--cream-muted);
		line-height: 1.25;
	}
	.count-label .big {
		display: block;
		font-family: var(--disp);
		font-weight: 500;
		font-size: clamp(22px, 2.6vw, 32px);
		text-transform: none;
		letter-spacing: -0.01em;
		color: var(--cream);
		margin-top: 6px;
		white-space: nowrap;
	}
	.clock {
		display: flex;
		gap: clamp(12px, 1.6vw, 22px);
		justify-content: center;
		flex-wrap: wrap;
	}
	.unit {
		background: var(--cream);
		border: 1px solid rgba(255, 255, 255, 0.18);
		border-radius: 20px;
		padding: clamp(18px, 2.4vh, 30px) clamp(12px, 1.4vw, 20px);
		text-align: center;
		min-width: clamp(104px, 13vw, 156px);
		box-shadow: 0 24px 50px -28px rgba(0, 0, 0, 0.6);
	}
	.unit .num {
		font-family: var(--disp);
		font-weight: 500;
		font-size: clamp(48px, 6.6vw, 96px);
		line-height: 1;
		color: var(--field);
		font-variant-numeric: tabular-nums;
	}
	.unit .cap {
		color: var(--muted);
		margin-top: 10px;
		font-size: clamp(11px, 1vw, 13px);
		letter-spacing: 0.16em;
		text-transform: uppercase;
		font-weight: 600;
	}
	@media (max-width: 880px) {
		.count-label {
			text-align: center;
		}
		.clock {
			flex-wrap: wrap;
			justify-content: center;
		}
		.unit {
			min-width: clamp(72px, 40vw, 140px);
		}
	}
</style>

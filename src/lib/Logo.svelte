<script>
	/** @type {{ size?: number, href?: string }} */
	let { size = 25, href = '/' } = $props();
</script>

<a class="logo" {href} style="font-size:{size}px">
	<span class="berry"></span>CatchUp
</a>

<style>
	.logo {
		display: flex;
		align-items: center;
		gap: 11px;
		font-family: var(--disp);
		font-weight: 600;
		letter-spacing: -0.01em;
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
</style>

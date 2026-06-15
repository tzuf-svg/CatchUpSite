<script>
	import Logo from '$lib/Logo.svelte';
</script>

<footer>
	<div class="wrap foot-row">
		<Logo size={20} />
		<span>© 2026 CatchUp · Smarter decisions for tomato growers</span>
	</div>
</footer>

<style>
	footer {
		background: var(--field-deep);
		color: var(--cream-muted);
		padding: 32px 0;
		border-top: 1px solid rgba(255, 255, 255, 0.1);
	}
	.foot-row {
		display: flex;
		align-items: center;
		justify-content: space-between;
		gap: 20px;
		flex-wrap: wrap;
		font-size: 13.5px;
	}
</style>

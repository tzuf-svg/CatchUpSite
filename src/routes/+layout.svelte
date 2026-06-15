<script>
	import '../app.css';

	let { children } = $props();
</script>

<svelte:head>
	<title>CatchUp — Smarter decisions for tomato growers</title>
	<meta name="description" content="AI agronomist for tomato growers. Smarter decisions for tomorrow's harvest." />
</svelte:head>

{@render children()}

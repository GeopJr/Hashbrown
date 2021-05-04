<script>
	import Window from '$lib/Routes/app-window.svelte';
	import PageTransitions from '$lib/page-transitions.svelte';
</script>

<svelte:head>
	<title>Hashbrown - Install</title>
	<meta name="og:title" content="Hashbrown - Install" />
</svelte:head>

<PageTransitions>
	<Window
		title={'Flathub - Hashbrown'}
		url={'https://flathub.org/apps/details/dev.geopjr.Hashbrown'}
		type={'web'}
	/>
</PageTransitions>

<script>
	export let switcher;

	function handleKeyEvent(event) {
		if (event && event.key !== 'Enter' && event.key !== ' ') return;
		switcher = false;
	}
</script>

<main
	tabindex="0"
	class="c-container"
	class:switcher
	on:click={() => handleKeyEvent()}
	on:keydown={(e) => handleKeyEvent(e)}
>
	<slot />
</main>

<style lang="scss">
	.c-container {
		top: 28px;
		position: absolute;
		width: 100vw;
		height: calc(100vh - 28px);
		background-image: url('/wallpapers/wall.png');
		background-size: cover;
		background-position: center center;
		transition-duration: 200ms;
		display: flex;
		align-items: center;
		justify-content: center;
		&:focus {
			outline: 3px solid #2185ff;
		}
		&.switcher {
			transform: scale(0.7, 0.7);
			border-radius: 30px;
			filter: drop-shadow(0px 0px 15px #222);
			@media only screen and (max-device-width: 768px) {
				transform: scale(0.6, 0.6);
				top: 0;
			}
		}
	}
</style>

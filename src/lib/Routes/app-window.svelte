<script>
	export let type;
	export let url;
	export let title;

	let icon = `/logos/${type.toLowerCase()}.png`;

	import Web from '$lib/Routes/web.svelte';
</script>

<div class="c-app-window">
	<Web {url} {title} {type} />
	<img draggable="false" alt={icon + ' icon'} class="c-icon" src={icon} />
</div>

<style lang="scss">
	:global(.switcher) > :global(#transition) > .c-app-window {
		> .c-icon {
			display: block;
			transform: scale(1, 1);
			transition-duration: 200ms;
		}
		&:hover {
			> .window {
				transition-duration: 200ms;
				transform: scale(1.05, 1.05);
			}
			> .c-icon {
				bottom: 5px;
			}
		}
	}
	.c-app-window > .c-icon {
		bottom: 20px;
		transition-duration: 200ms;
		position: fixed;
		transform: scale(0, 0);
		width: 128px;
		filter: drop-shadow(0px 0px 1px #222);
	}
	.c-app-window {
		display: flex;
		align-items: center;
		justify-content: center;
	}
</style>

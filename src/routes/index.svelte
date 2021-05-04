<script>
	import { darkMode } from '../stores';
	import PageTransitions from '$lib/page-transitions.svelte';

	$: screenshot = $darkMode
		? '/screenshots/hashbrown-dark.png'
		: '/screenshots/hashbrown-light.png';
</script>

<PageTransitions>
	<div class="c-window">
		<img draggable="false" alt="Hashbrown Screenshot" class="c-screenshot" src={screenshot} />
		<img draggable="false" alt="Hashbrown Icon" class="c-icon" src="/logos/hashbrown.png" />
	</div>
</PageTransitions>

<style lang="scss">
	.c-window > .c-screenshot {
		transition-duration: 200ms;
	}
	:global(.switcher) > :global(#transition) {
		> .c-window > * {
			pointer-events: none;
		}
		> .c-window > .c-icon {
			display: block;
			transform: scale(1, 1);
			transition-duration: 200ms;
		}
		> .c-window:hover {
			> .c-screenshot {
				transition-duration: 200ms;
				transform: scale(1.05, 1.05);
			}
			> .c-icon {
				bottom: 200px;
			}
		}
	}

	.c-window > .c-icon {
		bottom: 215px;
		transition-duration: 200ms;
		position: fixed;
		transform: scale(0, 0);
		width: 128px;
		filter: drop-shadow(0px 0px 1px #222);
	}
	.c-window {
		display: flex;
		align-items: center;
		justify-content: center;
	}
</style>

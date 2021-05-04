<script>
	export let url;
	export let title;
	export let type;

	import { darkMode } from '../../stores';

	let headerImage = type.toLowerCase();

	$: header = $darkMode
		? `/headers/${headerImage}-dark.png`
		: `/headers/${headerImage}-light.png`;
	$: borderColor = $darkMode ? '#292929' : '#dfdcd9';
</script>

<div class="window">
	<img draggable="false" alt="" role="presentation" class="header" src={header} />
	<iframe
		src={url}
		allowTransparency="true"
		{title}
		referrerpolicy="no-referrer"
		sandbox="allow-scripts allow-downloads allow-modals allow-popups allow-popups-to-escape-sandbox allow-same-origin"
		style={`border-color: ${borderColor}; background-color: ${borderColor}`}
	>
		Your browser does not support inline frames. This iframe would link to
		https://flathub.org/apps/details/dev.geopjr.Hashbrown.</iframe
	>
</div>

<style lang="scss">
	:global(.switcher) > :global(#transition) > :global(.c-app-window) {
		> .window > * {
			pointer-events: none;
		}
		&:hover {
			> .window {
				transition-duration: 200ms;
				transform: scale(1.05, 1.05);
			}
		}
	}
	.window {
		filter: drop-shadow(0px 0px 1px #000);
		transition-duration: 200ms;
	}
	.header {
		width: 60vw;
		position: relative;
		@media only screen and (max-device-width: 768px) {
			width: 100vw;
		}
	}
	iframe {
		width: 60vw;
		height: 80vh;
		@media only screen and (max-device-width: 768px) {
			width: 100vw;
			height: 90vh;
		}
		border: 1px solid #dfdcd9;
		border-top-width: 0px;
	}
</style>

import adapter from '@sveltejs/adapter-netlify';
import sveltePreprocess from 'svelte-preprocess';
import windi from 'svelte-windicss-preprocess';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	kit: {
		adapter: adapter(),
		target: '#svelte'
	},
	preprocess: [
		sveltePreprocess({
			scss: true,
			sass: true
		}),
		windi.preprocess({
			compile: true,
			prefix: 'hashbrown-'
		})
	]
};

export default config;

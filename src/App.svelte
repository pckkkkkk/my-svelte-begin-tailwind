<script>
	let response = ''

	const test = async () => {
		try {
			const { msg }= await (await fetch('/hi')).json()
			response = msg
		} catch({ message }) {
			console.log(message)
			response = 'check the console.. something is off'
		}
	}
</script>

<main class="font-mono flex justify-center items-center h-full px-4">

	<section class="w-full md:w-1/2 border-t border-r border-black p-4">
		<h1 class="text-4xl mb-4">Hello</h1>
		<p>> <i class="text-orange-700">does tailwind works?</i></p>
		<p class="font-bold mt-4">check the following</p>
		<ol>
			<li>- does it look nice?</li>
		</ol>
		<p class="mt-4">[y]es? then you are okay</p>
		<p>> <i class="text-orange-700">y</i></p>
		<p class="mt-4">> <i class="text-orange-700">does begin works?</i></p>
		<p class="mt-4">
			<button on:click={test} class="font-bold py-2 px-4 bg-black text-white">press me</button>
			<span>to find out.</span>
		</p>
		<h2 class="text-2xl mt-4">
			{#if response.length === 0}
				waiting...
			{:else}
				{response}
			{/if}
		</h2>
	</section>

</main>

<style>

:global(html, body) {
	height: 100%;
}

p, ol li {
	font-size: 1.3em;
}

</style>
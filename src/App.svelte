<script lang="ts">
import { onMount } from "svelte";

import Footer from "./components/footer/Footer.svelte";
import Header from "./components/header/Header.svelte";
import Main from "./Main.svelte";
import Intro from "./pages/intro/Intro.svelte";

    let showIntro = true

    onMount(() => {
        setTimeout(() => {
            showIntro = false
            location.hash  = "#home"
        }, 4240);
    })
</script>

<main>
    {#if showIntro}
       <Intro/>
    {:else}
        <Header/>
        <Main/>
        <Footer/>
    {/if}

    <audio src="music/title.mp3" autoplay></audio>
</main>

<style>
    main {
        overflow: hidden;
        height: 100vh;
    }	
</style>
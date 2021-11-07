<script lang="ts">
import { onMount } from "svelte";

import Footer from "./components/footer/Footer.svelte";
import Header from "./components/header/Header.svelte";
import WindowControls from "./components/windowControls/WindowControls.svelte";
import Main from "./Main.svelte";
import Intro from "./pages/intro/Intro.svelte";

    let showIntro = true

    onMount(() => {
        setTimeout(() => {
            showIntro = false
            location.hash  = "#home"
        }, 4240);
    })

    let isWindowFullscreen = false
    const screenHeight = screen.height

    const checkIfFullscreen = () => {
       if(window.innerHeight === screenHeight) {
            isWindowFullscreen = true
        }
        else {
            isWindowFullscreen = false
        }
    }

    onMount(() => {
        checkIfFullscreen()
    })
</script>

<svelte:window on:resize={checkIfFullscreen}></svelte:window>

<main>
    {#if !isWindowFullscreen}
        <WindowControls/>    
    {/if}

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
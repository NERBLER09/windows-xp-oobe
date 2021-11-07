<script lang="ts">
import { onMount } from "svelte";

import Home from "./pages/home/Home.svelte";
import Routes from "./routes/Routes.svelte";

let isWindowFullscreen = false

    const checkIfFullscreen = () => {
        if(window.innerHeight === screen.height) {
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

<div class="main {isWindowFullscreen ? 'main-fullscreen' : "main-un-fullscreen"}">
    <!-- <Home/> -->
    <Routes/>
</div>

<style>
    .main {
       background-image: url("../images/wpaback.jpg");
        background-repeat: no-repeat;
        background-size: cover;
       width: 100%;
    }

    .main-fullscreen {
        height: 100vh;
        height: calc(100% - 93px);
    }

    .main-un-fullscreen {
        height: 100vh;
        height: calc(100% - 125px);
    }
</style>
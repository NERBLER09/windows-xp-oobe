<script lang="ts">
import { maximizeWindow, minimizeWindow } from "./windowControls";
</script>

<div class="window">
    <div class="title-bar">
        <div class="title-bar-text">Windows XP OOBE (First Time Setup)</div>
        <div class="title-bar-controls">
            <button aria-label="Minimize" on:click={minimizeWindow}/>
            <button aria-label="Maximize" on:click={maximizeWindow}/>
            <button aria-label="Close" on:click="{() => window.close()}" />
        </div>
    </div>
</div>

<style>
    .title-bar-text {
        width: 100%;
        -webkit-app-region: drag;
    }
</style>
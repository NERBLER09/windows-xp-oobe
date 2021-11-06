<script lang="ts">
    type imgSrcType = {
        default: string;
        hover: string;
        clicked: string;
    };

    export let text: string;
    export let type: "back" | "next" | "skip";
    export let imgSrc: imgSrcType;
    export let navPath:string;
    let displayedImgSrc = imgSrc.default;

    const handleNavigation = () => {
        if(type === "back") {
            history.back()
        }
        else if(location.hash === "#finish") {
            window.close()
        }
        else {
            location.hash = navPath
        }
    }
</script>

<!-- svelte-ignore a11y-mouse-events-have-key-events -->
<div
    class="nav-button button-type-{type}"
    on:click={handleNavigation}
    on:mouseleave="{() => displayedImgSrc = imgSrc.default}"
    on:mouseup="{() => displayedImgSrc = imgSrc.default}"
    on:mousedown={() => (displayedImgSrc = imgSrc.clicked)}
    on:mouseover={() => (displayedImgSrc = imgSrc.hover)}
>
    {#if type === "back"}
        <img src={displayedImgSrc} alt="" class="nav-button-img" />
        <p class="nav-button-text body-text">{text}</p>
    {:else}
        <p class="nav-button-text body-text">{text}</p>
        <img src={displayedImgSrc} alt="" class="nav-button-img" />
    {/if}
</div>

<style>
    p {
        margin: 0;
        padding: 0;
    }

    .nav-button {
        display: flex;
        align-items: center;
        margin: 20px;
    }

    .nav-button p {
        margin-right: 5px;
    }
    .button-type-back p {
        margin-left: 5px;
    }

    .nav-button p::first-letter {
        text-decoration: underline;
    }

    .nav-button-skip {
        margin: 10px;
    }
    .button-type-back {
        position: absolute;
        left: 0;
    }
</style>

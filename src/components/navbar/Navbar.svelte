<script lang="ts">
import { onMount } from "svelte";

import NavButton from "./nav-buttons/NavButton.svelte"

    type imgSrcType = {
        default: string,
        hover: string,
        clicked: string
    }

    type navbarButtonType = {
        text: string,
        type: "back" | "next" | "skip",
        imgSrc: imgSrcType,
        navPath: string
    }

    let navbarButtons: navbarButtonType[] = []

    const addNavButtons = (path: string) => {
        navbarButtons = []

        switch(path) {
            case "":
                navbarButtons = [{
                   text: "Next",
                   type: "next",
                   navPath: "#updates",
                   imgSrc: {
                       default: "images/nextup.jpg",
                       hover: "images/nextover.jpg",
                       clicked: "images/nextdown.jpg"
                   }
                }]

            break
            case "#updates":
                navbarButtons  = [
                    {
                        text: "Next",
                        type: "next",
                        navPath: "#internetConnectivity",
                        imgSrc: {
                            default: "images/nextup.jpg",
                            hover: "images/nextover.jpg",
                            clicked: "images/nextdown.jpg"
                        }
                    },
                    {
                        text: "Back",
                        type: "back",
                        navPath: "#",
                        imgSrc: {
                            default: "images/backup.jpg",
                            hover: "images/backover.jpg",
                            clicked: "images/backdown.jpg"
                        }
 
                    }
                ]

                break
            case "#internetConnectivity":
                navbarButtons  = [
                    {
                        text: "Skip",
                        type: "skip",
                        navPath: "#connectToInternet",
                        imgSrc: {
                            default: "images/skipup.jpg",
                            hover: "images/skipover.jpg",
                            clicked: "images/skipdown.jpg"
                        }
                    },
                    {
                        text: "Next",
                        type: "next",
                        navPath: "#connectToInternet",
                        imgSrc: {
                            default: "images/nextup.jpg",
                            hover: "images/nextover.jpg",
                            clicked: "images/nextdown.jpg"
                        }
                    },
                    {
                        text: "Back",
                        type: "back",
                        navPath: "#",
                        imgSrc: {
                            default: "images/backup.jpg",
                            hover: "images/backover.jpg",
                            clicked: "images/backdown.jpg"
                        }
 
                    }
                ]

                break
            case "#connectToInternet":
                navbarButtons  = [
                    {
                        text: "Skip",
                        type: "skip",
                        navPath: "#users",
                        imgSrc: {
                            default: "images/skipup.jpg",
                            hover: "images/skipover.jpg",
                            clicked: "images/skipdown.jpg"
                        }
                    },
                    {
                        text: "Next",
                        type: "next",
                        navPath: "#users",
                        imgSrc: {
                            default: "images/nextup.jpg",
                            hover: "images/nextover.jpg",
                            clicked: "images/nextdown.jpg"
                        }
                    },
                    {
                        text: "Back",
                        type: "back",
                        navPath: "#",
                        imgSrc: {
                            default: "images/backup.jpg",
                            hover: "images/backover.jpg",
                            clicked: "images/backdown.jpg"
                        }
 
                    }
                ]

                break
            case "#users":
                navbarButtons  = [
                    {
                        text: "Next",
                        type: "next",
                        navPath: "#finish",
                        imgSrc: {
                            default: "images/nextup.jpg",
                            hover: "images/nextover.jpg",
                            clicked: "images/nextdown.jpg"
                        }
                    },
                    {
                        text: "Back",
                        type: "back",
                        navPath: "#",
                        imgSrc: {
                            default: "images/backup.jpg",
                            hover: "images/backover.jpg",
                            clicked: "images/backdown.jpg"
                        }
 
                    }
                ]

                break
            case "#finish":
                navbarButtons = [{
                   text: "Finish",
                   type: "next",
                   navPath: "#",
                   imgSrc: {
                       default: "images/nextup.jpg",
                       hover: "images/nextover.jpg",
                       clicked: "images/nextdown.jpg"
                   }
                }]

            break
        }

    } 

    onMount(() => [
        addNavButtons(location.hash)
    ])
</script>

<svelte:window on:hashchange={() => addNavButtons(location.hash)}></svelte:window>

<div class="navbar">
    {#each navbarButtons as navbarButton }
        <NavButton text={navbarButton.text} type={navbarButton.type} imgSrc={navbarButton.imgSrc} navPath={navbarButton.navPath}/> 
    {/each}
</div>

<style>
    .navbar {
        display: flex;
        align-items: center;
        justify-content: flex-end;

        height: 50px;
    }
</style>
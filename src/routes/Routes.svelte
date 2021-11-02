<script lang="ts">
    import { Router } from "@jamen/svelte-router"
import Home from "../pages/home/Home.svelte";
import Updates from "../pages/updates/Updates.svelte";

    const routes = {
        "/": Home,
        "/updates": Updates
    }
</script>

<Router {routes}/>
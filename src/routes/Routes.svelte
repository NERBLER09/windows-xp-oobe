<script lang="ts">
    import { Router } from "@jamen/svelte-router"
import InternetConnectivity from "../components/InternetConnectivity/InternetConnectivity.svelte";
import Home from "../pages/home/Home.svelte";
import Updates from "../pages/updates/Updates.svelte";

    const routes = {
        "/": Home,
        "/updates": Updates,
        "/internetConnectivity": InternetConnectivity
    }
</script>

<Router {routes}/>
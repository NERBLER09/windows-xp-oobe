<script lang="ts">
    import { Router } from "@jamen/svelte-router"
import ConnectToInternet from "../components/connectToInternet/ConnectToInternet.svelte";
import InternetConnectivity from "../components/InternetConnectivity/InternetConnectivity.svelte";
import Home from "../pages/home/Home.svelte";
import Updates from "../pages/updates/Updates.svelte";

    const routes = {
        "/": Home,
        "/updates": Updates,
        "/internetConnectivity": InternetConnectivity,
        "/connectToInternet": ConnectToInternet
    }
</script>

<Router {routes}/>
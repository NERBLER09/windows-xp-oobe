<script lang="ts">
    import { Router } from "@jamen/svelte-router"
import ConnectToInternet from "../pages/connectToInternet/ConnectToInternet.svelte";
import InternetConnectivity from "../pages/InternetConnectivity/InternetConnectivity.svelte";
import Users from "../pages/users/Users.svelte";
import Finish from "../pages/finish/Finish.svelte";
import Home from "../pages/home/Home.svelte";
import Updates from "../pages/updates/Updates.svelte";

    const routes = {
        "/": Home,
        "/updates": Updates,
        "/internetConnectivity": InternetConnectivity,
        "/connectToInternet": ConnectToInternet,
        "/users": Users,
        "/finish": Finish
    }
</script>

<Router {routes}/>
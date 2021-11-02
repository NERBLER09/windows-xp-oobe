<script lang="ts">
import Home from "./pages/home/Home.svelte";
import Routes from "./routes/Routes.svelte";
</script>

<div class="main">
    <!-- <Home/> -->
    <Routes/>
</div>

<style>
    .main {
        height: 100vh;
        background-image: url("../images/wpaback.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        height: calc(100% - 94px);
        width: 100%;
    }
</style>
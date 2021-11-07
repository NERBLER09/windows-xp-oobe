<script lang="ts">
    const enterFullScreen = () => {
        if (!document.fullscreenElement) {
            document.documentElement.requestFullscreen();
        } else {
            if (document.exitFullscreen) {
                document.exitFullscreen();
            }
        }
    };
</script>

<div class="home">
    <header>
        <h1 class="title-text">Welcome To Microsoft Windows</h1>
        <p class="body-text">Thank you purchasing Microsoft Windows XP.</p>
        <p class="body-text">
            Lets spend a few minutes setting up you computer.
        </p>
        <p class="body-text">
            For the best experience go into full screen by pressing F11 or by
            clicking <span class="underline" on:click={enterFullScreen}
                >here</span
            >. To get out of full screen at any point during the setup press F11. </p>
    </header>

    <p class="body-text bottom-text">To continue, click Next.</p>
</div>

<style>
    header {
        padding-top: 10px;
        margin-left: 50px;
        margin-right: 50px;
    }

    .bottom-text {
        position: absolute;
        bottom: 90px;
        left: 20px;
    }
    header .underline {
        text-decoration: underline;
        cursor: pointer;
    }

    header .underline:hover {
        cursor: pointer;
    }

    header h1 {
        margin-bottom: 40px;
    }
    header p {
        margin-top: 20px;
        margin-bottom: 20px;
    }
</style>

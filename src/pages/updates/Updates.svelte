<div class="updates">
    <header>
        <h1 class="title-text">Help protect your PC</h1>
        <p class="body-text">
            With Automatic Updates, Windows can routinely check for the latest
            important updates for your computer and install them automatically.
            These updates can include security updates, critical updates, and
            service packs.
        </p>
    </header>

    <form action="">
        <div class="updated-option">
            <img src="images/update-turn-on.gif" alt="" />
            <div class="update-option-content">
                <div class="update-selection">
                    <input type="radio" name="autoUpdates" id="turnOn" />
                    <label for="turnOn" class="header-text"
                        >Help my protect my PC by turning on Automatic Updates</label
                    >
                </div>
                <p class="option-bottom-text body-text">(Recommended)</p>
            </div>
        </div>
        <div class="updated-option">
            <img src="images/update-turn-off.gif" alt="" />
            <div class="update-option-content">
                <div class="update-selection">
                    <input type="radio" name="autoUpdates" id="turnOff" />
                    <label for="turnOff" class="header-text"
                        >Not right now</label
                    >
                </div>
                <p class="option-bottom-text body-text">
                    If you haven't turned Automatic Updates, your computer is
                    more vulnerable to viruses and security threats.
                </p>
            </div>
        </div>
    </form>

    <div class="bottom-item">
        <p class="body-text text-bold">
            No information is collected that can be used to identify you or
            contact you
        </p>
        <p class="body-text">
            Please read the Windows Update privacy statement
        </p>
    </div>
</div>

<style>
    header,
    form {
        margin-right: 50px;
        padding-top: 10px;
        margin-left: 50px;
    }

    header .body-text {
        margin-top: 40px;
        margin-bottom: 40px;
    }
    .option-bottom-text {
        margin-left: 25px;
    }
    .updated-option {
        display: flex;
    }
    .updated-option img {
        height: 47px;
        margin-right: 10px;
        margin-top: 5px;
    }
    .bottom-item {
        position: absolute;
        bottom: 65px;
        left: 90px;
    }
    .bottom-item p {
        margin: 0;
    }

    .bottom-item .text-bold {
        font-weight: 900;
    }
</style>

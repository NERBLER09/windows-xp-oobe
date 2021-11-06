<div class="connect-to-internet">
    <h1 class="title-text">Will this computer connect to the Internet directly, or through a network?</h1>
    <p class="body-text">You can set this computer to connect to the Internet directly, or through a network of connected computers, if you have one. In ether case, Windows Firewall helps protect your computer from unauthorized access over the internet.</p>
    <p class="body-text">Will this computer connect to the internet over a network?</p>
    <div class="internet-options">
        <div>
            <input type="radio" id="lan-connect" name="internet-option">
            <label for="lan-connect" class="body-text">Yes, this computer will connect through a local area network or home network</label>
        </div>
        <div>
            <input type="radio" id="direct-connect" name="internet-option">
            <label for="direct-connect" class="body-text">No, this computer will connect directly to the Internet</label>
        </div>
    </div>
    <p class="body-text">If you are not sure if your computer is on a network, select No above. You can always change this option after setting up Windows. Just click <b>Control Panel</b> on the <b>Start</b> menu, and then click <b>Network and Internet Connections</b>.</p>
    <p class="body-text">If you don't want this computer to connect to the Internet now, click Skip.</p> 
</div>

<style>
    .connect-to-internet {
        padding-top: 10px;
        margin-left: 50px;
        margin-right: 50px;
    }

    p {
        margin-top: 30px;
        margin-bottom: 30px;
    }

    .internet-options {
        margin-left: 5px;
    }

    .internet-options div {
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .connect-to-internet div label {
        margin-left: 10px;
    }
</style>
<div class="users">
    <header>
        <h1 class="title-text">Who will be using this computer?</h1>
        <p class="body-text">Type the name of each person who will use this computer. Windows will create a separate user account for each person so you can customize the way you want Windows to organize and display information, protect your files and computer settings, and customize the desktop.</p>
    </header>
    <div class="user-input-container">
        <div class="user-input">
            <p class="body-text">Your name:</p>
            <div class="center-align"><input type="text"></div>
        </div>
        <div class="user-input">
            <p class="body-text">2nd User:</p>
            <div class="center-align"><input type="text"></div>
        </div>
        <div class="user-input">
            <p class="body-text">3rd User:</p>
            <div class="center-align"><input type="text"></div>
        </div>
        <div class="user-input">
            <p class="body-text">4th User:</p>
            <div class="center-align"><input type="text"></div>
        </div>
        <div class="user-input">
            <p class="body-text">5th User:</p>
            <div class="center-align"><input type="text"></div>
        </div>
    </div>
    <div>
        <p class="body-text">These names will appear on the Welcome screen in alphabetical order. When you start Windows, simply click on your name on the Welcome screen to begin. If you want to set passwords and limit permissions for each user, or add more user accounts after you finish setting up Windows, just click <b>Control Panel</b> on the <b>Start</b> menu, and then click <b>User Accounts</b></p>
    </div>
</div>

<style>
    .users {
        margin-left: 50px;
        margin-right: 50px;
        padding-top: 10px;
    }
    .user-input-container {
        margin-left: 20px;
    }
    .user-input {
        display: flex;
    }

    .user-input .center-align {
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-right: 150px;
    }
    .user-input p {
        width: 100px;
    }

    .user-input p::first-letter {
        text-decoration: underline;
    }

    .user-input .center-align input {
        width: 200px;
    }
</style>
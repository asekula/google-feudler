<!--NOTE: REQUIRES ALL THE CSS/JS FILES TO BE IN THIS DIRECTORY-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- In real-world webapps, css is usually minified and
         concatenated. Here, separate normalize from our code, and
         avoid minification for clarity. -->
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/html5bp.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<script src="../js/jquery-2.1.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
<script src="../js/main-ui.js"></script>
<div class="center-content">
    <a href="/">
	 		<span class="logo-text">
	 			<span>G</span>
	 			<span>o</span>
	 			<span>o</span>
	 			<span>g</span>
	 			<span>l</span>
	 			<span>e&nbsp;&nbsp;</span>
	 			<span>F</span>
	 			<span>e</span>
	 			<span>u</span>
	 			<span>d</span>
	 			<span>l</span>
	 			<span>e</span>
	 			<span>r</span>
	 		</span>
    </a>
    <hr>
    <!-- Home screen -->
    <div id="home">
        <input type="button" value="Join game" class="home-button" id=join-game>
        <br>
        <input type="button" value="Set up game" class="home-button" id=setup-game>
    </div>
    <!-- Game configuration settings box -->
    <div class="settings-box" id="settings">
        <h5>Settings</h5>
        <hr>
        <fieldset>
            <label for="player-type-single">Singleplayer</label>
            <input type="radio" name="player-type" id="player-type-single" checked="checked">

            <label for="player-type-multi">Multiplayer</label>
            <input type="radio" name="player-type" id="player-type-multi">
        </fieldset>

        <h5>Game Mode</h5>
        <fieldset>
            <label for="mode-standard">Standard</label>
            <input type="radio" name="mode" id="mode-standard" checked="checked">

            <label for="mode-meta">Meta</label>
            <input type="radio" name="mode" id="mode-meta">
        </fieldset>

        <h5># of Rounds</h5>
        <div id="slider-rounds" class="slider">
            <div id="handle-rounds" class="ui-slider-handle handle small-margin-bottom"></div>
        </div>

        <h5>Category</h5>
        <fieldset>
        <#--<!-- TODO: Foods, Drinks, Actors, Animals &ndash;&gt;-->
            <label for="category-any">Anything!</label>
            <input type="radio" name="category" id="category-any" checked="checked">

        <#--<label for="category-science">Science</label>-->
        <#--<input type="radio" name="category" id="category-science">-->

            <label for="category-custom">Custom</label>
            <input type="radio" name="category" id="category-custom">
        </fieldset>
        <hr>
        <input type="button" value="Configure Game" id=configure-game class=small-margin-bottom>
        <br>
        <input type="button" value="Back" id="button-back-home" class=small-margin-bottom>
    </div>

    <!-- Custom settings box -->
    <div class=settings-box id=custom>
        <h5>Custom Settings</h5>
        <hr>
        <ul class="undecorated" id="queries">
            <li class="small-margin-bottom" id="entry0">
                <span>
                    <input type="text" class="list-query" id="q0"><input type="button" value="x" class="delete" id=d0>
                </span>
            </li>
        </ul>
        <input type="button" value="New query" id="button-new-query">
        <hr>
        <input type="button" value="Back" id="button-back" class=small-margin-bottom>
        <input type="button" value="Play!" id="button-play" class=small-margin-bottom>
    </div>

    <!-- Singleplayer game view -->
    <div id=play-single>
        <div id="queryStuff" class="query-area left flex">
            <div id=input-area class="thin-gray-border pad std-text">
                <span id="query" class="left"></span>
                <input id="guess" type="text" class="no-footprint left" maxlength="50">
            </div>
            <div id=submit-area>
                <div id="submit" class="search-button">
                    <span class="ui-icon ui-icon-search pad"></span>
                </div>
                <div id="next-round" class=search-button>Continue!</div>
            </div>
        </div>
        <div id="answerStuff" class="content-area small-margin-bottom">
            <table id="answer-table-1" class="answer-table thin-gray-border">
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
            </table>
            <table id="answer-table-2" class="answer-table thin-gray-border">
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
            </table>
        </div>
        <br>
        <div id="timerArea" class="content-area center-content">
            <h5>Time Left</h5>
            <h4 id="timer" class="std-text"></h4>
        </div>
    </div>
    <div id="lobby" class="content-area center-content">
        <div id="waiting-message">Waiting for host...</div>
        <div id="room-code-area"><span>Room code: </span><span id="room-code-field"></span></div>
        <input type="button" value="Start game" class="home-button" id=start-from-lobby>
    </div>
    <div id="scoreArea" class="center-content">
        <div id="singleplayerScore">
            <h5>Score</h5>
            <h4 id="score" class="std-text">0</h4>
        </div>
        <ul id="multiplayerScore" class="undecorated"></ul>
    </div>

    <!-- Dialog boxes -->
<#--Cannot add another custom query-->
    <div id="alert-too-many-queries" class="dialog-message" title="Cannot add query">
        <p class=nothing-around>
            <span class="ui-icon ui-icon-alert" style="float:left; margin: 0 2px 0 2px;"></span>
        </p>
    </div>

<#--Join multiplayer game-->
    <div id="dialog-form" title="Join multiplayer game">
        <p class="validateTips">Username must be under 10 characters.</p>

        <form>
            <fieldset>
                <label for="name">Username</label>
                <input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all">
                <label for="room">Room code</label>
                <input type="text" name="room" id="room" class="text ui-widget-content ui-corner-all">

                <!-- Allow form submission with keyboard without duplicating the dialog button -->
                <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
            </fieldset>
        </form>
    </div>

</div>
</body>
</html>

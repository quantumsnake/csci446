var guessesLeft = 10;
var theNumber = 0;
var thePeasentsNumber = 0;
var theAnswer = "";
var bossesName = "";
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

$(function() {
	startNewGame();
	// Logic goes here. 
	// There is also an error when it is time to start the game. it takes the last number as the first guess.
	
	$('#guessTheNumber').submit(function() {
		// Sets guess number from the form.
		thePeasentsNumber = $("input[name='guess']").val();
		// Compare number to theNumber!!!
		if(thePeasentsNumber==theNumber) {
			// Logic
			iAmSoGoodAtLife();
		}
		if(thePeasentsNumber<theNumber) {
			// Logic
			alert("Way to be an under-achiever!!!")
		}
		if(thePeasentsNumber>theNumber) {
			// Logic
			alert("Easy there over-achiever!!!")
		}
		
		// yay more logic
		guessesLeft = guessesLeft-1;
		
		if(guessesLeft==0) {
			// Logic
			iAmAReallyBadGuesser();
		}
		
		updateScore(guessesLeft);
		
		// I don't really no why this fixes it but it does and thank the gods for google
		return false;
	});
	
	populateHighScores(highScores);

});

function startNewGame() {
	// Resets the number of guesses
	guessesLeft = 10;
	
	// Updates the game
	updateScore(guessesLeft);
	populateHighScores(highScores);
	
	// This generates the number to guess
	theNumber = Math.floor((Math.random()*100)+1);
}

function wannaPlayAgain() {
	theAnswer = prompt("Do you dare try again, peasant?");
	if(theAnswer = "yes") {
		startNewGame();
	}
	if(theAnswer != "yes") {
		alert("Have a glorious day, Kind sir");
	}
}

function iAmAReallyBadGuesser() {
	alert("Lost");
	wannaPlayAgain();
}

function iAmSoGoodAtLife() {
	alert("Winner Winner Chicken Dinner");
	bossesName = prompt("Thy name thou goest by?");
	// Figure out how to append to high scores
	// blah blah blah
	highScores.push([10-guessesLeft, bossesName]);
	populateHighScores(highScores);
	wannaPlayAgain();
	
}

function populateHighScores(scores) {
	//This does not work properly
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').html(score);
}
var guessesLeft = 10;
var theNumber = 0;
var theAnswer = "";
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

$(function() {
  updateScore(guessesLeft);
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
}

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').append(score);
}
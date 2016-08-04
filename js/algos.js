//Take an array of words/phrases as an argument
//Count the number of characters in each word/phrase, and return those lengths into a new array
//Find the index of the largest number in the number array
//Return the word that is at that same index in the word array

function longestPhrase(phrase) {
  var phraseLengths = []
  for (var i = 0; i <= (phrase.length - 1); i++){
    phraseLengths.push(phrase[i].length);
  }
  return phrase[phraseLengths.indexOf(Math.max.apply(null, phraseLengths))];
}

//Take 2 objects as arguments
//Iterate through keys to see if any match
//If any 2 keys match, see if their values also match
//If any pairs match, return true. If not, return false

function keyValueMatch(obj1, obj2){
  var i = 0
  for (var key in obj1) {
    if (obj1[key] == obj2[key]) {
      i ++;
    }
  }
  if (i > 0) {
    return true;
  } else {
    return false;
  }
}

//Take an integer as argument
//Create that many random strings, between 1-10 letters long
//Create array of alphabet characters to form words from
//Make those words into an array

function arrayGenerator(n){
  var wordsArray = [];
  var letters = "abcdefghijklmnopqrstuvwxyz".split("");
  for (var x = 1; x <= n; x ++){
    newWord = []
    for (var i = 1; i <= (Math.floor(Math.random() * 10) + 1); i++ ){
      newWord.push (letters[(Math.floor(Math.random() * letters.length))]);
    }
    wordsArray.push(newWord.join(""));
  }
}

//console.log(longestPhrase(["cat", "Hi there", "to"]));
//console.log(longestPhrase(["bananas", "dog", "hello"]));
//console.log(longestPhrase(["stuff", "thing", "JavaScript"]));

//console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
//console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", eyeColor: "blue"}));

arrayGenerator(2)

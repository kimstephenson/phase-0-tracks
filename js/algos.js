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

}

//console.log(longestPhrase(["cat", "Hi there", "to"]));
//console.log(longestPhrase(["bananas", "dog", "hello"]));
//console.log(longestPhrase(["stuff", "thing", "JavaScript"]));


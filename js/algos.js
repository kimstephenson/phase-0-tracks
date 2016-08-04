//Take an array of words/phrases as an argument
//Count the number of characters in each word/phrase, and return those lengths into a new array
//Find the index of the largest number in the number array
//Return the word that is at that same index in the word array

function longestPhrase(phrase) {
  var phraseLengths = []
  for (var i = 0; i <= (phrase.length - 1); i++){
    phraseLengths.push(phrase[i].length);
  }
  return Math.max.apply(null, phraseLengths)
}

console.log(longestPhrase(["cat", "Hi there", "to"]));
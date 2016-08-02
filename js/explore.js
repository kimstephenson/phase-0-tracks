//Take a string as an argument. Loop through it backwards, adding each letter to a new string. Print the new string.
function reverse(string) {
  revString = ""
  for(var i = string.length; i > 0; i--){
    revString += string[i-1];
  }
  return revString;
}

newReverse = reverse("hello");
console.log(newReverse)

//Take a string as an argument. Loop through it backwards, adding each letter to a new string. Print the new string.
function reverse(string) {
  var revString = ""
  for(var i = string.length; i > 0; i--){
    revString += string[i-1];
  }
  return revString;
}

var newReverse = reverse("hello");

if (1 == 1) {
  console.log(newReverse);
}

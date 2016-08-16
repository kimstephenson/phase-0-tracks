//Check that script is running by printing to console
console.log("The script is running!");

//Function that applies to all elements of a specific type
function addBorder(array){
  for(var i = 0; i < array.length; i ++){
    array[i].style.border = "1px solid black";
  }
}

//Function that will be triggered by an event listener
function changeColor(event) {
  event.target.style.color = "blue";
}

//Create and add a new HTML element using JavaScript
var newListItem = document.createElement("li");
newListItem.innerHTML = "New item";
document.getElementById("myList").appendChild(newListItem);

var listitems = document.getElementsByTagName("li");
var listitem = listitems[0];
addBorder(listitems);
listitem.addEventListener("mouseover", changeColor);









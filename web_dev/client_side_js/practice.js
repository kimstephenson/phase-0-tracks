console.log("The script is running!");

function addBorder(array){
  for(var i = 0; i < array.length; i ++){
    array[i].style.border = "1px solid black";
  }
}

function changeColor(event) {
  event.target.style.color = "blue";
}

var listitems = document.getElementsByTagName("li");
var listitem = listitems[0];

addBorder(listitems)
listitem.addEventListener("mouseover", changeColor);






// var createditem = document.createElement("li");
// var currentlists = document.getElementsByTagName('ol');
// var currentlist = currentlists[0];


// var node = document.createTextNode("This is the text.");
// createditem.appendChild(node);

// createditem.appendChild(currentlist);

// createditem.style.border = "5px solid black";

// console.log("The item has been created");
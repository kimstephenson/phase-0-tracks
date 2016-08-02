var colors = ["blue", "black", "red", "orange"];
var names = ["John", "Beauty", "Phil", "Forrest"];

colors.push("white");
names.push("Bob");

function createObject(arr1, arr2) {
  var namesColors = {};
  for (var i = 0; i < arr1.length; i++) {
    namesColors[arr1[i]] = arr2[i];
  }
  return namesColors;
}

createObject(colors, names);
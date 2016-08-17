
$(document).ready(function(){
  $("button").click(function() {
    $("#myList").slideToggle("slow", function(){
      $("button").text("Show list")
    });
  });

  $("h1").click(function() {
    alert("Dialog box created by jQuery");
  });

  function insertPara() {
    var newPara = "<p> jQuery is fun </p>"
    $("p").after(newPara);
  }
  insertPara()

  $("li").hover(function() {
    $(this).css("background-color", "blue");
  },
  function(){
    $(this).css("background-color", "gray");
  });
});




$(document).ready(function(){
  $("#listButton").click(function() {
    $("#myList").slideToggle("slow", function(){
      $("#listButton").text("Show list")
    });
  });

  $("h1").click(function() {
    alert("Dialog box created by jQuery");
  });

  $("#addPara").one("click", function() {
    $("p").after("<p>jQuery is fun</p>");
  });

  $("li").hover(function() {
    $(this).css("background-color", "green");
  },
  function(){
    $(this).css("background-color", "gray");
  });
});



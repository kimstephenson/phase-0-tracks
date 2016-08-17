
$(document).ready(function(){
  $("button").click(function() {
    $("#myList").slideToggle("slow", function(){
      $("button").text("Show list")
    });
  });

  $("h1").click(function() {
    alert("Dialog box created by jQuery");
  });

  $("ol").append("<li>New list item</li>")

  $("li").hover(function() {
    $(this).css("background-color", "blue");
  },
  function(){
    $(this).css("background-color", "gray");
  });
});



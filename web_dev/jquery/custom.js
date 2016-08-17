
$(document).ready(function(){
  $("button").click(function() {
    $("#myList").slideToggle();
  });

  $("h1").click(function() {
    alert("Dialog box created by jQuery");
  });

  $("li").hover(function() {
    $(this).css("background-color", "blue");
  },
  function(){
    $(this).css("background-color", "gray");
  });
});




$(document).ready(function() {
   $("h1").click(function() {
    alert("Dialog box created by jQuery");
  });
});

$(document).ready(function(){
  $("button").click(function() {
    $("#myList").hide();
  });
});

$(document).ready(function(){
  $("li").hover(function() {
    $(this).css("background-color", "blue");
  },
  function(){
    $(this).css("background-color", "gray");
  });
});

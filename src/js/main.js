

$(document).ready( function(){

  $(".rounded").corners("20px 20px");
  $("#results").hide();
  $("a").button();
    
  $("a").click(function(event){
    var search = $("#searchbox").val();
    $("#results-list").html("");
    $("#searchbox").searchAPI();
  });        
  
});



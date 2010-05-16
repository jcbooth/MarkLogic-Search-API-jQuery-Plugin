(function($){  
  $.fn.extend({  
    searchAPI:function(config, fileNames) {  
    
      var config = $.extend({}, config);  
    
      $.ajax({
        url: "services/search-api-service.xqy",
        data: "q=" + this.val(),
        cache: false,
        success: function(json){
          var results = $.parseJSON(json);        
          $.each(results.response.result, function() {
            $("#results-list").append('<li class="result">' + this.snippet.text + '</li>');
          });
          $("#results").show();
        }
      });      
    
      return this;  
    }  
  });  
})(jQuery); 
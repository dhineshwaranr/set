$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
        $('#return-to-top').fadeIn(200);    // Fade in the arrow
    } else {
        $('#return-to-top').fadeOut(200);   // Else fade out the arrow
    }
});
$('#return-to-top').click(function() {      // When arrow is clicked
    $('body,html').animate({
        scrollTop : 0                       // Scroll to top of body
    }, 500);
});

var tabsFn = (function() {
  
  function init() {
    setHeight();
  }
  
  function setHeight() {
    var $tabPane = $('.tab-pane'),
        tabsHeight = $('.nav-tabs').height();
    
    $tabPane.css({
      height: tabsHeight
    });
  }
    
  $(init);
})();

$( "#chooseNewsLanguage" ).change(function() {
  var languageChoosen = $("#chooseNewsLanguage").val();
  var data = JSON.stringify(languageChoosen);
  var page = $("#dashboard").attr("value");
  if(languageChoosen != ""){
  	var url = "/languageChoosed"+"/"+page+"/"+languageChoosen;
  	console.log(appConfig.location);
  	$.ajax({
    url: appConfig.location + url,
 	type: "GET",
    dataType : "json",
    success: function( data ) {
    	if(page == "dashbord"){
        	fillnewspanel(data);
        }	
    },
    error: function( xhr, status, errorThrown ) {
        alert( "Sorry, there was a problem!" );
    },
    complete: function( xhr, status ) {
        //alert( "The request is complete!" );
    }
});
  }
});

function fillnewspanel(data){
	var defaulttemp ='';
	if(data != null){
		console.log("GET-ALL-NEWS-->"+JSON.stringify(data));
		$.each(data, function(i, obj) {
			$(obj).each(function(key, value){
			console.log(value.newsId);
			console.log(value.newsTitle);
			console.log(value.description);
				defaulttemp += '<div class="daily-news"id="'+value.newsId+'">';
				defaulttemp	+= '<div class="newsHeading"><b><span>'+value.newsTitle+'</span></b></div>';
				defaulttemp += '<div class="newsDescription">'+value.description+'</div>';
				defaulttemp	+= '</div>';
			});
		});
		$("#newsPanel").empty();
		$("#newsPanels").empty();
		$("#newsPanel").append(defaulttemp);
		$("#newsPanels").append(defaulttemp);
					
	}
	
}

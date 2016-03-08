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
  languageChange();
});

function languageChange(){
	var languageChoosen = $("#chooseNewsLanguage").val();
	var data = JSON.stringify(languageChoosen);
  	var page = $("#requestedPage").attr("value");
  	
	if(languageChoosen != ""){
  	var url = "/languageChoosed"+"/"+page+"/"+languageChoosen;
  	console.log(appConfig.location);
  	$.ajax({
    url: appConfig.location + url,
 	type: "GET",
    dataType : "json",
    success: function( data ) {
    	if(page == "dashbord"){
        	console.log("DATA==>"+JSON.stringify(data));
        	fillnewspanel(data);
        	fillMenuPanel(data);
        }
        if(page == "aboutus"){
        	
        	fillMenuPanel(data);
        }
        if(page == "service"){
        	console.log(data);
        	fillMenuPanel(data);
        }
        if(page == "blog"){
        	
        	fillMenuPanel(data);
        }
        if(page == "gallery"){
        	
        	fillMenuPanel(data);
        }
        if(page == "video"){
        	
        	fillMenuPanel(data);
        }
         if(page == "contactus"){
        	
        	fillMenuPanel(data);
        }
        if(page == "taskpanel"){
        	
        	fillMenuPanel(data);
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
}

function fillnewspanel(data){

	var defaulttemp ='';
	if(data != null){
		$.each(data[0], function(i, obj) {
			$(obj).each(function(key, value){
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

function fillMenuPanel(data){
///alert("12312");
	var defaulttemp ='';
	if(data != null){
		$.each(data[1], function(i, obj) {
			$(obj).each(function(key, value){
				defaulttemp += '<li class=""><a href="'+value.menuUrl+'">'+value.menuName+'</a></li>';
			});
		});
			$("#Main-Menu-panel").empty();
			$("#Main-Menu-panel").append(defaulttemp);
		}
}
/*
	    
        
*/


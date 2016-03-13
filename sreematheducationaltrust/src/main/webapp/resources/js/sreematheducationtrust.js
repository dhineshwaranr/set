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
        	//console.log("DATA==>"+JSON.stringify(data));
        	fillnewspanel(data);
        	fillMenuPanel(data);
        }
        if(page == "aboutus"){
        	//alert("DONEEE");
        	//console.log("aboutUs DATA-->"+JSON.stringify(data));
        	fillAboutUsPanel(data);
        	fillMenuPanel(data);
        }
        if(page == "service"){
        	console.log(JSON.stringify(data));
        	fillservicesPanel(data);
        	fillMenuPanel(data);
        }
        if(page == "blog"){
        	fillBlogsPanel(data);
        	fillMenuPanel(data);
        }
        if(page == "gallery"){
        	fillGallery(data);
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

function fillAboutUsPanel(data){
	var defaulttemp ='';
	if(data != null){
		$.each(data[0], function(i, obj) {
			$(obj).each(function(key, value){
				defaulttemp += '<p>'+value.content+'<p>';			
			});
		});
		$("#section-1").empty();
		$("#section-1").append(defaulttemp);
	}
}

function fillservicesPanel(data){
	var defaulttemp ='';
	if(data != null){
		$.each(data[0], function(i, obj) {
			$(obj).each(function(key, value){
				defaulttemp += '<div class="service col-lg-4 col-md-12 col-sm-12 col-xs-12" id="servicespanel">';
				defaulttemp += '<div class="headingStyle1">';
				defaulttemp += '<span><a href='+value.url+'>'+value.serviceTitle+'</a></span>';
				defaulttemp += '</div>';
				defaulttemp += '<div>';
				defaulttemp += '<p>'+value.serviceContent+'</p>';
				defaulttemp += '</div>';
				defaulttemp += '<button type="button" class="btn btn-primary btn-lg sharp pull-right">Know More</button>';
				defaulttemp += '</div>';
			});
		});
			$("#whatWeDo").empty();
			$("#whatWeDo").append(defaulttemp);
	}
}

function fillBlogsPanel(data){
	console.log("blog"+JSON.stringify(data[0]));		
	var defaulttemp ='';
	if(data != null){
		$.each(data[0], function(i, obj) {
			console.log(obj.blogTitle);
			
				defaulttemp += '<div class="blogs">';
				defaulttemp += '<div class="imageAvatar"><img alt="" src="resources/images/No_Profile.png"></div>'; 
				defaulttemp += '<div class="comments">';
				defaulttemp += '<h5><b><a href="">'+obj.blogTitle+'</a></b></h5>';
				defaulttemp += '<p>'+obj.blogContent+'</p>';
				defaulttemp += '</div>';
				defaulttemp += '</div>';
			
		});
			$("#allPeopleBlogs").empty();
			$("#allPeopleBlogs").append(defaulttemp);
	}	
}

function fillGallery(data){
	console.log("blog"+JSON.stringify(data[0]));		
	var defaulttemp ='';
	if(data != null){
		$.each(data[0], function(i, obj) {
			console.log("GALLL"+obj.name);
			
				defaulttemp += '<div class="col-12 col-md-4 col-sm-6 galleryCoverImages">';
				defaulttemp += '<div class="fall-item fall-effect">'; 
				defaulttemp += '<a title="Image 1" id="coverImage" href="#">';
				defaulttemp += '<img src="'+obj.coverImageURL+'">';
				defaulttemp += '</a>';
				defaulttemp += '<div class="mask">';
				defaulttemp += '<h2>'+obj.name+'</h2>';
				defaulttemp += '<p>'+obj.category+'</p>';
				defaulttemp += '<a href="#" class="btn btn-default thumbnail img-responsive" id="image-1">View Gallery</a>';
				defaulttemp += '</div>';
				defaulttemp += '</div>';
				defaulttemp += '</div>';
			
		});
			$("#galleryCoverPagePanel").empty();
			$("#galleryCoverPagePanel").append(defaulttemp);
	}
	
}

function fillMenuPanel(data){
///alert("12312");
	var defaulttemp ='';
	if(data != null){
		$.each(data[1], function(i, obj) {
			$(obj).each(function(key, value){
				//console.log(value.menuName);
				if(value.menuUrl == "admin/taskPanel"){
					
					//defaulttemp += '<spring:authorize access="hasRole("ROLE_ADMIN")">';
					defaulttemp += '<li class=""><a id="tabs" href="'+appConfig.location+"/"+value.menuUrl+'">'+value.menuName+'</a></li>';
					//defaulttemp += '</spring:authorize>';
				}else{
					defaulttemp += '<li class=""><a id="tabs" href="'+appConfig.location+"/"+value.menuUrl+'">'+value.menuName+'</a></li>';
				}	
			});
		});
			//console.log(defaulttemp);
			$("#Main-Menu-panel").empty();
			$("#Main-Menu-panel").append(defaulttemp);
		}
}
	    

   
       



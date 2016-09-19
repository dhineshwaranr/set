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

$('#menuLiTabs').on('click', function(){
  //alert( "Good!" ); // jQuery 1.3+
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

$( ".selectCategoryNews" ).change(function() {
	alert("selectCategoryNews");
  getNews();
});
function getNews(data){
	var categoryChoosen = $(".selectCategoryNews").val();
	var data = JSON.stringify(categoryChoosen);
	var url = "/getFeeds/"+categoryChoosen;
  	$.ajax({
    url: appConfig.location + url,
 	type: "GET",
    dataType : "json",
	    success: function( data ) {
	    	fillnewspanel(data);
	    }
    });
}
function languageChange(){
	
	var languageChoosen = $("#chooseNewsLanguage").val();
	var data = JSON.stringify(languageChoosen);
  	var page = $("#requestedPage").attr("value");
  	//alert(languageChoosen);
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
        //alert( "Sorry, there was a problem!" );
    },
    complete: function( xhr, status ) {
        //alert( "The request is complete!" );
    }
	});
  }
}

function getTwees(){
	var url = ""
	$.ajax({
    url: appConfig.location + url,
 	type: "GET",
    dataType : "json",
    success: function( data ) {
    	console.log(data)	
    },
    error: function( xhr, status, errorThrown ) {
        //alert( "Sorry, there was a problem!" );
    },
    complete: function( xhr, status ) {
        //alert( "The request is complete!" );
    }
	});
  }
}


function fillnewspanel(data){
	//debugger
	var defaulttemp ='';
	if(data != null){
		$.each(data.responseData.entries, function(i, obj) {
			
			defaulttemp += '<div class="daily-news"id="'+obj.url+'">';
			defaulttemp	+= '<div class="newsHeading"><b><span>'+obj.title+'</span></b></div>';
			defaulttemp += '<div class="newsDescription">'+obj.contentSnippet+'</div>';
			defaulttemp += '<div class="newsURL"><a href='+obj.link+'>'+obj.link+'</a></div>';
			defaulttemp	+= '</div>';
			
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
			console.log("GALLL"+obj);
			
				defaulttemp += '<div class="col-lg-4 col-md-4 col-sm-6 galleryCoverImages">';
				defaulttemp += '<div class="fall-item fall-effect">'; 
				defaulttemp += '<a title="Image 1" id="coverImage" href="#">';
				defaulttemp += '<img src="'+obj.coverImageURL+'">';
				defaulttemp += '</a>';
				defaulttemp += '<div class="mask">';
				defaulttemp += '<h2>'+obj.name+'</h2>';
				defaulttemp += '<p>'+obj.category+'</p>';
				defaulttemp += '<a href="#" class="thumbnail img-responsive" data-toggle="modal" data-target="#largeModal" value="'+obj.imageId+'" id="slideShow" ><i class="fa fa-sliders"></i></a>';
				defaulttemp += '<a href="#" class="thumbnail img-responsive open-popup" data-toggle="tooltip" title="View Album" data-placement="bottom" id="viewAlbum" data-id="popup_9" data-animation="rotate" value="'+obj.imageId+'" ><i class="fa fa-eye"></i></a>';
				defaulttemp += '</div>';
				defaulttemp += '</div>';
				defaulttemp += '</div>';
			
		});
			$("#galleryCoverPagePanel").empty();
			$("#galleryCoverPagePanel").append(defaulttemp);
	}
	
}

function fillMenuPanel(data){
//alert(data[1]);
	var defaulttemp ='';
	if(data != null){
		$.each(data[1], function(i, obj) {
			$(obj).each(function(key, value){
				
				if(value.menuUrl == "admin/taskPanel"){
					
					//defaulttemp += '<spring:authorize access="hasRole("ROLE_ADMIN")">';
					defaulttemp += '<li id="menuLiTabs"><a id="tabs" href="'+appConfig.location+"/"+value.menuUrl+'">'+value.menuName+'</a></li>';
					//defaulttemp += '</spring:authorize>';
				}else{
					defaulttemp += '<li id="menuLiTabs"><a id="tabs" href="'+appConfig.location+"/"+value.menuUrl+'">'+value.menuName+'</a></li>';
				}	
			});
		});
			
			$("#Main-Menu-panel").empty();
			$("#Main-Menu-panel").append(defaulttemp);
		}
}

	    

   
       



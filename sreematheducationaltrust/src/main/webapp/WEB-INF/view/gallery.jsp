<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Gallery - Sreemath Educational Trust</title>
<style>
	.thumbnail {margin-bottom:6px;}

	.carousel-control.left,.carousel-control.right{
	  background-image:none;
	  margin-top:10%;
	  width:5%;
	}
	 .fall-item {
       width: 100%;
       height: auto;
       overflow: hidden;
       position: relative;
       text-align: center;
    }
    .fall-item .mask,.fall-item .content {
       width: 100%;
       height: 100%;
       position: absolute;
       overflow: hidden;
       top: 0;
       left: 0;
    }
    .fall-item img {
       display: block;
       position: relative;
       width: 100%;
       height: auto;
    }
    .fall-item h2 {
       text-transform: uppercase;
       color: #fff;
       text-align: center;
       position: relative;
       padding: 10px;
       background: rgba(0, 0, 0, 0.8);
       margin: 0 0 0 0;
    }
    .fall-item p {
       font-style: italic;
       position: relative;
       color: #fff;
       padding: 10px 20px 20px;
       text-align: center;
    }
    .fall-effect .mask {
       background-color: rgba(255, 255, 255, 0.7);
       top: -200px;
       -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=0)";
       filter: alpha(opacity=0);
       opacity: 0;
       -webkit-transition: all 0.3s ease-out 0.5s;
       -moz-transition: all 0.3s ease-out 0.5s;
       -o-transition: all 0.3s ease-out 0.5s;
       -ms-transition: all 0.3s ease-out 0.5s;
       transition: all 0.3s ease-out 0.5s;
    }
    .fall-effect h2 {
       -webkit-transform: translateY(-200px);
       -moz-transform: translateY(-200px);
       -o-transform: translateY(-200px);
       -ms-transform: translateY(-200px);
       transform: translateY(-200px);
       -webkit-transition: all 0.2s ease-in-out 0.1s;
       -moz-transition: all 0.2s ease-in-out 0.1s;
       -o-transition: all 0.2s ease-in-out 0.1s;
       -ms-transition: all 0.2s ease-in-out 0.1s;
       transition: all 0.2s ease-in-out 0.1s;
    }
    .fall-effect p {
       color: #333;
       -webkit-transform: translateY(-200px);
       -moz-transform: translateY(-200px);
       -o-transform: translateY(-200px);
       -ms-transform: translateY(-200px);
       transform: translateY(-200px);
       -webkit-transition: all 0.2s ease-in-out 0.2s;
       -moz-transition: all 0.2s ease-in-out 0.2s;
       -o-transition: all 0.2s ease-in-out 0.2s;
       -ms-transition: all 0.2s ease-in-out 0.2s;
       transition: all 0.2s ease-in-out 0.2s;
    }
    .fall-effect a.btn {
       -webkit-transform: translateY(-200px);
       -moz-transform: translateY(-200px);
       -o-transform: translateY(-200px);
       -ms-transform: translateY(-200px);
       transform: translateY(-200px);
       -webkit-transition: all 0.2s ease-in-out 0.3s;
       -moz-transition: all 0.2s ease-in-out 0.3s;
       -o-transition: all 0.2s ease-in-out 0.3s;
       -ms-transition: all 0.2s ease-in-out 0.3s;
       transition: all 0.2s ease-in-out 0.3s;
    }
    .fall-effect:hover .mask {
       -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=100)";
       filter: alpha(opacity=100);
       opacity: 1;
       top: 0px;
       -webkit-transition-delay: 0s;
       -moz-transition-delay: 0s;
       -o-transition-delay: 0s;
       -ms-transition-delay: 0s;
       transition-delay: 0s;

    }
    .fall-effect:hover h2 {
       -webkit-transform: translateY(0px);
       -moz-transform: translateY(0px);
       -o-transform: translateY(0px);
       -ms-transform: translateY(0px);
       transform: translateY(0px);
       -webkit-transition-delay: 0.4s;
       -moz-transition-delay: 0.4s;
       -o-transition-delay: 0.4s;
       -ms-transition-delay: 0.4s;
       transition-delay: 0.4s;
    }
    .fall-effect:hover p {
       -webkit-transform: translateY(0px);
       -moz-transform: translateY(0px);
       -o-transform: translateY(0px);
       -ms-transform: translateY(0px);
       transform: translateY(0px);
       -webkit-transition-delay: 0.2s;
       -moz-transition-delay: 0.2s;
       -o-transition-delay: 0.2s;
       -ms-transition-delay: 0.2s;
       transition-delay: 0.2s;
    }
    .fall-effect:hover a.btn {
       -webkit-transform: translateY(0px);
       -moz-transform: translateY(0px);
       -o-transform: translateY(0px);
       -ms-transform: translateY(0px);
       transform: translateY(0px);
       -webkit-transition-delay: 0s;
       -moz-transition-delay: 0s;
       -o-transition-delay: 0s;
       -ms-transition-delay: 0s;
       transition-delay: 0s;
    }
.modal .modal-dialog .modal-content	.modal-body .imageRespon img{
	position: absolute !important;
    top: 233px !important;
    left: 460px !important;
    right: 0 !important;
    bottom: 0 !important;
    background-repeat: no-repeat !important;
    background-size: cover !important;
    overflow: hidden !important;
    transform: translateX(-50%) translateY(-50%) !important;
    max-width: 850px !important;
    max-height: 400px !important;
}
.modal .modal-dialog .modal-content	.modal-body .imageRespon{
	width:500px !important;
	height:530px !important;
}

</style>
<%@ include file="css.jsp"%>
<link rel="stylesheet" href="<c:url value='/resources/css/gallery.css'/>" type="text/css" />
</head>
<body>
<div class="container">
<span id="requestedPage" value="gallery" hidden></span>
	<%@ include file="footer.jsp"%>
	<hr>
	<div class="row nav-menu">
		<%@ include file="navmenu.jsp"%>
	</div>
	<div class="row">
    <h1>Gallery</h1>
       
    <div class="row" id="galleryCoverPagePanel">
      			 
   	 </div>
    
  
  <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      	<div class="imageRespon">
      	<main> <img src="https://unsplash.it/1800/1200?image=959" alt=""/> </main>
		<footer class="control translucent">
		  <div class="wrap">
		    <div class="left">
		      <div class="leftmost"></div>
		      <img src="${appConfig.location}resources/images/left.png"/> </div>
			    <div class="slider">
			      <ul class="select">
			        <li><img src="https://unsplash.it/1800/1200?image=959" alt=""/></li>
			        <li><img src="https://unsplash.it/1800/1200?image=958" alt=""/></li>
			        <li><img src="https://unsplash.it/1800/1200?image=957" alt=""/></li>
			        <li><img src="https://unsplash.it/1800/1200?image=956" alt=""/></li>
			        <li><img src="https://unsplash.it/1800/1200?image=955" alt=""/></li>
			        <li><img src="https://unsplash.it/1800/1200?image=954" alt=""/></li>
			      </uL>
			    </div>
		    <div class="right"> <img src="${appConfig.location}resources/images/right.png"/>
		      <div class="rightmost"></div>
		    </div>
		  </div>
      	 </div>	
      </div>
    </div>
  </div>
</div>
    
  </div>
  
	

		<hr>
		<%@ include file="footerBottom.jsp"%>
	</div>
<%@ include file="js.jsp"%>
<script src="<c:url value='/resources/js/pro-js/common.js' />"></script>
<script src="<c:url value='/resources/js/pro-js/gallery.js' />"></script>  
<script src="<c:url value='/resources/js/pro-js/config.js' />"></script> 
<script src="<c:url value='/resources/js/jquery.form.js' />"></script> 
<script type="text/javascript">
$(document).ready(function() {
	languageChange();
        
   /* activate the carousel */
   $("#modal-carousel").carousel({interval:false});

   /* change modal title when slide changes */
   /*$("#modal-carousel").on("slid.bs.carousel",       function () {
        $(".modal-title")
        .html($(this)
        .find(".active img")
        .attr("title"));
   });*/

   /* when clicking a thumbnail */
   /*$(".row .thumbnail").click(function(){
    var content = $(".carousel-inner");
    var title = $(".modal-title");
  
    content.empty();  
    title.empty();
  
  	var id = this.id;  
     var repo = $("#img-repo .item");
     var repoCopy = repo.filter("#" + id).clone();
     var active = repoCopy.first();
  
    active.addClass("active");
    title.html(active.find("img").attr("title"));
  	content.append(repoCopy);

    // show the modal
  	$("#modal-gallery").modal("show");
  });*/

});
</script> 
</body>
</html>
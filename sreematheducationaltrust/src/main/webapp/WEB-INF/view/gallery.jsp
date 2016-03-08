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
			
</style>
<%@ include file="css.jsp"%>
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
        <hr>
    <div class="row">
      			<div class="col-12 col-md-4 col-sm-6">
					 <div class="fall-item fall-effect">
					<a title="Image 1" href="#"> 
						<img src="http://dummyimage.com/600x350/ccc/969696&amp;text=0xD10x810xD00xB50xD10x800xD10x8B0xD00xB9">
					</a>
					<div class="mask">
                        <h2>Test fall</h2>
                        <p>Testing Fall Gallery</p>
                        <a href="#" class="btn btn-default thumbnail img-responsive" id="image-1">Read More</a>
                    </div>
                    </div>
				</div>
    			<!-- <div class="col-12 col-md-4 col-sm-6">
					<a title="Image 2" href="#"> 
						<img class="thumbnail img-responsive" id="image-2" src="http://dummyimage.com/600x350/2255EE/969696&amp;text=0xD10x810xD00xB80xD00xBD0xD00xB80xD00xB9">
					</a>

				</div>
				<div class="col-12 col-md-4 col-sm-6">
					<a title="Image 3" href="#"> 
						<img class="thumbnail img-responsive" id="image-3" src="http://dummyimage.com/600x350/449955/FFF&amp;text=0xD00xB70xD00xB50xD00xBB0xD00xB50xD00xBD0xD10x8B0xD00xB9">
					</a>
				</div> -->
   	 </div>
    <hr>
  </div>
  
	<div class="hidden" id="img-repo">
		<!-- #image-1 -->
		<div class="item" id="image-1">
			<img class="thumbnail img-responsive" title="Image 11" src="http://dummyimage.com/600x350/ccc/969696">
		</div>
		<div class="item" id="image-1">
			<img class="thumbnail img-responsive" title="Image 12" src="http://dummyimage.com/600x600/ccc/969696">
		</div>
		<div class="item" id="image-1">
			<img class="thumbnail img-responsive" title="Image 13" src="http://dummyimage.com/300x300/ccc/969696">
		</div>
      
		<!-- #image-2 -->
		<div class="item" id="image-2">
			<img class="thumbnail img-responsive" title="Image 21" src="http://dummyimage.com/600x350/2255EE/969696">
		</div>
		<div class="item" id="image-2">
			<img class="thumbnail img-responsive" title="Image 21" src="http://dummyimage.com/600x600/2255EE/969696">
		</div>
		<div class="item" id="image-2">
			<img class="thumbnail img-responsive" title="Image 23" src="http://dummyimage.com/300x300/2255EE/969696">
		</div>   
      
		<!-- #image-3-->
		<div class="item" id="image-3">
			<img class="thumbnail img-responsive" title="Image 31" src="http://dummyimage.com/600x350/449955/FFF">
		</div>
		<div class="item" id="image-3">
			<img class="thumbnail img-responsive" title="Image 32" src="http://dummyimage.com/600x600/449955/FFF">
		</div>
		<div class="item" id="image-3">
			<img class="thumbnail img-responsive" title="Image 33" src="http://dummyimage.com/300x300/449955/FFF">
		</div>        
	</div>

		<div class="modal" id="modal-gallery" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" type="button" data-dismiss="modal">×</button>
						<h3 class="modal-title"></h3>
					</div>
					<div class="modal-body">
						<div id="modal-carousel" class="carousel">
							<div class="carousel-inner"></div>
							<a class="carousel-control left" href="#modal-carousel"	data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a> 
							<a class="carousel-control right" href="#modal-carousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<%@ include file="footerBottom.jsp"%>
	</div>
<%@ include file="js.jsp"%>
<script src="<c:url value='/resources/js/pro-js/common.js' />"></script>
<%-- <script src="<c:url value='/resources/js/pro-js/gallery.js' />"></script> --%> 
<script src="<c:url value='/resources/js/pro-js/config.js' />"></script> 
<script src="<c:url value='/resources/js/jquery.form.js' />"></script> 
<script type="text/javascript">
$(document).ready(function() {
	languageChange();
        
   /* activate the carousel */
   $("#modal-carousel").carousel({interval:false});

   /* change modal title when slide changes */
   $("#modal-carousel").on("slid.bs.carousel",       function () {
        $(".modal-title")
        .html($(this)
        .find(".active img")
        .attr("title"));
   });

   /* when clicking a thumbnail */
   $(".row .thumbnail").click(function(){
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
  });

});
</script> 
</body>
</html>
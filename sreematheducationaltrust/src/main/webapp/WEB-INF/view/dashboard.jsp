<!DOCTYPE html>
<html lang="en">
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Dashboard</title>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<title>Dashboard - Sreemath Educational Trust</title>
<%@ include file="css.jsp"%>
</head>
<body>
<div class="container">
<%@ include file="footer.jsp"%>	
	<hr>
	<div class="row nav-menu">
		<%@ include file="navmenu.jsp"%>
	</div>
	<hr>
	<div class="row">
		<div class="col-ls-12 col-md-12 col-sm-12 col-xs-12 news-slider" >
			<div id="myCarousel" class="carousel slide">
			  <!-- Carousel items -->
			  <div class="carousel-inner">
			    <div class="active item">
			        <img src="http://placehold.it/300x200/888&text=Item 1" />
			    </div>
			    <div class="item">
			        <img src="http://placehold.it/300x200/aaa&text=Item 2" />
			    </div>
			    <div class="item">
			        <img src="http://placehold.it/300x200/444&text=Item 3" />
			    </div>
			  </div>
			  <!-- Carousel nav -->
			  <!-- <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a> -->
			</div>
		</div>
	</div>
	<hr>
	
	<div class="row allNewsSection">
		<div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
			<div class="heading"><span>Today News</span></div>
			<div id="newsPanel"></div>
		</div>
		
		<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12 latestNewsBlogsSection">
				<div class="heading"><span>Latest News Blogs</span></div>
				<div id="newsPanels" class="latestNewsBlogs"></div>
			
		</div>
	</div>
	<hr>
<%@ include file="footerBottom.jsp"%>
</div>
<%@ include file="js.jsp"%>
<script src="<c:url value='/resources/js/pro-js/common.js' />"></script>
<script src="<c:url value='/resources/js/pro-js/dashboard.js' />"></script> 
<script src="<c:url value='/resources/js/pro-js/config.js' />"></script> 
<script src="<c:url value='/resources/js/jquery.form.js' />"></script>


 
<script type="text/javascript">
var $ = jQuery.noConflict();
$(document).ready(function() {
	var dashboard = new Dashboard();
	dashboard.init();
});

// invoke the carousel
$('#myCarousel').carousel({
  interval: 30000
});

</script> 
</body>
</html>
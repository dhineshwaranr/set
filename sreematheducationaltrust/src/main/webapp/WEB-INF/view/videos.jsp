<!DOCTYPE html>
<html lang="en">
<head>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<title>Videos - Sreemath Educational Trust</title>
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
		<div class="row videoWrapper">
		<h1>Videos</h1>
			<div class="col-sm-4 videoWrapperColumn">
				<div class="sharedVideos">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item"
							src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
					</div>
				</div>
			</div>
			<div class="col-sm-4 videoWrapperColumn">
				<div class="sharedVideos">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item"
							src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
					</div>
				</div>
			</div>
			<div class="col-sm-4 videoWrapperColumn">
				<div class="sharedVideos">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item"
							src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
					</div>
				</div>
			</div>
			<div class="col-sm-4 videoWrapperColumn">
				<div class="sharedVideos">
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item"
							src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<%@ include file="footerBottom.jsp"%>
	</div>

	<%@ include file="js.jsp"%>
</body>
</html>
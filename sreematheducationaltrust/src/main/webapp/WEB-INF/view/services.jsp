<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Services - Sreemath Educational Trust</title>
<%@ include file="css.jsp"%>
</head>
<body>
	<div class="container">
		<span id="requestedPage" value="service" hidden></span>
		<%@ include file="footer.jsp"%>
		<hr>
		<div class="row nav-menu">
			<%@ include file="navmenu.jsp"%>
		</div>
		<div class="row whatWeDo" id="whatWeDo">
			<h1>Services</h1>
			<div class="service col-lg-4 col-md-12 col-sm-12 col-xs-12" id="servicespanel">
				<div class="headingStyle1">
					<span><a href="#">K-12 Policy & Practice</a></span>
				</div>
				<div>
					<p>All students need access to a high-quality, rigorous K-12
						education to prepare for the opportunities and demands of the
						world outside of school doors. But too many young people —
						disproportionately African American, Latino, and Native students
						and students from low-income families — are getting an education
						that falls far short.</p>
				</div>
				<button type="button"
					class="btn btn-primary btn-lg sharp pull-right">Know More</button>
			</div>
			<div class="service col-lg-4 col-md-12 col-sm-12 col-xs-12">
				<div class="headingStyle1">
					<span><a href="#">K-12 Policy & Practice</a></span>
				</div>
				<div>
					<p>All students need access to a high-quality, rigorous K-12
						education to prepare for the opportunities and demands of the
						world outside of school doors. But too many young people —
						disproportionately African American, Latino, and Native students
						and students from low-income families — are getting an education
						that falls far short.</p>
				</div>
				<button type="button"
					class="btn btn-primary btn-lg sharp pull-right">Know More</button>
			</div>
			<div class="service col-lg-4 col-md-12 col-sm-12 col-xs-12 ">
				<div class="headingStyle1">
					<span><a href="#">K-12 Policy & Practice</a></span>
				</div>
				<div>
					<p>All students need access to a high-quality, rigorous K-12
						education to prepare for the opportunities and demands of the
						world outside of school doors. But too many young people —
						disproportionately African American, Latino, and Native students
						and students from low-income families — are getting an education
						that falls far short.</p>
				</div>
				<button type="button"
					class="btn btn-primary btn-lg sharp pull-right">Know More</button>
			</div>
		</div>
		<%@ include file="footerBottom.jsp"%>
	</div>
	<%@ include file="js.jsp"%>
<script type="text/javascript">
var $ = jQuery.noConflict();
$(document).ready(function() {
	languageChange();
});
</script>	
</body>
</html>
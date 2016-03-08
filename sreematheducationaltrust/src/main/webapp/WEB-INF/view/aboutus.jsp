<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About us</title>
<%@ include file="css.jsp"%>
</head>
<body>
<div class="container">
<span id="requestedPage" value="aboutus" hidden></span>
	<%@ include file="footer.jsp"%>	
	<hr>
	<div class="row nav-menu">
		<%@ include file="navmenu.jsp"%>
	</div>
	<div class="row startedDetails">
	<h1>About Us</h1>
		<div class=" row aboutusContent">
			<div class="section-1">
			<p><b>The Education Trust is a national non-profit advocacy organization that promotes high academic achievement for all students at all levels, particularly for students of color and low-income students. We were founded for one reason and one reason alone: to push, prod, and cajole our country toward educational justice.</b></p>		
			<p>From our beginnings in the early 1990s, our unrelenting advocacy continues to be supported by solid data analysis, equity-focused legislative proposals, strong partnerships with leading organizations, and proven strategies to improve the educational outcomes of our nation’s youth.</p>
			<p>With these tools we aim to expose — and eliminate — the gaps in opportunity by race and income that have led to enormous gaps in educational achievement, pre-K through college. These gaps can severely limit economic and social mobility.</p>
			</div>
			<div class="ourMission section-2">
				<span class="heading">Our Mission</span>
				<hr>
				<p>The Education Trust promotes high academic achievement for all students at all levels — pre-kindergarten through college. Our goal is to close the gaps in opportunity and achievement that consign far too many young people — especially those from low-income families or who are black, Latino, or American Indian — to lives on the margins of the American mainstream.</p>
			</div>
		</div>
		<div class="row advanceMission">
		<div class="col-1 col-lg-6 col-ms-12 col-sm-12 col-xs-12">
			<sapn class="heading">How We Advance Our Mission</sapn>
			<hr>
			<p>Although many organizations speak up for the adults employed by schools and colleges, we speak up for students, especially those whose needs and potential are often overlooked. We evaluate every policy, every practice, and every dollar spent through a single lens: what is right for students. We carry out our mission in three primary ways:</p>
			<ul class="">
				<li><p>We work alongside educators, parents, students, policymakers, and civic and business leaders in communities across the country, providing practical assistance in their efforts to transform schools and colleges into institutions that serve all students well.</p></li>
				<li><p>We analyze local, state, and national data and use what we learn to help build broader understanding of achievement and opportunity gaps and the actions necessary to close them.</p></li>
				<li><p>We actively work to shape and influence national and state policy, bringing lessons learned from on-the-ground work and from unflinching data analyses to build the case for policies that will help all students reach high levels of achievement.</p></li>
			</ul>
		</div>
		<div class="col-2 col-lg-6 col-ms-12 col-sm-12 col-xs-12">
			<sapn class="heading">Our Core Beliefs</sapn>
			<hr>
			<ul class="">
				<li><p>We believe in the power of education to close the gaps that separate low-income students and students of color from other young Americans.</p></li>
				<li><p>We believe schools and colleges, appropriately organized, can help virtually all students master the knowledge they need to succeed</p></li>
				<li><p>We believe long-standing gaps in opportunity, achievement, and attainment have roots inside and outside of schools. And though we know these gaps are stubborn, we also know they are not inevitable.</p></li>
				<li><p>We believe a strong education improves the lives of young people, is vital to sustaining our democracy, and strengthens America.</p></li>
			</ul>
			</div>
		</div>
	</div>
	<div class="row trustity">
		<div class="trustityCol col-lg-3 col-md-6 col-sm-12 col-xs-12">
		a
		</div>
		<div class="trustityCol col-lg-3 col-md-6 col-sm-12 col-xs-12">
		b
		</div>
		<div class="trustityCol col-lg-3 col-md-6 col-sm-12 col-xs-12">
		c
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
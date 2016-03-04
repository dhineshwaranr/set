<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
	<div class="form-group col-lg-2 col-md-2 col-sm-12 col-xs-12 pull-right">
		<select class="form-control" id="chooseNewsLanguage" name="chooseNewsLanguage">
		<c:forEach items="${model.languageList}" var="element">
			<option value="${element.id}">${element.language}</option>
		</c:forEach>
		</select>
	</div>
</div>
<div class="row">
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
        <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="" type="square"><a href="dashboard">Home<span class="sr-only">(current)</span></a></li>
        <li><a href="aboutus">About us</a></li>
        <li><a href="services">Service</a></li>
        <li><a href="blog">Blog</a></li>
        <li><a href="gallery">Gallery</a></li>
        <li><a href="videos">Video</a></li>
        <li><a href="contactus">Contact us</a></li>
        <li class="pull-right"><a href="admin/taskPanel">Admin Task Panel</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<hr>
</div>
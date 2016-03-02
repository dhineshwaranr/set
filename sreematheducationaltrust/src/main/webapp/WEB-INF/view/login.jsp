<!DOCTYPE html>
<html lang="en">
<head>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<title></title>
<%@ include file="css.jsp"%>
<style>
	@media screen and (min-width: 300px) and (max-width:1200px) {
    body {
        background-color: white;
    }
    #box{
    	border:none !important;
    }
}
</style>
</head>
<body>
<div class="container">
	<div class="row">
 
		<div class="col-lg-8">
		</div>
			
		<div class="col-lg-4 welcome-image">
 
		<div class="col-lg-7">
		<c:if test="${not empty error}">
		<div class="errorblock alert alert-danger">
						
				     
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
					${error}
					</div>
					</c:if>
					
					<c:if test="${not empty param['error']}">
           				<div class="errorblock alert alert-danger">
           
                    
                   <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
					<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
					</div>
					 </c:if>
					 
					  <c:if test="${not empty msg}">
		<div class="alert alert-success alert-dismissible">
						
				     
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
					${msg}
					</div>
					</c:if>
		
		</div>	
		 
		 
 
			<div class="loginpanel">
				<form:form action="j_spring_security_check" id="login" commandName="adminuser" method="post" accept-charset="UTF-8" role="form">
					  <div class="form-group">
					    <label for="username">User Name</label>
					    <input type="text" class="form-control" id="userName" name="userName" placeholder="User Name">
					  </div>
					  <div class="form-group">
					    <label for="password">Password</label>
					    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
					  </div>
					  <div class="checkbox">
					    <label><input type="checkbox" name="_spring_security_remember_me" value="true"> Remember me</label>
					  </div>
					  <button type="submit" class="btn btn-default">Submit</button>
				</form:form>
			 
		 
	</div>
</div>
</div>
</div>

<%@ include file="js.jsp"%>
</body>
</html>
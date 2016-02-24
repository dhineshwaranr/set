<!DOCTYPE html>
<html lang="en">
<head>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<META Http-Equiv="Cache-Control" Content="no-cache">
<META Http-Equiv="Pragma" Content="no-cache">
<META Http-Equiv="Expires" Content="0">

<%-- <link rel="stylesheet" href="<c:url value='/resources/css/clock.css'/>" type="text/css" /> --%>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" type="text/css" />


</head>
<body>

<div class="row">
  
  <ul class="hourTens"><li>0</li><li>1</li><li>2</li></ul>
  <ul class="hourOnes"><li>0</li><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>6</li><li>7</li><li>8</li><li>9</li></ul>
  <ul class="minuteTens"><li>0</li><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li></ul>
  <ul class="minuteOnes"><li>0</li><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>6</li><li>7</li><li>8</li><li>9</li></ul>
  <ul class="secondTens"><li>0</li><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li></ul>
  <ul class="secondOnes"><li>0</li><li>1</li><li>2</li><li>3</li><li>4</li><li>5</li><li>6</li><li>7</li><li>8</li><li>9</li></ul>
 
</div>
<script src="<c:url value='/resources/js/jquery.min.js' />"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
</body>
</html>


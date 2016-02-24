<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/* golden ratio */
body {
  background-color: #222;
  width: 100%;
}

.clock {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 384px;
  height: 80.9017px;
  margin-left: -192px;
  margin-top: -40.45085px;
}

.digit {
  height: 80.9017px;
  width: 50px;
  position: relative;
  display: inline-block;
  margin: 0 4px;
}
.digit span {
  position: absolute;
  background-color: #7FFF00;
  border-color: #7FFF00;
  opacity: 0.03;
  -webkit-transition: 0.25s;
  transition: 0.25s;
}
.digit span:before, .digit span:after {
  content: '';
  position: absolute;
  width: 0;
  height: 0;
  border: 2px solid transparent;
}
.digit span:nth-child(-n+3) {
  height: 2px;
  width: 44px;
  left: 3px;
}
.digit span:nth-child(n+4) {
  width: 2px;
  height: 33.45085px;
}
.digit span:nth-child(4), .digit span:nth-child(6) {
  left: 0;
}
.digit span:nth-child(4):before, .digit span:nth-child(6):before {
  border-width: 0 2px 2px 0;
  border-bottom-color: inherit;
  top: -2px;
}
.digit span:nth-child(4):after, .digit span:nth-child(6):after {
  border-width: 0 0 2px 2px;
  border-left-color: inherit;
  bottom: -2px;
}
.digit span:nth-child(5), .digit span:nth-child(7) {
  right: 0;
}
.digit span:nth-child(5):before, .digit span:nth-child(7):before {
  border-width: 0 0 2px 2px;
  border-bottom-color: inherit;
  top: -2px;
}
.digit span:nth-child(5):after, .digit span:nth-child(7):after {
  border-width: 2px 0 0 2px;
  border-top-color: inherit;
  bottom: -2px;
}
.digit span:nth-child(4), .digit span:nth-child(5) {
  top: 3px;
}
.digit span:nth-child(6), .digit span:nth-child(7) {
  top: 40.95085px;
}
.digit span:first-child {
  top: 0px;
}
.digit span:first-child:before {
  border-width: 0 2px 2px 0;
  border-right-color: inherit;
  left: -2px;
}
.digit span:first-child:after {
  border-width: 0 0 2px 2px;
  border-left-color: inherit;
  right: -2px;
}
.digit span:nth-child(2) {
  top: 37.95085px;
}
.digit span:nth-child(2):before {
  border-width: 1px;
  border-right-color: inherit;
  left: -1px;
}
.digit span:nth-child(2):after {
  border-width: 1px;
  border-left-color: inherit;
  right: -1px;
}
.digit span:nth-child(3) {
  top: 74.9017px;
}
.digit span:nth-child(3):before {
  border-width: 2px 2px 0 0;
  border-right-color: inherit;
  left: -2px;
}
.digit span:nth-child(3):after {
  border-width: 2px 0 0 2px;
  border-left-color: inherit;
  right: -2px;
}

.digit[data-digit="0"] span:nth-child(1), .digit[data-digit="2"] span:nth-child(1), .digit[data-digit="3"] span:nth-child(1), .digit[data-digit="5"] span:nth-child(1), .digit[data-digit="6"] span:nth-child(1), .digit[data-digit="7"] span:nth-child(1), .digit[data-digit="8"] span:nth-child(1), .digit[data-digit="9"] span:nth-child(1) {
  opacity: 1;
}

.digit[data-digit="2"] span:nth-child(2), .digit[data-digit="3"] span:nth-child(2), .digit[data-digit="4"] span:nth-child(2), .digit[data-digit="5"] span:nth-child(2), .digit[data-digit="6"] span:nth-child(2), .digit[data-digit="8"] span:nth-child(2), .digit[data-digit="9"] span:nth-child(2) {
  opacity: 1;
}

.digit[data-digit="0"] span:nth-child(3), .digit[data-digit="2"] span:nth-child(3), .digit[data-digit="3"] span:nth-child(3), .digit[data-digit="5"] span:nth-child(3), .digit[data-digit="6"] span:nth-child(3), .digit[data-digit="8"] span:nth-child(3), .digit[data-digit="9"] span:nth-child(3) {
  opacity: 1;
}

.digit[data-digit="0"] span:nth-child(4), .digit[data-digit="4"] span:nth-child(4), .digit[data-digit="5"] span:nth-child(4), .digit[data-digit="6"] span:nth-child(4), .digit[data-digit="8"] span:nth-child(4), .digit[data-digit="9"] span:nth-child(4) {
  opacity: 1;
}

.digit[data-digit="0"] span:nth-child(5), .digit[data-digit="1"] span:nth-child(5), .digit[data-digit="2"] span:nth-child(5), .digit[data-digit="3"] span:nth-child(5), .digit[data-digit="4"] span:nth-child(5), .digit[data-digit="7"] span:nth-child(5), .digit[data-digit="8"] span:nth-child(5), .digit[data-digit="9"] span:nth-child(5) {
  opacity: 1;
}

.digit[data-digit="0"] span:nth-child(6), .digit[data-digit="2"] span:nth-child(6), .digit[data-digit="6"] span:nth-child(6), .digit[data-digit="8"] span:nth-child(6) {
  opacity: 1;
}

.digit[data-digit="0"] span:nth-child(7), .digit[data-digit="1"] span:nth-child(7), .digit[data-digit="3"] span:nth-child(7), .digit[data-digit="4"] span:nth-child(7), .digit[data-digit="5"] span:nth-child(7), .digit[data-digit="6"] span:nth-child(7), .digit[data-digit="7"] span:nth-child(7), .digit[data-digit="8"] span:nth-child(7), .digit[data-digit="9"] span:nth-child(7) {
  opacity: 1;
}

.colon {
  width: 2px;
  height: 80.9017px;
  display: inline-block;
  position: relative;
}
.colon:before, .colon:after {
  content: ' ';
  position: absolute;
  width: 100%;
  height: 2px;
  background-color: #7FFF00;
}
.colon:before {
  top: 23.11477px;
}
.colon:after {
  bottom: 23.11477px;
}


</style>
</head>
<body>
<div class="clock">
  <div class="digit hours-tens"><span></span><span></span><span></span><span></span><span></span><span></span><span></span>
  </div>
  <div class="digit hours-ones"><span></span><span></span><span></span><span></span><span></span><span></span><span></span>
  </div>
  <div class="colon"></div>
  <div class="digit minutes-tens"><span></span><span></span><span></span><span></span><span></span><span></span><span></span>
  </div>
  <div class="digit minutes-ones"><span></span><span></span><span></span><span></span><span></span><span></span><span></span>
  </div>
  <div class="colon"></div>
  <div class="digit seconds-tens"><span></span><span></span><span></span><span></span><span></span><span></span><span></span>
  </div>
  <div class="digit seconds-ones"><span></span><span></span><span></span><span></span><span></span><span></span><span></span>
  </div>
</div>

<%@ include file="js.jsp"%>
<script type="text/javascript">
$(function() {
  var clock = $('.clock');
  
  var digits = {
    hours: {},
    minutes: {},
    seconds: {}
  };
  
  for (var key in digits) {
    digits[key] = {
      tens: $('div.' + key + '-tens'),
      ones: $('div.' + key + '-ones')
    } 
  }
  
  function animate(){
    window.requestAnimationFrame(animate);
    var now = new Date();
    var time = {
      hours: now.getHours(),
      minutes: now.getMinutes(),
      seconds: now.getSeconds()
    }
    
    for (var key in time) {
      digits[key].tens.attr('data-digit', Math.floor(time[key] / 10));
      digits[key].ones.attr('data-digit', time[key] % 10);
    }
  };
  
  animate();
});

</script>

</body>
</html>
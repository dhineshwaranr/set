<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Task Panel</title>
<%@ include file="css.jsp"%>

<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/resources/css/jquery.fileupload.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/resources/css/jquery.fileupload-ui.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/resources/css/jquery.fileupload-ui-noscript.css'/>" type="text/css" />
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-datetimepicker.css'/>" type="text/css" />

</head>
<body>
<div class="container">
	<div class="row nav-menu">
		<%@ include file="navmenu.jsp"%>
	</div>
	<hr>	
	<div class="col-xs-12 col-sm-8 col-sm-offset-2 text-center"
				id="Success" style="display: none;">
				<div id="addedSucess" class="alert alert-success alert-dismissible">
					<button id="closesuccess" type="button" class="close"
											aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>

					<p>
						<strong>Success!&nbsp;</strong>Added <strong id="addedUserID">some-user@email.com</strong>
						to the list of User.
					</p>

				</div>
			</div>
	<div class="row">
			<div class="" role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs nav-tabs-responsive"	role="tablist">
					<li role="presentation" class="active">
						<a href="#news" id="news-tab" role="tab" data-toggle="tab" aria-controls="newse" aria-expanded="true"> <span class="text">News</span></a>
					</li>
					<li role="presentation" class="next">
						<a href="#events" role="tab" id="events-tab" data-toggle="tab" aria-controls="events"> <span class="text">Events</span></a>
					</li>
					<li role="presentation" class="next">
						<a href="#gallery" role="tab" id="gallery-tab" data-toggle="tab" aria-controls="gallery"> <span class="text">Gallery</span></a>
					</li>
				</ul>
			</div>
		</div>
	<div id="myTabContent" class="tab-content">		
    	<div role="tabpanel" class="row tab-pane fade in active" id="news" aria-labelledby="home-tab">
	    	<form:form action="newsPost" id="newsPost" commandName="news" method="post" accept-charset="UTF-8" role="form" enctype="multipart/form-data">
					  <div class="row">
						  <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
						    <label for="username">News Title</label>
						    <input type="text" class="form-control" id="newsTitle" name="newsTitle" placeholder="News Title">
						  </div>
					  </div>
					  <div class="row">
						  <div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12">
							  <label for="newsCategory">News Category</label>
							  <select class="form-control" id="newsCategory" name="newsCategory">
							    <option>General</option>
							    <option>Science</option>
							    <option>Politics</option>
							    <option>Sprots</option>
							    <option>Medicine</option>
							  </select>
							</div>
							<div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12">
							  <label for="newsLang">News Language</label>
							  <select class="form-control" id="newsLang" name="newsLang">
							    <option>Tamil</option>
							    <option>English</option>
							    <option>Hindi</option>
							    <option>Sprots</option>
							    <option>Medicine</option>
							  </select>
							</div>
							 <div class="form-group col-lg-4 col-md-4 col-sm-12 col-xs-12">
							  <label for="newsType">News Type</label>
							  <select class="form-control" id="newsType" name="newsType">
							    <option>General</option>
							    <option>Event</option>
							    <option>Fucntion</option>
							  </select>
							</div> 
						</div>
					<div class="row">
						<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
						  <label for="comment">Description</label>
						  <textarea class="form-control" rows="7" id="description" name="description"></textarea>
						</div>	
					</div>
					  <div class="form-group checkbox">
					    <label><input type="checkbox" name="isImage" id="isImage">Add Image</label>
					  </div>
					  <div class="form-group fileupload">
					  	<div class="container">
						        <!-- Redirect browsers with JavaScript disabled to the origin page -->
						        <noscript><input type="hidden" name="redirect" value=""></noscript>
						        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
						        <div class="row fileupload-buttonbar">
						            <div class="col-lg-7">
						                <!-- The fileinput-button span is used to style the file input field as button -->
						                <span class="btn btn-success fileinput-button">
						                    <i class="glyphicon glyphicon-plus"></i>
						                    <span>Add files...</span>
						                    <input type="file" name="files[]" multiple>
						                </span>
						                <button type="submit" class="btn btn-primary start">
						                    <i class="glyphicon glyphicon-upload"></i>
						                    <span>Start upload</span>
						                </button>
						                <button type="reset" class="btn btn-warning cancel">
						                    <i class="glyphicon glyphicon-ban-circle"></i>
						                    <span>Cancel upload</span>
						                </button>
						                <button type="button" class="btn btn-danger delete">
						                    <i class="glyphicon glyphicon-trash"></i>
						                    <span>Delete</span>
						                </button>
						                <input type="checkbox" class="toggle">
						                <!-- The global file processing state -->
						                <span class="fileupload-process"></span>
						            </div>
						            <!-- The global progress state -->
						            <div class="col-lg-5 fileupload-progress fade">
						                <!-- The global progress bar -->
						                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
						                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
						                </div>
						                <!-- The extended global progress state -->
						                <div class="progress-extended">&nbsp;</div>
						            </div>
						        </div>
						        <!-- The table listing the files available for upload/download -->
						        <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
						    
						    <br>
					 </div>
					  </div>
					  <div class="row pull-right">
					  	<input type="submit" value="Post" name="Save" class="btn btn-success"></button>
					  	<input type="submit" value="Clear" class="btn btn-danger"></button>
					  </div>
		</form:form>
		</div>
		<div role="tabpanel" class="row tab-pane fade" id="events" aria-labelledby="events-tab">
			<form:form action="eventPost" id="eventPost" commandName="events" method="post" accept-charset="UTF-8" role="form" enctype="multipart/form-data">
					  <div class="row">
						  <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
						    <label for="eventTitle">Event Title</label>
						    <input type="text" class="form-control" id="eventTitle" name="eventTitle" placeholder="Event Title">
						  </div>
					  </div>
					  <div class="row">
						  <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
							  <label for="newsCategory">From</label>
							  	<div class="form-group">
					                <div class='input-group date' id='eventfrom'>
					                    <input type='text' class="form-control" name="eventFrom" id="eventFrom"/>
					                    <span class="input-group-addon">
					                        <span class="glyphicon glyphicon-calendar"></span>
					                    </span>
					                </div>
					            </div>
							</div>
							<div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
							  <label for="newsLang">To</label>
							  		<div class="form-group">
					                <div class='input-group date' id='eventto'>
					                    <input type='text' class="form-control" name="eventTo" id="eventTo" />
					                    <span class="input-group-addon">
					                        <span class="glyphicon glyphicon-calendar"></span>
					                    </span>
					                </div>
					            </div>
							</div>
						</div>	
					  <div class="row">
						  <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
							  <label for="newsCategory">Event Type</label>
							  <select class="form-control" id="eventType" name="eventType">
							    <option>General</option>
							    <option>Meeting</option>
							    <option>Official</option>
							    <option>Function</option>
							    <option>Medical camp</option>
							  </select>
							</div>
							<div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
							  <label for="newsLang">Event Status</label>
							  <select class="form-control" id="eventStatus" name="eventStatus">
							    <option>Up Coming</option>
							    <option>On Going</option>
							    <option>Completed</option>
							    <option>Cancelled</option>
							  </select>
							</div>
						</div>
							<div class="row">
								<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
								  <label for="comment">Event Description</label>
								  <textarea class="form-control" rows="7" id="eventDescription" name="eventDescription"></textarea>
								</div>	
							</div>
					  <div class="row pull-right">
					  	<input type="submit" value="Post" name="Save" class="btn btn-success"></button>
					  	<input type="submit" value="Clear" class="btn btn-danger"></button>
					  </div>
		</form:form>
			
		</div>
		<div role="tabpanel" class="row tab-pane fade" id="gallery" aria-labelledby="gallery-tab">
					<form:form action="addImages" id="addImages" commandName="images" method="post" accept-charset="UTF-8" role="form" enctype="multipart/form-data">
					  <div class="row">
						  <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
						    <label for="galleryTitle">Add Title</label>
						    <input type="text" class="form-control" id="galleryTitle" name="galleryTitle" placeholder="Title">
						  </div>
					  </div>
					  <div class="row">
						  <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
							  <label for="newsCategory">On</label>
							  	<div class="form-group">
					                <div class='input-group date' id='eventfrom'>
					                    <input type='text' class="form-control" name="heldon" id="heldon"/>
					                    <span class="input-group-addon">
					                        <span class="glyphicon glyphicon-calendar"></span>
					                    </span>
					                </div>
					            </div>
							</div>
							<div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
    							<label for="newsCategory">Album</label>
    							<span class="btn btn-default btn-file btn-block">
      							Upload Image
							      <input name="filesToUpload[]" id="filesToUpload" type="file" multiple="" title="Select an image file" />
							    </span>
  							</div>
						</div>	
					  <div class="row">
						  <div class="form-group col-lg-6 col-md-6 col-sm-12 col-xs-12">
							  <label for="newsCategory">Event Type</label>
							  <select class="form-control" id="eventType" name="eventType">
							    <option>General</option>
							    <option>Meeting</option>
							    <option>Official</option>
							    <option>Function</option>
							    <option>Medical camp</option>
							  </select>
							</div>
							
						</div>
						<div class="row">
							
  						</div>
  						<div class="row">
	  						<div class="img-wrapper">
	  						</div>
  						</div>
					  <div class="row pull-right">
					  	<input type="submit" value="Post" name="Save" class="btn btn-success"></button>
					  	<input type="submit" value="Clear" class="btn btn-danger"></button>
					  </div>
		</form:form>
		</div>
		
	</div>
</div>



<%@ include file="js.jsp"%>
<script src="<c:url value='/resources/js/imageUpload.js' />"></script>
<script type="text/javascript">
jQuery(document).ready(function() {
	var taskPanel = new TaskPanel();
	taskPanel.init();
});

$('input:checkbox').change(
    function(){
        if ($(this).is(':checked')) {
            $('.fileupload').show(1000);
        }else{
        	$('.fileupload').hide(1000);
        }
 });

 /*$(document).on('submit', '#newsPost', function(e) {
			console.log('admin/newsPost');
			$.ajaxForm({
		        url: 'admin/newsPost',
		        type: 'POST',
		        cache: false,
		        success: function (result) {
		            alert(result);
		        }
		    }); 
		    e.preventDefault();
		}); */
    
  <!-- TABS -->
(function($) {

  'use strict';

  $(document).on('show.bs.tab', '.nav-tabs-responsive [data-toggle="tab"]', function(e) {
    var $target = $(e.target);
    var $tabs = $target.closest('.nav-tabs-responsive');
    var $current = $target.closest('li');
    var $parent = $current.closest('li.dropdown');
		$current = $parent.length > 0 ? $parent : $current;
    var $next = $current.next();
    var $prev = $current.prev();
    var updateDropdownMenu = function($el, position){
      $el
      	.find('.dropdown-menu')
        .removeClass('pull-xs-left pull-xs-center pull-xs-right')
      	.addClass( 'pull-xs-' + position );
    };

    $tabs.find('>li').removeClass('next prev');
    $prev.addClass('prev');
    $next.addClass('next');
    
    updateDropdownMenu( $prev, 'left' );
    updateDropdownMenu( $current, 'center' );
    updateDropdownMenu( $next, 'right' );
  });

})(jQuery);  
    
 $(function () {
       $('#eventfrom').datetimepicker();
});   
 $(function () {
       $('#eventto').datetimepicker();
});
    
</script>


<script src="../resources/js/jquery.ui.widget.js"></script>
<script src="<c:url value='http://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js' />"></script>
<script src="<c:url value='http://blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js' />"></script>
<script src="<c:url value='http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js' />"></script>

<script src="<c:url value='../resources/js/jquery.fileupload.js' />"></script>
<script src="<c:url value='../resources/js/jquery.fileupload-process.js' />"></script>
<script src="<c:url value='../resources/js/jquery.fileupload-image.js' />"></script>
<script src="<c:url value='../resources/js/jquery.fileupload-validate.js' />"></script>
<script src="<c:url value='../resources/js/jquery.fileupload-ui.js' />"></script>
<script src="<c:url value='../resources/js/main.js' />"></script>
<script src="<c:url value='../resources/js/moment-with-locales.js' />"></script>
<script src="<c:url value='../resources/js/bootstrap-datetimepicker.js' />"></script>
<script src="<c:url value='/resources/js/pro-js/config.js' />"></script> 
<script src="<c:url value='/resources/js/jquery.form.js' />"></script>
<script src="<c:url value='../resources/js/pro-js/adminTaskPanel.js' />"></script>

</script>
</body>
</html>
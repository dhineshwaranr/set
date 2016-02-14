var common = function() {	
	if (window === this) {
		return new common();
	}
	return this;	
};

common.prototype.ajaxForm = function(id, url, data, callOnSuccess, callOnFailure ) {
	alert("common"+id);
	$('#'+id).ajaxForm({
		url:url,
		success : function(obj) {
			callOnSuccess(obj);
		},
		error:function(){
			callOnFailure();
		}
	
	});

};

common.prototype.postData = function(url, data, callback) {
	console.log(appConfig.location+url)
	var newdata = data;
	$.ajax({
		url : appConfig.location + url,
		success : function(obj) {		
			callback(obj);
		}
	});
};

common.prototype.getData = function(url, data, callback) {
	var newdata = data;
	
	$.ajax({
		type : "GET",
		dataType : "json",
		data : newdata,
		url : appConfig.location + url,
		success : function(obj) {		
			callback(obj);
		}
	});
};
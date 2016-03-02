var TaskPanelData={
	
}

var data="";
var dataTable="";

var TaskPanel = function(){
	if(window === this){
		return new TaskPanel();
	}
	return this;
}

TaskPanel.prototype.init = function(){
	try{
		console.log("NEWS INIT");
		this.newsPost();
		this.doOnPageLoad();
		this.eventPost();
		this.addLanguage();
	}catch(e){
	}
}

TaskPanel.prototype.doOnPageLoad = function () {
	
};

TaskPanel.prototype.newsPost = function () {
	console.log("News-Create");
	var id = "newsPost";
	var url = "admin/"+$(this).attr("action");
	common().ajaxForm(id, url, TaskPanelData.data, TaskPanel().callOnAddSuccess, TaskPanel().callOnAddFailure );
};

TaskPanel.prototype.eventPost = function () {
	console.log("EVENT-Create");
	var id = "eventPost";
	var url = "admin/"+$(this).attr("action");
	common().ajaxForm(id, url, TaskPanelData.data, TaskPanel().callOnAddSuccess, TaskPanel().callOnAddFailure );
};

TaskPanel.prototype.addLanguage = function () {
	console.log("addLanguage");
}

TaskPanel.prototype.callOnAddSuccess = function(obj) {
	if(obj.statusCode == "1") {
		 window.location = window.location.pathname;
		 console.log(JSON.stringify(obj));
		 TaskPanel().doOnPageLoad();	
	} else {
		
	}
};

TaskPanel.prototype.callOnAddFailure = function() {
	$("#systemError").show();
};


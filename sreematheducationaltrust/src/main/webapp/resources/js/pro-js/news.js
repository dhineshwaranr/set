var NewsData={
	getAllNews : "/getAllNews"
}

var data="";
var dataTable="";

var News = function(){
	if(window === this){
		return new News();
	}
	return this;
}

News.prototype.init = function(){
	try{
		console.log("NEWS INIT");
		this.doOnPageLoad();
		this.newsPost();
	}catch(e){
	}
}

News.prototype.doOnPageLoad = function () {
	console.log("NEWS INIT");
};

News.prototype.newsPost = function () {
	console.log("newspost");
	var id = "newsPost";
	var url = "admin/"+$(this).attr("action");
	console.log("ID-->"+id);
	console.log("ID-->"+url);
	common().ajaxForm(id, url, NewsData.data, News().callOnAddSuccess, News().callOnAddFailure );
};

News.prototype.callOnAddSuccess = function(obj) {
	if(obj.statusCode == "1") {
		 window.location = window.location.pathname;
		 console.log(JSON.stringify(obj));
		 User().doOnPageLoad();	
	} else {
		
	}
};

News.prototype.callOnAddFailure = function() {
	$("#systemError").show();
};


var DashboardData={
	getAllNewsURL : "/getFeeds",
	
	data :"",
	userPerPage : 5,
	totalPage : 0
}

var data="";
var dataTable="";

var Dashboard = function(){
	if(window === this){
		return new Dashboard();
	}
	return this;
}

Dashboard.prototype.init = function(){
	try{
		console.log("Dashboard INIT");
		this.doOnPageLoad();
	}catch(e){
	}
}

Dashboard.prototype.doOnPageLoad = function () {
	//common().getData(DashboardData.getAllNewsURL,data,Dashboard().fillnewspanel);
};

Dashboard.prototype.newsPost = function () {
	console.log("newspost");
	var id = "newsPost";
	var url = "admin/"+$(this).attr("action");
	console.log("ID-->"+id);
	console.log("ID-->"+url);
	common().ajaxForm(id, url, NewsData.data, News().callOnAddSuccess, News().callOnAddFailure );
};

Dashboard.prototype.callOnAddSuccess = function(obj) {
	if(obj.statusCode == "1") {
		  
		 console.log(JSON.stringify(obj));
		 User().doOnPageLoad();	
	} else {
		
	}
};

Dashboard.prototype.callOnAddFailure = function() {
	$("#systemError").show();
};

Dashboard.prototype.fillnewspanel = function (data) {
	console.log("asdfa"+data);
	var defaulttemp ='';
	if(data != null){
		console.log("GET-ALL-NEWS-->"+JSON.stringify(data));
		$.each(data.responseData.entries, function(i, obj) {
			
			defaulttemp += '<div class="daily-news"id="'+obj.url+'">';
			defaulttemp	+= '<div class="newsHeading"><b><span>'+obj.title+'</span></b></div>';
			defaulttemp += '<div class="newsDescription">'+obj.contentSnippet+'</div>';
			defaulttemp += '<div class="newsURL"><a href='+obj.link+'>'+obj.link+'</a></div>';
			defaulttemp	+= '</div>';
			
		});
		$("#newsPanel").append(defaulttemp);
		$("#newsPanels").append(defaulttemp);
					
	}
	
};
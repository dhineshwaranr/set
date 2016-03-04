$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
  var target = $(e.target).attr("href") // activated tab
  //alert(target);
  if(target == "#news"){
	  //newsObj();
  }
  if(target == "#languageOptionPanel"){
	  loadLanguage();
  }
});

function newsObj(){
	var url = "/admin/newsObjCreate";
	$.ajax({
	    url: appConfig.location + url,
	 	type: "GET",
	    dataType : "json",
	    success: function( data ) {
	    	if(page == "dashbord"){
	        	fillnewspanel(data);
	        }	
	    },
	    error: function( xhr, status, errorThrown ) {
	        alert( "Sorry, there was a problem!" );
	    },
	    complete: function( xhr, status ) {
	        //alert( "The request is complete!" );
	    }
	});
}


function loadLanguage(){
	jQuery("#languageList").jqGrid({	 
		url:appConfig.location+'/admin/getAllLanguage',
		datatype: "json",
		mtype: 'GET',
		colNames:['No','Language'],
		colModel:[
		{name:'id',index:'id', width:'2%', sorttype:"int",align: "center", editable: false,hidden:false},
		{name:'language',index:'language', width:'3%', sorttype:"int",align: "center", editable: false,hidden:false},
		],
		autowidth:true,
        pager: '#languageListpager',
		sortname: 'id',
		viewrecords: false,
		sortorder: "desc",
		loadonce:false,
		toolbar: [true,"top"],
		jsonReader : { repeatitems: false },	
		editurl: "processoperation",
		jsonReader : {
	          root: "rows",
	          page: "page",
	          total: "total",
	          records: "records",
	          repeatitems: false,
	          cell: "cell",
	          id: "id"
	      }
	});
	
	jQuery("#languageList").jqGrid("navGrid", "#languageListpager",
		{search:true,edit: true, add: true, del: true, refresh:true}
	);
};
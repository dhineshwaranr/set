$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
  var target = $(e.target).attr("href") // activated tab
  //alert(target);
  if(target == "#news"){
	  //newsObj();
  }
  if(target == "#languageOptionPanel"){
	  loadLanguage();
  }if(target == "#menuOptionPanel"){
	  loadMenu();
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
		{name:'id',index:'id', width:10, sorttype:"int",align: "center", editable: false,hidden:false},
		{name:'language',index:'language', width:10, sorttype:"int",align: "center", editable: false,hidden:false}
		],
		autowidth:true,
        pager: '#languageListpager',
		sortname: 'id',
		viewrecords: true,
		sortorder: "desc",
		gridview: true,
		loadonce:false,
		editurl: "processoperation",
	});
	
	jQuery("#languageList").jqGrid("navGrid", "#languageListpager",
		{search:true,edit: true, add: true, del: true, refresh:true}
	);
};

function loadMenu(){
	jQuery("#menuList").jqGrid({	 
		url:appConfig.location+'/admin/getAllMenu',
		datatype: "json",
		mtype: 'GET',
		colNames:['No','Menu Name','Language'],
		colModel:[
		{name:'id',index:'id', width:10, sorttype:"int",align: "center", editable: false,hidden:false,key: true,formoptions: { rowpos: 1, colpos: 1}},
		{name:'menuName',index:'menuName', width:10, sorttype:"int",align: "center", editable: false,hidden:false,key: true},
		{name:'language',index:'language', width:10, sorttype:"int",align: "center", editable: false,hidden:false,key: true},
		],
		height: 250,
		rowNum: 10,
		rowList: [5, 10, 20, 50, 100],
		autowidth:true,
        pager: '#menuListpager',
		sortname: 'id',
		viewrecords: true,
		sortorder: "desc",
		
		loadonce:false,
		editurl: "processoperation",
	});
	jQuery("#menuList").jqGrid("navGrid", "#menuListpager",
		{search:true,edit: true, add: true, del: true, refresh:true}
	);
};

$(window).resize(function () { jQuery("#theGrid").jqGrid('setGridWidth', parseInt($(window).width()) - 20); });
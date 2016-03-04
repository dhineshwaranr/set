$(document).ready(function() {
            var grid = $("#list"),
                mydata = [
                   {id:"1",invdate:"2007-10-01",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
                   {id:"2",invdate:"2007-10-02",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
                   {id:"3",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
                   {id:"4",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
                   {id:"5",invdate:"2007-10-05",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
                   {id:"6",invdate:"2007-09-06",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
                   {id:"7",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
                   {id:"8",invdate:"2007-10-03",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
                   {id:"9",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
                   {id:"10",invdate:"2007-10-01",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
                   {id:"11",invdate:"2007-10-02",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
                   {id:"12",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
                   {id:"13",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
                   {id:"14",invdate:"2007-10-05",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
                   {id:"15",invdate:"2007-09-06",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
                   {id:"16",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
                   {id:"17",invdate:"2007-10-03",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
                   {id:"18",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"}
                ];

            $("#list").jqGrid({
                datatype: "local",
                data: mydata,
                colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
                colModel:[
                    {name:'id',index:'id', key: true, width:70, sorttype:"int"},
                    {name:'invdate',index:'invdate', width:90, sorttype:"date"},
                    {name:'name',index:'name', width:100},
                    {name:'amount',index:'amount', width:80, align:"right",sorttype:"float"},
                    {name:'tax',index:'tax', width:80, align:"right",sorttype:"float"},
                    {name:'total',index:'total', width:80,align:"right",sorttype:"float"},
                    {name:'note',index:'note', width:150, sortable:false}
                ],
                search:true,
                pager:'#pager',
                jsonReader: {cell:""},
                rowNum: 10,
                rowList: [5, 10, 20, 50],
                sortname: 'id',
                sortorder: 'asc',
                viewrecords: true,
                height: "100%",
                caption: "Multiple search with local data"
            });
            grid.jqGrid('navGrid','#pager',{add:false,edit:false,del:false,search:true,refresh:true},
                        {},{},{},{multipleSearch:true, multipleGroup:true, showQuery: true});
        });
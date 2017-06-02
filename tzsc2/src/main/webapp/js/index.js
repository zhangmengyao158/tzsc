//搜索按钮
function find(){
	var strFind = encodeURI(encodeURI($("#findVal").val()));
	window.location.href="page/detail.jsp?param="+strFind;
	
}


//加载主分类的小分类
function indexMenu(menu){
	$.get("index/indexMenu?menu="+menu,function(data){
		for(var i=0;i<data.length;i++){
			//sousuo/souMenu=menu?&smname="+data[i].mname+"
			$("._tarblock li:nth-child("+menu+") dl").append("<dt id='ssm"+data[i].mid+"' name="+data[i].mid+"><a style='display:block' href='#'>"+data[i].mname+"</a></dt>");
			indexMinMenu(menu,data[i].mid);
		}
	},"json");
};
//细分分类
function indexMinMenu(number,id){
	$.get("index/indexMinMenu?SMmenu="+id,function(SMdata){
		for(var z=0;z<SMdata.length;z++){
			$("#ssm"+id+"").append("<dd name="+SMdata[z].mid+"><a href='sousuo/souMenu?souA="+number+"&souB="+id+"&smname="+SMdata[z].smname+"'>"+SMdata[z].smname+"</a></dd>");
		}
	},"json");
}
function newMenu(){
	for(var j=1;j<=6;j++){
		indexMenu(j);
	}
}
newMenu(1);
//跳转到show商品页
//function show(id){
//	window.location.href="show.jsp";
//// 	alert(id);
////	$.get("tzsc/show?cid="+id,function(data){
////		location.replace("show.jsp");
////	})
//}





//加载首页的热门试用
$.get("index/hotShop",function(data){
	for(var i=0;i<data.length;i++){
		if(data[i].cpic.split(";")!=null){
			$(".article1_3_1").append('<div style="overflow:hidden;text-align: center;width:23%;height:75%; margin:0px 1% 10px 0px;float:left;border:1px solid #CCCCCC;">'+
	            	'<form><a href="page/show.jsp?nidParam='+data[i].cid+'">'+
	            	'<div style="background:#CBCBCB;text-align: center;width:95%;height:185px;overflow:hidden;margin:0 auto;"><img style="vertical-align:middle;overflow:hidden;height:100%" src="upload/'+data[i].cpic.split(";")[0]+'"/></div>'+
	            	'<p style="height:33px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">'+data[i].cname+'</p>'+
	            	'<div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span><!-- <input class="_canyu" style="" type="button" value="立即参与"/> --></div>'+
	            	'</a></form></div>');
		}else{
			$(".article1_3_1").append('<div style="text-align: center;width:24%;height:235px;float:left; margin:0px 3px 3px 0px;;border:1px solid #CCCCCC;">'+
	            	'<form><a href="page/show.jsp?nidParam='+data[i].cid+'">'+
	            	'<img style="vertical-align:middle;overflow:hidden;height:180px;" src="upload/'+data[i].cpic+'"/>'+
	            	'<p style="height:33px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">'+data[i].cname+'</p>'+
	            	'<div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span><input class="_canyu" style="" type="button" value="立即参与"/></div>'+
	            	'</a></form></div>');
		}
	}
},"json");

$.get("index/newShop",function(data){
	for(var i=0;i<data.length;i++){
		if(data[i].cpic.split(";")!=null){
			$(".article1_3_2").append('<div style="overflow:hidden;text-align: center;width:23%;height:75%; margin:0px 1% 10px 0px;float:left;border:1px solid #CCCCCC;">'+
	            	'<form><a href="page/show.jsp?nidParam='+data[i].cid+'">'+
	            	'<div style="background:#CBCBCB;text-align: center;width:95%;height:185px;overflow:hidden;margin:0 auto;"><img style="vertical-align:middle;overflow:hidden;height:100%" src="upload/'+data[i].cpic.split(";")[0]+'"/></div>'+
	            	'<p style="height:33px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">'+data[i].cname+'</p>'+
	            	'<div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span><!-- <input class="_canyu" style="" type="button" value="立即参与"/> --></div>'+
	            	'</a></form></div>');
		}else{
			$(".article1_3_2").append('<div style="text-align: center;width:24%;height:235px;float:left; margin:0px 3px 3px 0px;;border:1px solid #CCCCCC;">'+
	            	'<form><a href="page/show.jsp?nidParam='+data[i].cid+'">'+
	            	'<img style="vertical-align:middle;overflow:hidden;height:180px;" src="upload/'+data[i].cpic+'"/>'+
	            	'<p style="height:33px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">'+data[i].cname+'</p>'+
	            	'<div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span><input class="_canyu" style="" type="button" value="立即参与"/></div>'+
	            	'</a></form></div>');
		}
	}
},"json");

//加载首页的热门交易




// JavaScript Document
var total=5;
var index=2;//当前图片编号
//

/*//定义函数: function 函数名(形参列表){//函数体}
function changePic(){
	//alert("哈哈哈");
	index+=2;
	if(index==total){
		index=2;
	}
	//改变img标签中的src属性的值
	document.getElementById("chaPic").src="images/banner"+index+".jpg";
}
	
//函数的调用: 函数名(实参列表)
//changePic();
//定时器window.setInterval("调用函数",设置时间（毫秒）);
window.setInterval("changePic()",2000);  //每个一秒调用一次changePic()*/

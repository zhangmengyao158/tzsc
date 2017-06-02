// JavaScript Document
$(function(){
	getProducts(1);
});
var sou1;
var sou2;
var sou3;

//获取地址栏参数
function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}

//alert(GetQueryString("smnao"));


sou1=GetQueryString("souA");
sou2=GetQueryString("souB");
sou3=decodeURI(GetQueryString("smname"));

function sou(sou1,sou2){
	sou1=GetQueryString("souA");
	sou2=GetQueryString("souB");
	sou3=decodeURI(GetQueryString("smname"));
	$.get("index/indexMenu?menu="+sou1,function(data){
		for(var i=0;i<data.length;i++){
//			alert(data[i].mname);
			$("._ul2").append('<li><a onclick="clickB(this)" class="menuB'+data[i].mid+'" href="sousuo/souMenu?souA='+sou1+'&souB='+data[i].mid+'&smname='+0+'">'+data[i].mname+'</a></li>');
		}
		$.get("index/indexMinMenu?SMmenu="+GetQueryString("souB"),function(Sdata){
			for(var j=0;j<Sdata.length;j++){
				$("._ul3").append('<li><a class="menuC'+(j+1)+'" href="sousuo/souMenu?souA='+sou1+'&souB='+Sdata[j].mid+'&smname='+Sdata[j].smname+'">'+Sdata[j].smname+'</a></li>');
				if(decodeURI(escape(sou3)).trim()==Sdata[j].smname.trim()){
					selectMenu(sou1,sou2,(j+1));
					selectList(GetQueryString("souB"),encodeURI(encodeURI(Sdata[j].smname)));
				}
			}
		},"json");
	},"json");
}
sou(sou1,sou2);

function clickB(obj){
	$(obj).attr("style","background:#2470d5;padding:5px;color:#FFF;");
}

//选中颜色
function selectMenu(sou1,sou2,sou3){
	$(".menuA"+sou1+"").attr("style","background:#2470d5;padding:5px;color:#FFF;");
	$(".menuB"+sou2+"").attr("style","background:#2470d5;padding:5px;color:#FFF;");
	$(".menuC"+sou3+"").attr("style","background:#2470d5;padding:5px;color:#FFF;");
};
function menuAClick(){
	sou(sou1,sou2);
}

//模糊搜索
function findStr(){
	$.get("sousuo/find?param="+strFind,function(data){
		alert(data);
	},"json");
}

//模糊搜索
function selectList(num,str){
	$.get("sousuo/sousuoStr?strNo="+num+"&strName="+str,function(Sdata){
		for(var i=0;i<Sdata.length;i++){
			
		}
	},"json");
}


//创建分页
function getProducts(pageNum) {
	$.get("sousuo/list?page=" + pageNum+"&rows=20",function(data) {
		$(".article1_3_ul").empty();
		var product = data.rows;
//		alert(product);
		for (var i = 0; i < product.length; i++) {
			if(product[i].cpic.split(";")!=null){
				$(".article1_3_ul").append('<li style="text-align: center;"><a href="page/show.jsp?nidParam='+product[i].cid+'">'+
	                	'<div style="text-align: center;width:width:100%;height:100%; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">'+
	                	'<img style="vertical-align:middle;overflow:hidden;width:100%;height:70%;" src="upload/'+product[i].cpic.split(";")[0]+'"/>'+
	                	'<p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">'+product[i].cname+'</p>'+
	                	'<div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span></div>'+
	                	'</div></a></li>');
			}else{
				$(".article1_3_ul").append('<li>'+
	                	'<div style="text-align: center;width:width:100%;height:100%; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">'+
	                	'<img style="vertical-align:middle;overflow:hidden;width:100%;height:60%;" src="upload/'+product[i].cpic+'"/>'+
	                	'<p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">'+product[i].cname+'</p>'+
	                	'<div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span></div>'+
	                	'</div></li>');
			}
			
		}
		$(".article1_4").empty();
		$(".article1_4").append("当前页数:["+ data.currPage+ "/"+ data.totalPage+ "]&nbsp;&nbsp; "
				+ "<a style='color:#999999' href='javascript:void(0)' onclick='getProducts(1)'>首页</a>&nbsp;&nbsp;"
				+ "<a style='color:#999999' href='javascript:void(0)' onclick='getProducts("+ (data.currPage - 1)+ ")'>上一页</a>&nbsp;&nbsp; "
				+ "<a style='color:#999999' href='javascript:void(0)' onclick='getProducts("+ (data.currPage + 1)+ ")'>下一页</a>&nbsp;&nbsp;"
				+ "<a style='color:#999999' href='javascript:void(0)' onclick='getProducts("+ data.totalPage + ")'>末页</a>&nbsp;&nbsp;");
	}, "json");
}

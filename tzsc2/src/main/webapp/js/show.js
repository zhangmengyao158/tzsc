 var nidParam = location.href.substring(location.href.indexOf("=")+1); //cid=49
 
//获取商品详细信息
 $.get("show/showDetail?cid="+nidParam,function(data){
	 var picMap = data.cpic.split(";")
	 $(".showPic").empty();
	 for(var i = 0; i < picMap.length ;i++){
//		 alert(picMap[i]);
		 $(".article_2_1_1").empty();
		 $(".showPic").append('<li ><img onclick="showPic(this)" class="pic'+i+'" style="display:block;width:100%;height:100%;" src="upload/'+picMap[i]+'"/></li>');
		 $(".article_2_1_1").append('<img id="iPic" style="height:100%;vertical-align:middle" src="upload/'+picMap[0]+'"/>');
	 }
	 if(data.cprice == null){
		 data.uqq =0;
	 }
	 if(data.uqq == null){
		 data.uqq ="无";
	 }
 	$(".article_2_2").empty();
 	$(".article_2_2").append('<ul>'+
         	'<li style="background:#2470d5;background:#06C;color:#FFF;font-weight:bold;font-size:22px;">'+data.cname+'</li>'+
         	'<li>类型: <label>'+data.ctname+'</label></li>'+
         	'<li>描述: <label>'+data.cdescribe+'</label></li>'+
         	'<li>价格: <label style="color:#36C;font-size:20px;font-weight:bold;">￥<i>'+data.cprice+'</i></label></li>'+
         	/*'<% name = null;if((name = session.getAttribute("loginUserName")) == null){ %>'+*/
         	/*'<li>电话: <label>登录后即可查看</label></li>'+
         	'<li>Q&nbsp;Q: <label>登录后即可查看</label></li>'+
         	'<% }else{ %>'+*/
         	'<li>电话: <label>'+data.cphone+'</label></li>'+
         	'<li>Q&nbsp;Q: <label>'+data.uqq+'</label></li>'+
         	/*'<% } %>'+*/
         	'<li>发布用户: <label>'+data.cusername+'</label></li></ul>');
 },"json");
 		
 //显示最大图片
function showPic(obj){
	var srcPic = $(obj).attr("src");
	$("#iPic").attr("src", srcPic);
}
// 
////取到当前商品的评论信息
		$.get("comment/listComments?comcid="+nidParam,function(data){
//		 	 alert(nidParam);
			var commentStr = "";
		 	 for(var i=0;i<data.length;i++){
//		 		 alert(data[i].comdate);
		 		if(data.length != 0 ){
//		 			var date = new Date(data[i].comdate );
		 			var date=new Date(data[i].comdate);
		 		    var setDate=date.getFullYear()+"-"+("0"+(date.getMonth()+1)).slice(-2)+"-"+("0"+date.getDate()).slice(-2);
   	 		    	 $(".cmt-list").append(' <div class="cmt-item clearfix"  data-nick="'+data[i].comusername+'" data-userid="0">'+
	 		        '<div class="cmt-cont-wrap">'+
	 		            '<p class="cmt-cont">'+
	  		               ' <span class="cmt-cont-text">'+data[i].comusername+':'+data[i].comcontent+' </span>'+
	 		           ' </p> '+
	 		            '<p class="cmt-date">'+ setDate +'</p>'+
	 		        '</div>'+
	 		    '</div>');	 
			  }
		 	 }  
		},"json");
		
		  
		
		
		function check(){
 			   var comcontent = document.getElementById("comcontentid").value;
// 			   alert(comcontent);
// 			  document.getElementById("contentid").value=comcontent;
 			   if(comcontent == "" ){
			    alert("评论信息不能为空");
			     return false;
			   }
 			   
 			  var params = $("#commentForm").serialize();  //serialize  序列表表格内容为字符串。
// 			  document.getElementById("commentForm").action="page/show.jsp?nidParam="+ nidParam +"&comcontent1="+comcontent;
//			  document.getElementById("commentForm").submit();
//			  var param = $(".Input_text").val();		
				$.post("comment/insertComments?comcid="+nidParam,params,function(data){
					if(data){
//						alert(params);
						alert(data.comcontent);
  	   	 		    		var date = new Date(data.comdate);
 	   	 		    	 $(".cmt-list").before(' <div class="cmt-item clearfix"  data-nick="'+data.comusername+'" data-userid="0">'+
 		 		        '<div class="cmt-cont-wrap">'+
 		 		            '<p class="cmt-cont">'+
 		  		               ' <span class="cmt-cont-text">'+data.comusername+':'+data.comcontent+' </span>'+
 		 		           ' </p> '+
 		 		            '<p class="cmt-date">'+ date+'</p>'+
 		 		        '</div>'+
 		 		    '</div>');
					}
				},"json");
 			  return false;
			  
			}
//		  document.getElementById("contentid").value;

 
			$(document).ready(function(e) {
			    ImgIputHandler.Init();
			});
			var ImgIputHandler={
				facePath:[
			    {faceName:"weixiao",facePath:"0_weixiao.gif"},
				{faceName:"piezui",facePath:"1_piezui.gif"},
				{faceName:"se",facePath:"2_se.gif"},
				{faceName:"fadai",facePath:"3_fadai.gif"},
				{faceName:"deyi",facePath:"4_deyi.gif"},
				{faceName:"liulei",facePath:"5_liulei.gif"},
				{faceName:"haixiu",facePath:"6_haixiu.gif"},
				{faceName:"bizui",facePath:"7_bizui.gif"},
				{faceName:"daku",facePath:"9_daku.gif"},
				{faceName:"ganga",facePath:"10_ganga.gif"},
				{faceName:"fanu",facePath:"11_fanu.gif"},
				{faceName:"tiaopi",facePath:"12_tiaopi.gif"},
				{faceName:"ziya",facePath:"13_ziya.gif"},
				{faceName:"jingya",facePath:"14_jingya.gif"},
				{faceName:"nanguo",facePath:"15_nanguo.gif"},
				{faceName:"ku",facePath:"16_ku.gif"},
				{faceName:"lenghan",facePath:"17_lenghan.gif"},
				{faceName:"zhuakuang",facePath:"18_zhuakuang.gif"},
				{faceName:"tu",facePath:"19_tu.gif"},
				{faceName:"touxiao",facePath:"20_touxiao.gif"},
			    {faceName:"keai",facePath:"21_keai.gif"},
				{faceName:"baiyan",facePath:"22_baiyan.gif"},
				{faceName:"aoman",facePath:"23_aoman.gif"},
				{faceName:"jie",facePath:"24_jie.gif"},
				{faceName:"kun",facePath:"25_kun.gif"},
				{faceName:"jingkong",facePath:"26_jingkong.gif"},
				{faceName:"liuhan",facePath:"27_liuhan.gif"},
				{faceName:"hanxiao",facePath:"28_hanxiao.gif"},
				{faceName:"dabin",facePath:"29_dabin.gif"},
				{faceName:"fendou",facePath:"30_fendou.gif"},
				{faceName:"zhouma",facePath:"31_zhouma.gif"},
				{faceName:"yiwen",facePath:"32_yiwen.gif"},
				{faceName:"xu",facePath:"33_xu.gif"},
				{faceName:"yun",facePath:"34_yun.gif"},
				{faceName:"zhemo",facePath:"35_zhemo.gif"},
				{faceName:"shuai",facePath:"36_shuai.gif"},
				{faceName:"kulou",facePath:"37_kulou.gif"},
				{faceName:"qiaoda",facePath:"38_qiaoda.gif"},
				{faceName:"zaijian",facePath:"39_zaijian.gif"},
				{faceName:"cahan",facePath:"40_cahan.gif"},
				{faceName:"koubi",facePath:"41_koubi.gif"},
				{faceName:"guzhang",facePath:"42_guzhang.gif"},
				{faceName:"qiuda",facePath:"43_qiuda.gif"},
				{faceName:"huaixiao",facePath:"44_huaixiao.gif"},
				{faceName:"zuoheng",facePath:"45_zuoheng.gif"},
				{faceName:"youheng",facePath:"46_youheng.gif"},
				{faceName:"haqian",facePath:"47_haqian.gif"},
				{faceName:"bishi",facePath:"48_bishi.gif"},
				{faceName:"weiqu",facePath:"49_weiqu.gif"},
				{faceName:"kuaiku",facePath:"50_kuaiku.gif"},
				{faceName:"yinxian",facePath:"51_yinxian.gif"},
				{faceName:"qinqin",facePath:"52_qinqin.gif"},
				{faceName:"xia",facePath:"53_xia.gif"},
				{faceName:"kelian",facePath:"54_kelian.gif"},
				{faceName:"caidao",facePath:"55_caidao.gif"},
				{faceName:"xigua",facePath:"56_xigua.gif"},
				{faceName:"piqiu",facePath:"57_piqiu.gif"},
				{faceName:"lanqiu",facePath:"58_lanqiu.gif"},
				{faceName:"pingpang",facePath:"59_pingpang.gif"},
				{faceName:"yongbao",facePath:"78_yongbao.gif"},
				{faceName:"woshou",facePath:"81_woshou.gif"},
				{faceName:"deyidexiao",facePath:"deyidexiao.gif"},
				{faceName:"tingyinyue",facePath:"tingyinyue.gif"}
				]
			,
			Init:function(){
				var isShowImg=false;
				$(".Input_text").focusout(function(){
					$(this).parent().css("border-color", "#cccccc");
		            $(this).parent().css("box-shadow", "none");
		            $(this).parent().css("-moz-box-shadow", "none");
		            $(this).parent().css("-webkit-box-shadow", "none");
				});
				$(".Input_text").focus(function(){
				$(this).parent().css("border-color", "rgba(19,105,172,.75)");
		        $(this).parent().css("box-shadow", "0 0 3px rgba(19,105,192,.5)");
		        $(this).parent().css("-moz-box-shadow", "0 0 3px rgba(241,39,232,.5)");
		        $(this).parent().css("-webkit-box-shadow", "0 0 3px rgba(19,105,252,3)");
				});
				$(".imgBtn").click(function(){
					if(isShowImg==false){
						isShowImg=true;
					    $(this).parent().prev().animate({marginTop:"-125px"},300);
						if($(".faceDiv").children().length==0){
							for(var i=0;i<ImgIputHandler.facePath.length;i++){
								$(".faceDiv").append("<img title=\""+ImgIputHandler.facePath[i].faceName+"\" src=\"face/"+ImgIputHandler.facePath[i].facePath+"\" />");
							}
							$(".faceDiv>img").click(function(){
								 
						 		isShowImg=false;
					            $(this).parent().animate({marginTop:"0px"},300);
								ImgIputHandler.insertAtCursor($(".Input_text")[0],"["+$(this).attr("title")+"]");
							});
						}
					}else{
						isShowImg=false;
					    $(this).parent().prev().animate({marginTop:"0px"},300);
					}
				});
//				$(".postBtn").click(function(){
////					alert($(".Input_text").val());
//					if($(".Input_text").val()== ""){
//						alert("评论内容不允许为空！！！");
//					}

//				});
			},
			insertAtCursor:function(myField, myValue) {
		    if (document.selection) {
		        myField.focus();
		        sel = document.selection.createRange();
		        sel.text = myValue;
		        sel.select();
		    } else if (myField.selectionStart || myField.selectionStart == "0") {
		        var startPos = myField.selectionStart;
		        var endPos = myField.selectionEnd;
		        var restoreTop = myField.scrollTop;
		        myField.value = myField.value.substring(0, startPos) + myValue + myField.value.substring(endPos, myField.value.length);
		        if (restoreTop > 0) {
		            myField.scrollTop = restoreTop;
		        }
		        myField.focus();
		        myField.selectionStart = startPos + myValue.length;
		        myField.selectionEnd = startPos + myValue.length;
		    } else {
		        myField.value += myValue;
		        myField.focus();
		    }
		}
		}
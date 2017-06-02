// JavaScript Document


//$.get("fabu/listSmenu",function(data){
//	
//},"json");


//发布商品
$("#fabuBtn").linkbutton({
	iconCls : "icon-ok",
	onClick : function() {
		$("#fabuForm").submit();
	}
});

// 保存\
$("#form111").form({
	url : "fabu/add",
	success : function(data) {
		alert(data);
		if (data.trim() == "true") {
			$.messager.alert('保存信息', '保存信息成功！！！', 'warning');
		} else {
			$.messager.show({
				title : '修改信息',
				msg : '修改失败!!!',
				timeout : 5000,
				showType : 'show',
				style : {
					top : document.body.scrollTop
							+ document.documentElement.scrollTop,
				}
			});
		}
	}
});













$("#addImg").click(function(){
	$("#addPic").click();
});
var strPic = "";
function chgPic(obj){
	for(var i=0;i<5;i++){
//		alert($(".img"+ i +"").attr("src")+"1");
		if($(".img"+ i +"").attr("src") ==null){
			$(".img"+ i +"").attr("src", window.URL.createObjectURL(obj.files[0]));
			$(".img"+ i +"").attr("style","width:100px;height:100px;margin:0px 2px 0px");
			strPic =strPic+q0 $(".img"+ i +"").attr("src") + ";";
			alert(strPic);
			break;
		}else{
			$("#addImgli").attr("visibility","hidden");
		}
	}
}
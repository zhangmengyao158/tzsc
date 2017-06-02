//更换头像
$("#picBtn").click(function(){
	$("#modifyPic").click();
});
//修改圖像
function chgPic(obj) {
	$("#ulogo").attr("src", window.URL.createObjectURL(obj.files[0]));
	$("#cPic").val($("#ulogo").attr("src"));
}



/* 异步获取基本资料 */
$.post("user/xinxi", function(data) {
	$("#user1").empty();
	$("#phone1").empty();
	$("#name1").empty();
	$("#sex1").empty();
	$("#qq1").empty();
	$("#email1").empty();
	$("#address1").empty();

	$("#user1").val(data.username);
	$("#phone1").val(data.uphone);
	$("#name1").val(data.uname);
	$("#sex1").val(data.usex);
	$("#qq1").val(data.uqq);
	$("#email1").val(data.uemail);
	$("#address1").val(data.uaddress);
	$("#udescribe1").val(data.udescribe);
	if(data.ulogo != null){
		$("#ulogo").attr("src", data.ulogo);
	}
//	$("#upassword").val(data.upassword);
}, "json");


$("#bntupdate").linkbutton({
	iconCls : "icon-ok",
	onClick : function() {
		$("#form111").submit();
	}
});

// 保存\
$("#form111").form(
{
	url : "user/modify1",
	success : function(data) {
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


$("#bntupdate1").linkbutton({
	iconCls : "icon-ok",
	onClick : function() {
		$("#form2").submit();
	}
});

//修改密码
$("#xinpwd").blur(function(){
    var xinpwd = $('#xinpwd').val();
    var upassword = $('#upassword').val();
    if (upassword == xinpwd) {
    	alert("您的新密码和旧密码不能一样！！！")
    }else{
    	$("#check").blur(function(){
    	    var xinpwd = $('#xinpwd').val();
    	    var check = $('#check').val();
    	    if (check != "" && check == xinpwd) {
    	    	$("#form2").form({
    				url : "user/modify2",
    				success : function(data) {
    					if (data.trim() == "true") {
    						location.replace("page/login.jsp");
    						$.messager.alert('修改密码', '修改密码成功,请从新登陆！！！', 'warning');
    					} else {
    						$.messager.show({
    							title : '修改密码',
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
    	    } else {
    	   	 alert("确认密码失败！！！")
    	    }
    	})
    } 
})


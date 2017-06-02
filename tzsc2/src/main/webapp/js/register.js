$('#btnLogin').linkbutton({    
    iconCls: 'icon-man',
    onClick : function(){
    	$("#loginForm").submit(); 
    }
});  

//验证码
function getCaptcha(){
	var phonenum=$("#uphone").val();
	$.post("user/captcha",{"uphone":phonenum},function (data){				
		$("#vaild").val(data);
	},"json")
	
	var times;
	var time=60;
	$("#getMsgBtn").addClass("disabled");
	$("#getMsgBtn").val("倒计时"+time+"秒");
	$("#getMsgBtn").attr("disabled","disabled");
	var _this=$("#getMsgBtn");

    times = setInterval(function () {
		time=time-1;
        _this.val("倒计时"+time+"秒");
		if(time==0){
			clearInterval(times);
			_this.removeClass("disabled");
			_this.removeAttr("disabled");
			_this.val('获取验证码');
		}
    }, 1000);
}

$("#uphone").blur(function(){
	var phoneNum = $("#uphone").val();
   if (phoneNum.length == 11) {
       var isPhone = /^1[3-9]\d{9}$/;
       if (isPhone.test(phoneNum)) {
           $("#getMsgBtn").removeAttr("disabled");//启用按钮
           $("#getMsgBtn").removeClass("disabled");
           $("#getMsgBtn").val('获取验证码');
//           alert('请点击获取验证码');
       } else {
    	   alert('您输入的电话号码不对哦,电话号为' + phoneNum);
       }
   } else {
	   $.messager.show({
   		title:'验证信息',
   		msg:'您输入的电话号码不对哦！！！',
   		timeout:5000,
   		showType:'slide',
   		style:{
   			top:document.body.scrollTop+document.documentElement.scrollTop,
   		}
   	});
       $("#getMsgBtn").attr("disabled", "disabled");//关闭按钮
   }
});

$("#yanzheng").blur(function(){
    var inputvaild = $('#yanzheng').val();
    var vaild = $('#vaild').val();
    if (inputvaild != "" && inputvaild == vaild) {
   	 /*alert("验证码正确,")*/
    } else {
   	/* alert("验证码输入不正确,")*/
    }
})

$("#username").blur(function(){
	var username = $("#username").val();
	var isPhone = /[\u4E00-\u9FA5]/;
	if (isPhone.test(username)) {
		  $.messager.show({
		   		title:'用戶名驗證',
		   		msg:'用戶名不能為中文！！！',
		   		timeout:5000,
		   		showType:'slide',
		   		style:{
		   			top:document.body.scrollTop+document.documentElement.scrollTop,
		   		}
		  });
	} 
})

$("#upassword1").blur(function(){
		var password1=$("#upassword").val();
		var password2=$("#upassword1").val();
		if(password2!=password1){
			alert("两次密码不统一,请重新输入");
		}
}) 

	$(function(){

$("#checkbox").change(function(){
	var check = $(this).is(":checked");
	if(check==true){
		/*alert("5");
		$("#btnLogin").removeAttr("disabled");//启用按钮
		$("#btnLogin").removeClass("disabled");*/
		$("#loginForm").form({
			url:"user/register",    
		    success:function(data){ 
//		    	alert("5545");
		        if(data.trim() == "true"){
		        	location.replace("page/xinxi.jsp");
		        }else{
		        	$.messager.show({
		        		title:'注册信息',
		        		msg:'注册失败, 您没有按照系统的要求！！！',
		        		timeout:5000,
		        		showType:'slide',
		        		style:{
		        			top:document.body.scrollTop+document.documentElement.scrollTop,
		        		}
		        	});
		        }
		    }    
		});
	}
	})
})
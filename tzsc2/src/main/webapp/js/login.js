$('#btnLogin').linkbutton({    
    iconCls: 'icon-man',
    onClick : function(){
    	$("#loginForm").submit(); 
    }
});  

$("#loginForm").form({
	url:"user/login",    
    success:function(data){    
        if(data.trim() == "true"){
        	location.replace("index.jsp");
        }else{
        	$.messager.show({
        		title:'登录信息',
        		msg:'登录失败, 号码与姓名不匹配,或者验证码错误！！！',
        		timeout:5000,
        		showType:'slide',
        		style:{
        			top:document.body.scrollTop+document.documentElement.scrollTop,
        		}
        	});
        }
    }    
});

$("#img1").click(function(){
	$(this).attr("src", "vcode.jpg?" + new  Date().getTime());
});

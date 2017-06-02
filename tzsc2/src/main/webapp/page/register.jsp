<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<base href="/tzsc2/">
<meta charset="utf-8">
<title>注册</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css"/>
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css"/>
<link type="text/css" rel="stylesheet" href="css/register.css">
</head>

<body>
<header>
	<div class="header1">
        <div class="header1_1">
        	<ul>
                <li>你好！XXX欢迎您！</li>
            </ul>
            <ul>
                <li><a href="#">网站导航</a></li>
                <li><a href="#">帮助中心</a></li>
                <!-- <li><span></span><a href="#">个人应用</a>
                	<ul class="hidden1">
                    	<li><a href="#">个人中心</a></li>
                        <li><a href="#">我的订单</a></li>
                        <li style="cursor:pointer">注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</li>
                    </ul>
                </li> -->
                <li>HI~请[<a href="page/login.jsp">登录</a>]&nbsp;&nbsp;<a href="#" style="color:#FD843D">[免费注册]</a></li>
            </ul>
        </div>
    
    </div>
    
    <div class="header2">
    	<div class="header2_1">
        	<a href="index.jsp"><img src="images/logo.png"/></a>
            <!--<p><input placeholder="请输入关键词..."/><a href="#">搜索</a></p>-->
        </div>
    </div>
</header>

<article>
    <div class="article1_1">
     <form id="loginForm" method="post">
    	<div class="article2_1">
	        <ul>
	           <li><span>*</span>&nbsp;用&nbsp;户&nbsp;名：<input name="username" id="username" placeholder="请输入4~20位英文、数字组合" required="required" onBlur="checkUname(this)"/></li>
	           <li><span>*</span>登录密码：<input name="upassword" id="upassword" placeholder="请输入6~20位英文、数字组合" required="required"/></li>
	           <li><span>*</span>确认密码：<input placeholder="请输入6~20位英文、数字组合" id="upassword1" required="required"/></li>
	           <li><span>*</span>手机号码：<input name="uphone" id="uphone" placeholder="请输入11位手机号码" required="required"/></li>
	           <li><span>*</span>&nbsp;验&nbsp;证&nbsp;码：<input style="width:80px;" id="yanzheng" placeholder="请输入验证码" required="required"/><input style="margin-left:10px;width:70px;"  type="button" id="getMsgBtn" onclick="getCaptcha()" value="获取验证码"/><input id="vaild" name="vaild" type="hidden"></li></li>
	           <li style="position:relative;"><input style="width:0px;margin:0px 10px 0px 25px;" id="checkbox" type="checkbox"/><span style="position:absolute;color:#999999;font-size:12px;margin-top:2px;">我已阅读并同意该网站协议</span></li>
	           <li style="position:relative;"><input style="disabled:true" class="register" id="btnLogin" type="button" value="立即注册"/><span>已有账号？<a href="page/login.jsp">登录</a></span></li>
	        </ul>
            <img style="margin:90px 70px 0px 0px;float:right;" src="images/register1.png"/>
        </div>
     </form>
    </div>
</article>

<footer>
	<div class="footer1_1">
        <div class="footer2_1">
            <ul>
                <li><img src="images/footer1.png"/></li>
                <li>
                	<ul>
                    	<li class="zi1">关于我们</li>
                        <li><a class="zi2" href="#">公司简介</a></li>
                        <li><a class="zi2" href="#">联系方式</a></li>
                    </ul>
                </li>
                <li>
                	<ul>
                    	<li class="zi1">交易保障</li>
                        <li><a class="zi2" href="#">网站协议</a></li>
                        <li><a class="zi2" href="#">支付方式</a></li>
                    </ul>
                </li>
                <li>
                	<ul>
                    	<li class="zi1">关注我们</li>
                        <li><a class="zi2" href="#">用户意见反馈</a></li>
                        <li><a class="zi2" href="#">分享给好友</a></li>
                    </ul>
                </li>
                <li>
                	<ul>
                    	<li class="zi1">联系我们</li>
                        <li style="color:#E75E08;font-weight:bold;">150-0895-9836</li>
                    </ul>
                </li>
            </ul>
    	</div>
        <div class="footer2_2">
        	<ul>
            	<li><a href="#">首页</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">平台公告</a></li>
                <li><a href="#">支付方式</a></li>
                <li><a href="#">联系方式</a></li>
                <li><a href="#">客服中心</a></li>
                <li><a href="#">联系合作</a></li>
                <li><a href="#">网站导航</a></li>
                <li><a href="#">公司资质</a></li>
            </ul>
            <span>Copyright 2017 lsy 版权所有</span>
        </div>
    </div>
</footer>

<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/register.js"></script>
	
</body>
</html>

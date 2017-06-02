<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<base href="/tzsc2/">
<meta charset="utf-8">
<title>登录</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css"/>
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css"/>
<link type="text/css" rel="stylesheet" href="css/login.css">
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
                <li>HI~请[<a href="#">登录</a>]&nbsp;&nbsp;<a href="page/register.jsp" style="color:#FD843D">[免费注册]</a></li>
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
    	<div class="article2_1">
        	<ul>
           		<li><img src="images/login1.png"></li>
                <li>
	                <form id="loginForm" method="post">
	                	<ul class="article3_ul">
	                    	<li><span>用户登录</span></li>
	                        <li><span>用户名：<input id="username" name="username" placeholder="用户名/手机号" required="required" value="${username }" /></span></li>
	                        <li><span>密&nbsp;码：<input  id="upassword" name="upassword" placeholder="密码长度应为6~20位" required="required" value="${upassword }"/></span></li>
	                        <li><span>验证码：<input id="vcode" name="vcode" placeholder="请写验证码" required="required"/><img id="img1" src="vcode.jpg" title="看不清，换一张"/></span></li>
	                        <li><p><input style="margin-left:20px;" type="checkbox" onclick="remember()" id="remFlag" name="remFlag" value="1"/><span>记住密码</span></p><p><input style="margin-left:-20px;" type="checkbox"/><span>自动登录</span></p></li>
	                        <li><input id="btnLogin" type="button" value="立即登录"/></li>
	                        <li><span><a href="#">找回密码</a><a href="page/register.jsp">注册新账号</a></span></li>
                    	</ul>
                    </form>
                </li>
            </ul>
        </div>
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
<script type="text/javascript" src="js/jizhu.js"></script>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</body>
</html>

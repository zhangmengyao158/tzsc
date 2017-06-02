<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<base href="/tzsc2/">
<meta charset="utf-8">
<title>详情页面</title>
<link type="text/css" rel="stylesheet" href="css/detail.css">
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
                <%
					Object name = null;
					if((name = session.getAttribute("loginUserName")) == null){
						%>
						<!-- <li><span></span><a href="#">个人应用</a>
		                	<ul class="hidden1">
		                    	<li><a href="#">个人中心</a></li>
		                        <li><a href="#">我的订单</a></li>
		                        <li style="cursor:pointer">注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</li>
		                    </ul>
		                </li> -->
						<li class="userManage">HI~请[<a href="page/login.jsp">登录</a>]&nbsp;&nbsp;<a href="page/register.jsp"
								style="color: #FD843D">[免费注册]</a></li>
						<%
					}else{
						%>
						<li style="width:80px; text-align: center;"><span></span><a style="color:#F63;" href="#"><%=name %></a>
		                	<ul class="hidden1">
		                    	<li><a href="page/xinxi.jsp">个人中心</a></li>
		                        <li><a href="#">我的订单</a></li>
		                        <li style="cursor:pointer">注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</li>
		                    </ul>
		                </li>
						<%
					}
				%>
            </ul>
        </div>
    
    </div>
    
    <div class="header2">
    	<div class="header2_1">
        	<a href="index.jsp"><img src="images/logo.png"/></a>
            <p><input placeholder="请输入关键词..."/><a href="#">搜索</a></p>
        </div>
    </div>
</header>

<article>
	<div class="article1_1">
    	<span>首页</span><span>搜索</span>
    </div>
    
    <div class="article1_2">
    	<ul class="ul1_1 _ul1">
        	<li style="font-weight:bold;">全部类型:</span></li>
            <li><a onclick="menuAClick()" class="menuA0" href="sousuo/souMenu?souA=0&souB=1&smname=1">全部</a></li>
        	<li><a onclick="menuAClick()" class="menuA1" href="sousuo/souMenu?souA=1&souB=1&smname=1">闲置数码</a></li>
            <li><a class="menuA2" href="sousuo/souMenu?souA=2&souB=1&smname=1">学习用品</a></li>
            <li><a class="menuA3" href="sousuo/souMenu?souA=3&souB=1&smname=1">影音家电</a></li>
            <li><a class="menuA4" href="sousuo/souMenu?souA=4&souB=1&smname=1">鞋服配饰</a></li>
            <li><a class="menuA5" href="sousuo/souMenu?souA=5&souB=1&smname=1">珠宝收藏</a></li>
            <li><a class="menuA6" href="sousuo/souMenu?souA=6&souB=1&smname=1">家具日用</a></li>
        </ul>
        <ul class="ul1_1 _ul2">
        	<li style="font-weight:bold;">产品类型:</li>
        	<li><a class="menuB0" href="sousuo/souMenu?souA=0&souB=1&smname=1">全部</a></li>
            <!-- <li><a href="#">全部</li>
        	<li><a href="#">手机</a></li>
            <li><a href="#">电脑</a></li>
            <li><a href="#">邮票</a></li>
            <li><a href="#">冰箱</a></li> -->
        </ul>
        <ul class="ul1_1 _ul3">
        	<li style="font-weight:bold;">产品名称:</li>
        	<li><a class="menuC0" href="sousuo/souMenu?souA=0&souB=1&smname=1">全部</a></li>
        	<!-- <li><a href="#">最新</a></li>
            <li><a href="#">最热</a></li> -->
        </ul>
    </div>
    
    <div class="article1_3">
    	<ul class="article1_3_ul">
        	<li>
        		<div style="text-align: center;width:width:100%;height:100%; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">
                	<img style="vertical-align:middle;overflow:hidden;height:160px;" src="upload/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/>
                    <p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span></div>
	            </div>
        	</li>
            <li>
        		<div style="text-align: center;width:width:100%;height:100%; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">
                	<img style="vertical-align:middle;overflow:hidden;height:160px;" src="upload/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/>
                    <p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span></div>
	            </div>
        	</li>
        	<li>
        		<div style="text-align: center;width:width:100%;height:100%; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">
                	<img style="vertical-align:middle;overflow:hidden;height:160px;" src="upload/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/>
                    <p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span></div>
	            </div>
        	</li>
        	<li>
        		<div style="text-align: center;width:width:100%;height:100%; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">
                	<img style="vertical-align:middle;overflow:hidden;height:160px;" src="upload/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/>
                    <p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span></div>
	            </div>
        	</li>
        	<li>
        		<div style="text-align: center;width:width:100%;height:100%; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">
                	<img style="vertical-align:middle;overflow:hidden;height:160px;" src="upload/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/>
                    <p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span></div>
	            </div>
        	</li>
        	<li>
        		<div style="text-align: center;width:width:100%;height:100%; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">
                	<img style="vertical-align:middle;overflow:hidden;height:160px;" src="upload/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/>
                    <p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span></div>
	            </div>
        	</li>
        </ul>
    </div>
    
    <div class="article1_4">
    	<span><a href="#">上一页</a></span>
        <ul>
        	<li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
        </ul>	
        <span><a href="#">下一页</a></span>
        <span><input value="1"/>跳转</span>
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

	
	<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="js/detail.js"></script>
</body>
</html>

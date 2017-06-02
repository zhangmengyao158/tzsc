<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Object name1 = null;
	if((name1 = session.getAttribute("loginUserName")) == null){
		response.sendRedirect("index.jsp");
	}
%>
<!doctype html>
<html>
<head>
<base href="/tzsc2/">
<meta charset="utf-8">
<title>详情页面</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css"/>
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css"/>
<link type="text/css" rel="stylesheet" href="css/xinxi.css">
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
    <!-- logo与搜索部分 -->
    <div class="header2">
    	<div class="header2_1">
        	<a href="index.jsp"><img src="images/logo.png"/></a>
            <!--<p><input placeholder="请输入关键词..."/><a href="#">搜索</a></p>-->
        </div>
    </div>
</header>

<article>
	<div class="article1_1">
    	<ul class="ul1_1">
        	<li><span></span></li>
            <li><a href="#">首页</a></li>
            <li>账号资料</li>
            <li></li>
        </ul>
    </div>
    
    <div class="article1_2">
    	<!-- 左侧部分： 头像以及功能选项 -->
    	<div class="article1_2_1">
        	<!-- 头像部分 -->
            <div class="userPic">
            	<!-- <input type="file" name="picData" onchange="chgPic(this)"/> -->
            	<img src="images/footer1.png" id="ulogo"/>
                <span ><a id="picBtn" href="javascript:void(0)">更改头像</a><!-- <input id="chaPic" type="file" value="更换头像"/> --></span>
            </div>
            <!--  功能选项部分 -->
            <div class="userMenu">
            	<ul class="ul2_1">
                	<li>账号设置</li>
                    <li class="huise1" onclick="show(1)"><a href="javascript:void(0)">基本资料</a></li>
                    <li class="huise2" onclick="show(2)"><a href="javascript:void(0)">修改密码</a></li>
                </ul>
            </div>
      	</div>
        <!-- 右侧部分： 详细信息 -->
        <div class="article1_2_2">
        	<span>基本资料</span>
        	<form class="form1" id="form111" method="post" enctype="multipart/form-data">
            	<ul>
                	<li>用&nbsp;户&nbsp;&nbsp;名：<input id="user1" name="username"/></li>
                   	<li>手机号码：<input id="phone1" name="uphone"/></li>
                    <li>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input id="name1" name="uname"/></li>
                    <li>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<input id="sex1" name="usex"/></li>
                    <li>Q&nbsp;Q号码：<input id="qq1" name="uqq"/></li>
                    <li>电子邮箱：<input id="email1" name="uemail"/></li>
                    <li>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<input name="uaddress" id="address1"/></li>
                    <li>个人简介：<textarea id="udescribe1" name="udescribe" placeholder="這個人很懶，什麼都沒有留下。。。" id="2"></textarea>
                    </li>
                    <li><input name="ulogo" id="modifyPic" type="file" onchange="chgPic(this)" style="visibility:hidden"/>
                    <a style="padding:5px 25px;color:#FFF;background:#2470d5;display:inline-block;" id="bntupdate" href="javascript:void(0)">保存</a>&nbsp;&nbsp;
                    </li>
                    
                </ul>
            </form>
            <form class="form2" id="form2">
            	<ul>
                	<li>原&nbsp;密&nbsp;&nbsp;码：<input type="password" id="upassword"/></li>
                   	<li>新&nbsp;密&nbsp;&nbsp;码：<input type="password" name="upassword" id="xinpwd"/></li>
                    <li>确认密码：<input type="password" id="check"/></li>
                    <li><input type="button" id="bntupdate1"  value="保存"/></li>
                </ul>
            </form>
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

<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/xinxi.js"></script>
<script type="text/javascript">
var picInfo_dome = document.getElementById("form111");
var picInfo_dome1 = document.getElementById("form2");
function show(num) {
	if (num == 1) {
		picInfo_dome.style.display = "block";
		picInfo_dome1.style.display = "none";
	} else {
		picInfo_dome.style.display = "none";
		picInfo_dome1.style.display = "block";
	}
}
</script>
</body>
</html>
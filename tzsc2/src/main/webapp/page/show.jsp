<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<base href="/tzsc2/">
<meta charset="utf-8">
<title>主页</title>
<link type="text/css" rel="stylesheet" href="css/show.css">
 
<style type="text/css">
.Main {
	width: 500px;
	height: 500px;
	margin: 0 auto;
	margin-top: 10px;
}
.Input_Box {
	width: 495px;
	height: 160px;
	border: 1px solid #ccc;
	transition: border linear .2s, box-shadow linear .5s;
	-moz-transition: border linear .2s, -moz-box-shadow linear .5s;
	-webkit-transition: border linear .2s, -webkit-box-shadow linear .5s;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	background-color: #fff;
	overflow: hidden;
	position: absolute;
	-moz-box-shadow: 0 0 5px #ccc;
	-webkit-box-shadow: 0 0 5px #ccc;
	box-shadow: 0 0 5px #ccc;
}
.Input_Box>textarea {
	width: 485px;
	height: 111px;
	padding: 5px;
	outline: none;
	border: 0px solid #fff;
	resize: none;
	font: 13px "微软雅黑", Arial, Helvetica, sans-serif;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}
.Input_Foot {
	width: 100%;
	height: 35px;
	border-top: 1px solid #ccc;
	background-color: #fff;
	-moz-border-radius: 0 0 5px 5px;
	-webkit-border-radius: 0 0 5px 5px;
	border-radius: 0 0 5px 5px;
	position: absolute;
}
.imgBtn {
	float: left;
	margin-top: 8px;
	margin-left: 10px;
	background-image: url(imgs.png);
	background-repeat: no-repeat;
	background-position: 0 -13px;
	height: 18px;
	width: 20px;
	cursor: pointer
}
.imgBtn:active {
	margin-top: 9px;
}
.imgBtn:hover {
	background-position: 0 -31px
}
.postBtn {
	float: right;
	font: 13px "微软雅黑", Arial, Helvetica, sans-serif;
	color: #808080;
	padding: 9px 20px 7px 20px;
	border-left: 1px solid #ccc;
	cursor: pointer;
	-moz-border-radius: 0 0 5px 0;
	-webkit-border-radius: 0 0 5px 0;
	border-radius: 0 0 5px 0;
}
.postBtn:hover {
	color: #333;
	background-color: #efefef;
}
.postBtn:active {
	padding: 10px 20px 6px 20px;
}
.faceDiv {
	width: 500px;
	height: 120px;
	border-top: 1px solid #ccc;
	position: absolute;
	background-color: #fff;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
}
.faceDiv>img {
	border: 1px solid #ccc;
	float: left;
	margin-left: -1px;
	margin-top: -1px;
	position: relative;
	width: 24px;
	height: 24px;
	padding: 3px 3px 3px 3px;
	cursor: pointer;
}
.faceDiv>img:hover {
	background-color: #efefef;
}
.faceDiv>img:active {
	padding: 4px 3px 2px 3px;
}
</style>
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
				<p>
					<input placeholder="请输入关键词..." /><a href="#">搜索</a>
				</p>
			</div>
		</div>
	</header>

	<article>
    	<div class="article_1">
        
        </div>
        <!-- 中间主要部分 -->
        <div class="article_2">
        	<!-- 左侧图片展示模块 -->
        	<div class="article_2_1">
            	<div class="article_2_1_1">
                	<!-- <img id="iPic" style="height:100%;vertical-align:middle" src="images/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/> -->
                </div>
                <div class="article_2_1_2">
                	<ul class="showPic">
                    	<!-- <li><img class="pic0" style="display:block;width:100%;height:100%;" src="images/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/></li>
                        <li><img class="pic1" style="display:none;width:100%;" src="images/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/></li>
                        <li><img class="pic2" style="display:none;width:100%;" src="images/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/></li>
                        <li><img class="pic3" style="display:none;width:100%;" src="images/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/></li>
                        <li><img class="pic4" style="display:none;width:100%; vertical-align:middle" src="images/TB1WLyjNVXXXXclXXXXGYteFXXX_728x728.jpg"/></li> -->
                    </ul>
                </div>
            </div>
            <!-- 右侧商品详情展示 -->
            <div style="" class="article_2_2">
            	<ul>
                	<li style="background:#2470d5;background:#06C;color:#FFF;font-weight:bold;font-size:22px;">芝奇 km780 rgb 机械键盘 茶轴</li>
                    <li>类型: <label>键盘</label></li>
                    <li>描述: <label>芝奇km780rgb，茶轴。闲置了好久，免争议九新。非质量问题不退(不以成色，手感，不喜欢为理由等等非质量问题退货)不刀，顺丰包邮，偏远地区除外。</label></li>
                    <li>价格: <label style="color:#36C;font-size:20px;font-weight:bold;">￥<i>300</i></label></li>
                    <li>电话: <label>15386003052</label></li>
                    <li>Q&nbsp;Q: <label>1451932421</label></li>
                    <li>发布用户: <label>LSY</label></li>
                </ul>
            </div>
        
        </div>
        <div class="article_3">
        	<div style="width:100%;height:40px;border-bottom:2px solid #999999; overflow:hidden;">
            	<span style="padding-top:5px;text-align:center;display:inline-block;width:80px;height:100%;border:2px solid #999999;color:#666666;font-size:18px;font-weight:bold;">留言</span>
            </div>
        	<div class="article_3_1">
            	<!-- 评论用户 -->
            
            	<div class="cmt-list-wrap">
	            	<div class="cmt-list">
	
	                 </div>
	                 ${loginUserName}
	              <form onsubmit="return check()" id="commentForm" >
                   <div id="Demo" style="text-align:center;">
					  <div class="Main">
					    <div class="Input_Box">
					    <table width="100%" align="center">

					      <tr><td><textarea  class="Input_text" name="comcontent"  id="comcontentid"></textarea></td></tr>
					    
					      <div class="faceDiv"> </div>
					      <!--  <input type="hidden" id="contentid" name="comcontent">-->
					      <div class="Input_Foot"> <a class="imgBtn" href="javascript:void(0);"></a>
					      <!-- <a class="postBtn" onclick = "checkComments()" >确定</a>  -->
					      <tr>
				              <td><input class="postBtn" name="submit" value="发  表" type="submit" /></td>
				          </tr></div>
				        </table>
					    </div>
					  </div>
					</div>
                   </form>        
			     </div>  
               </div>
        </div>
   </article>

	<footer>
		<div class="footer1_1">
			<div class="footer2_1">
				<ul>
					<li><img src="images/footer1.png" /></li>
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
							<li style="color: #E75E08; font-weight: bold;">150-0895-9836</li>
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
	<script type="text/javascript" src="js/show.js"></script>
</body>
</html>

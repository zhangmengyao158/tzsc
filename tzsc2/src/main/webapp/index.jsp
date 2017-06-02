<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/tzsc2/">
<meta charset="utf-8">
<title>主页</title>
<link type="text/css" rel="stylesheet" href="css/index.css">
<script type="text/javascript">
</script>
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
					<input id="findVal" placeholder="请输入关键词..." /><a onclick="find()" href="javascript:void(0)">搜索</a>
				</p>
			</div>
		</div>
	</header>

	<article>
		<div class="article1_1">
			<ul class="">
				<li><img style="margin-bottom: -5px; margin-right: 20px;"
					src="images/index1.png" /><span style="display: inline-block;">热门交易分类</span>
					<ul class="_tarblock">
						<li>闲置数码
							<div class="_tar _block" style="">
								<dl id="">
									<!-- <dt>大型电器1
	                            	<dd><a href="#">冰箱1</a></dd>
	                                <dd><a href="#">冰箱1</a></dd>
	                                <dd><a href="#">冰箱1</a></dd>
	                                <dd><a href="#">冰箱1</a></dd>
	                                <dd><a href="#">冰箱1</a></dd>
	                                <dd><a href="#">冰箱1</a></dd>
	                                <dd><a href="#">冰箱1</a></dd>
	                                <dd><a href="#">冰箱1</a></dd>
	                                <dd><a href="#">冰箱1</a></dd>
	                             </dt>
                                 -->
								</dl>
							</div>
						</li>
						<li>学习用品
							<div class="_tar _block" style="">
								<dl>
								</dl>
							</div>
						</li>
						<li>影音家电
							<div class="_tar _block" style="">
								<dl>
								</dl>
							</div>
						</li>
						<li>鞋服配饰
							<div class="_tar _block" style="">
								<dl>
								</dl>
							</div>
						</li>
						<li>珠宝收藏
							<div class="_tar _block" style="">
								<dl>
								</dl>
							</div>
						</li>
						<li>家具日用
							<div class="_tar _block" style="">
								<dl>
								</dl>
							</div>
						</li>
					</ul></li>
				<li><a href="#">首页</a></li>
				<%
					name = null;
					if((name = session.getAttribute("loginUserName")) == null){
						%>
						<li><a href="page/login.jsp">我要出售</a></li>
				
						<%
					}else{
						%>
						<li><a href="page/fabu.jsp">我要出售</a></li>
						<%
					}
				%>
			</ul>

			<!-- 隐藏块 -->
		</div>
		<!-- 首页广告图片 -->
		<div class="article1_2">
			<img id="chaPic" src="images/banner3.jpg" />
			<!-- <div class="chaPic_span"><span></span><span></span><span></span><span></span></div> -->
		</div>
		<!-- 下方内容 -->
		<div id="immp">
			<div class="article1_4" style="">
				<div class="">
					<h4 style="margin:5px 0px 10px 20px; display:block">快讯</h4>
					<ul style="display:block;">
						<li><i class="green"></i> <a style="color:#999999;font-size:12px;" href="#">谷歌Pixel XL外观被曝光<img
								style="margin-top:50px" src="images/110934e66dd0072694.jpg" alt="" width="192"
								height="110"></a></li>
						<li style="margin-top:"><i class="green"></i><a style="color:#999999;font-size:12px;" style="font-size:12px;" href="#">苹果iOS10正式版推送前瞻：<img
								style="margin-top:50px" src="images/110934e66dd0072694.jpg" alt="" width="192"
								height="110"></a></li>
						<li><i></i><a style="width:100%;height:20px;font-size:12px;display:block" href="#">苹果发布iPhone7和iPh</a></li>
						<li><i></i><a style="color:#999999;font-size:12px;" href="#">扣丁学堂web前端开发培训：解</a></li>
						<li><i></i><a style="color:#999999;font-size:12px;" href="#">浅谈关于php开发框架的九个优</a></li>
					</ul>
				</div>
			</div>

			<div class="article1_3">
				<div style="border: 1px solid #2470d5; margin: 10px 0px 5px;"
					id="titleId" class="_title">
					<span>热门点击</span><a href="#">更多>></a></span>
				</div>
				<div class="article1_3_1">
					<!-- <div style="width:230px;height:230px; margin:20px 10px 0px;float:left;border:1px solid #F60;">
            	<form>
                	<img style="width:100%;" src="images/171556ce44fa144231.jpg"/>
                    <p style="height:47px;margin-left:10px;font-size:14px;color:#F60;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="margin-left:10px;color:#999999;">66</span>人查看<input class="_canyu" style="" type="button" value="立即参与"/></div>
                </form>
            </div> -->
					<!-- <div style="text-align: center;width:175px;height:472px; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">
            	<form>
                	<img style="vertical-align:middle;overflow:hidden;height:160px;" src="upload/TB1MKJVPFXXXXcmXXXXreZZ7VXX_728x728.jpg"/>
                    <p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span><input class="_canyu" style="" type="button" value="立即参与"/></div>
                </form>
            </div> -->


			<!-- 
            <div style="text-align: center;width:175px;height:235px; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">
            	<form>
                	<img style="vertical-align:middle;overflow:hidden;height:160px;" src="upload/TB1MKJVPFXXXXcmXXXXreZZ7VXX_728x728.jpg"/>
                    <p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span><input class="_canyu" style="" type="button" value="立即参与"/></div>
                </form>
            </div> -->

				</div>
				<!-- <div style="margin-top:180px;width:100%;height:100px;background:red"></div> -->
				<div
					style="width: 95%; height: 30px; margin-top: 220px; border-bottom: 3px solid #2470d5; font-size: 20px;"
					class="_title">
					<span style="color: #666666; font-weight: bold;">最新发布</span><a
						href="#">更多>></a>
				</div>
				<div class="article1_3_2">

					<!-- <div style="width:230px;height:230px; margin:20px 10px 0px;float:left;border:1px solid #F60;">
            	<form>
                	<img style="width:100%;" src="images/171556ce44fa144231.jpg"/>
                    <p style="height:47px;margin-left:10px;font-size:14px;color:#F60;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="margin-left:10px;color:#999999;">66</span>人查看<input class="_canyu" style="" type="button" value="立即参与"/></div>
                </form>
            </div> -->
					<!-- <div style="text-align: center;width:175px;height:235px; margin:0px;float:left;border-left:none !important;border:1px solid #CCCCCC;">
            	<form>
                	<img style="vertical-align:middle;overflow:hidden;height:160px;" src="upload/TB1MKJVPFXXXXcmXXXXreZZ7VXX_728x728.jpg"/>
                    <p style="height:47px;margin-left:10px;margin-top:5px;font-size:11.5px;color:#666666;">免费赠送一个闲置的手机免费赠送一个闲置的手机</p>
                    <div style="font-size:11px;"><span style="float:left;margin-left:10px;color:#999999;">66人查看</span><input class="_canyu" style="" type="button" value="立即参与"/></div>
                </form>
            </div> -->
					<div class="article1_5" style="">
						<div>热搜排行</div>
						<div>
							<img src="upload/" />
						</div>
					</div>
				</div>

				<!--<div class="_title"><span>热门试用</span><a href="#">更多>></a></div>-->
				<!-- <div class="article1_3_3">
            
        </div>
        <!--<div class="_title"><span>热门试用</span><a href="#">更多>></a></div>-->
        <div class="article1_3_3">
        	<!-- <div class="_long" style="">
            	<img style="width:100%;" src="images/171556ce44fa144231.jpg"/>
                <dl class="div1">
                	<dt>
                    	免费赠送不用的手机
                    </dt>
                    <dd>
                    	刚灌灌灌灌灌过过过过过过过过 过过过过过过过过过过过过 过过过过过过过过过过
                    </dd>
                </dl>
               </div> -->
            
        </div>

			</div>

		</div>
		
		<div id="rightButton" style="right: 0px;">
		    <ul id="right_ul">  
		     <li id="right_kf" onclick="openChatWindow('');"></li>
		        <!--<a href="http://www.shanshan360.com/consultation" target="_blank"><li id="right_kf" ></li></a>-->
		         <li id="right_weixin" class="right_ico"></li>
		         <li id="right_tip" style="margin-top: 90px; top: -10px; display: none;" class="png">
		            <div class="con ovf  ">
		                <div class="fl arr" style="top:80px"><div class="fl arr_i"></div></div>
		                 <ul>
		                    <li>
		                    <p>
		                    <a href="#" target="_brank"><img style="width: 118px; height: 118px;" src="images/syewmsz_0.jpg"></a></p><p class="f14 fyh tec">
		                    <a href="#" target="_brank"><font color="#5B5B5B">山山商城微信</font></a>
		                    </p>
		                    </li>
		                </ul>
		            </div>
		        </li>
		        <li id="right_sc" onclick="addBookmark()"></li>
		        <li><div id="backToTop" style="display: block;"><a href="#" onfocus="this.blur();" class="backToTop_a png"></a></div></li>
		    </ul>
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
	<script type="text/javascript" src="js/index.js"></script>
</body>
</html>

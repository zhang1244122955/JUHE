<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/order.css" />
		<link rel="stylesheet" type="text/css" href="css/car.css" />
		<link rel="bookmark" type="image/x-icon" href="img/brower.png" />
		<link rel="shortcut icon" href="img/brower.png">
		<link rel="icon" href="img/brower.png">
		<script src="js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/car.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/order.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<!--container start-->
		<div id="container">
			<!--header start-->
			<div id="header">
				<!--logo start-->
				<a href="new_file.html">
					<div id="logo"></div>
				</a>
				<!--logo end-->
				<!--search start-->
				<div id="searchbox">
					<div id="search">
					</div>
				</div>
				<!--search end-->
				<!--help start-->
				<div class="help">
					<ul id="ul_nav">
						<li class="nav_li">
							<a href="">${username}</a><img src="img/top-arrow.png" alt="" />
							<div class="nav_li_son">
								<a href="new_file.html">退出登录</a>
							</div>
						</li>
						<li class="nav_li">
							<a href="">常见问题</a>
						</li>
						<li class="nav_li">
							<a href="">关注聚合</a><img src="img/top-arrow.png" alt="" />
							<div class="nav_li_son2"><img src="img/code.png" alt="" /></div>
						</li>
						<li class="nav_li">
							<a href="">联系我们</a>
						</li>
					</ul>
				</div>
				<!--help end-->
			</div>
			<!--header end-->
			<!--content start-->
			<div id="content">
				<!-- content left nav start-->
				<div class="content_nav">
					<div class="content_nav_1">
						<div class="content_nav_1_img"><img src="img/left-nav-1.png" alt="" /></div>
						<span class="content_nav_1_font"><a href="">&nbsp;&nbsp;我的聚合</a></span>
					</div>
					<div class="sideMenu">
						<ul>
							<li class="nLi on">
								<h3><img src="img/left-nav-2.png"/>&nbsp;&nbsp;数据中心<img src="img/cararrow.png" alt="" /></h3>
								<ul class="sub">
									<li>
										<a href="">我的数据</a>
									</li>
									<li>
										<a href="">我的收藏</a>
									</li>
								</ul>
							</li>
							<li class="nLi">
								<h3><img src="img/left-nav-3.png"/>&nbsp;&nbsp;安全中心<img src="img/cararrow.png" alt="" /></h3>
								<ul class="sub">
									<li>
										<a href="">IP白名单</a>
									</li>
									<li>
										<a href="">二次验证</a>
									</li>
									<li>
										<a href="">密码修改</a>
									</li>
									<li>
										<a href="">预警号码</a>
									</li>
								</ul>
							</li>
							<li class="nLi1">
								<h3><img src="img/left-nav-4.png"/>&nbsp;&nbsp;我的余额</h3>
							</li>
							<li class="nLi1">
								<h3><img src="img/left-nav-5.png"/><a href="car.html">&nbsp;&nbsp;我的购物车</a></h3>
							</li>
							<li class="nLi1">
								<h3><img src="img/left-nav-6.png"/><a href="DingDan.html">&nbsp;&nbsp;我的订单</a></h3>
							</li>
							<li class="nLi">
								<h3><img src="img/left-nav-7.png"/>&nbsp;&nbsp;我的活动<img src="img/cararrow.png" alt="" /></h3>
								<ul class="sub">
									<li>
										<a href="">短信发送</a>
									</li>
									<li>
										<a href="">金融通信</a>
									</li>
								</ul>
							</li>
							<li class="nLi">
								<h3><img src="img/left-nav-8.png"/>&nbsp;&nbsp;用户中心<img src="img/cararrow.png" alt="" /></h3>
								<ul class="sub">
									<li>
										<a href="">账户信息</a>
									</li>
									<li>
										<a href="">实名认证</a>
									</li>
									<li>
										<a href="">会员特权</a>
									</li>
									<li>
										<a href="">聚合币</a>
									</li>
									<li>
										<a href="">优惠券</a>
									</li>
									<li>
										<a href="">发票管理</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<!-- content left nav end-->
				<!-- content right cart start-->
				<div class="content_right">
		<div class="content_right_content">
			<div class="content_right_content_tips">
				<div id="content_right_content_tips_sel_1">
					<span style="color:rgb(103,103,103);">确认购买</span>
				</div>
				<div id="content_right_content_tips_sel_2">
					<span style="color:rgb(103,103,103);">收货人信息</span>
				</div>
				<div id="content_right_content_tips_sel_4">
					<span style="color:rgb(103,103,103);">在线支付</span>
				</div>
				<div id="content_right_content_tips_sel_3">
					<span style="color:rgb(103,103,103);">我的订单</span>
				</div>
			</div>
			<div class="content_right_content_text_1">
				<table border="1px" cellspacing="0px" bordercolor="grey">
					<tr style="text-align: left;">
						<td colspan="6"><button class="but0" style="background-color: rgb(183, 183, 183);width: 100px;height: 30px;border: 1px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;">
								<b style="font-size: 15px;color:white;">合并付款</b>
							</button>
							<button class="but0" style="background-color: rgb(183, 183, 183);width: 100px;height: 30px;border: 1px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;">
								<b style="font-size: 15px;color:white;">合并代付</b>
							</button></td>
					</tr>
					<tr style="color: rgb(65, 65, 65);font-size:17px">
						<td><b>宝贝</b></td>
						<td><b>单价(元)</b></td>
						<td><b>数量</b></td>
						<td><b>实付款()元</b></td>
						<td><b>交易状态</b></td>
						<td><b>交易操作</b></td>
					</tr>
					<c:forEach items="${sessionScope.car.map}" var="map">
					<tr style="color: rgb(65, 65, 65);font-size:14px">
						<td>${map.value.good.gname}</td>
						<td>${map.value.good.gprice}</td>
						<td>${map.value.num}</td>
						<td>${map.value.totalMoney}</td>
						<td>等待买家付款</td>
						<td><button style="background-color: rgb(202, 21, 29);width: 80px;height: 25px;border: 0.2px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;" class="butlx">
								<span style="font-size: 12px; color: rgb(240, 240, 240);"><a href="myMessage.jsp">想对卖家说</a></span>
							</button></td>
					</tr>
					</c:forEach>
					<tr style="color: rgb(65, 65, 65);font-size:15px">
						<td colspan="1">收货信息：</td>
						<td colspan="4">${client.address}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						${client.cName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						${client.postCode}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						${client.phone}</td>
						<td><button style="background-color: rgb(150,155,158);width: 60px;height: 25px;border: 0.5px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;" class="but01">
								<span style="font-size: 12px; color: white;">添加</span>
							</button>
							<button style="background-color: rgb(150,155,158);width: 60px;height: 25px;border: 0.5px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;" onclick="selectclient()" class="but02">
								<span style="font-size: 12px; color: white;">选择</span>
							</button>
						</td>
					</tr>
				</table>
				<div style="padding-left: 800px">总计：${sessionScope.car.hj}元</div>
				<br>
				<br>
				<button onclick="now()" style="background-color: rgb(0, 154, 235);width: 150px;height: 30px;border: 0.2px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;" class="but1">
						<b style="font-size: 15px; color: white;">立即付款</b>
				</button>
			</div>
			<div class="content_right_content_text_2">
				<div class="content_right_content_text_2_left">
					<b>收货信息确认</b>
				</div>
				<div class="content_right_content_text_2_right">
					<div class="kuang">
						<table border="0px">
							<tr>
								<td class="kuang_td1"><span style="color: red;">*</span>收货地区:</td>
								<td colspan="2" class="kuang_td2">
									<div class="bg-primary">
										<hr />
										省：<select id="selF" required="required">
											<option>---请选择---</option>
										</select> &nbsp;
										市：<select id="selB" required="required">
											<option>---请选择---</option>
										</select> &nbsp;
										区：<select id="selC" required="required">
											<option>---请选择---</option>
										</select>
										<p id="pid"></p>
									</div>
								</td>
							</tr>
							<tr>
								<td class="kuang_td1"><span style="color: red;">*</span>收货地址:</td>
								<td class="kuang_td2"><input type="text" size="15px" required="required" id="address"> 
								<span>邮编：<input type="text" size="12px" required="required" id="postcode" name="fname" min="6"></span>
									<span class="checkExistRong" id="checkExistPost" style="color: red;"></span>
								</td>
							</tr>
							<tr>
								<td class="kuang_td1"><span style="color: red;">*</span>收货人姓名:</td>
								<td class="kuang_td2"><input type="text" size="15px" required="required" id="cname">
									<span class="checkExistRong" id="checkExistname" style="color: red;"></span>
								</td>
							</tr>
							<tr>
								<td class="kuang_td1"><span style="color: red;">*</span>手机:</td>
								<td class="kuang_td2"><input type="text" size="15px" required="required" id="telephone" name="fname" min="11">
									<span class="checkExistRong" id="checkExistPhone" style="color: red;"></span>
								</td>
							</tr>
							<tr>
								<td class="kuang_td1">是否保存地址:</td>
								<td class="kuang_td2"><input type="checkbox" value="remeberAddress" id="keep">保存本次收货地址
								</td>
							</tr>
							<!-- <tr>
								<td colspan="2">订单附言:<input type="text" size="85px"></td>
							</tr> -->
							<br>
							<tr>
								<td colspan="2" style="text-align: center;">
								<!-- onclick="success()" onclick="tj()"-->
								<button id="but2" onclick="tj()" style="background-color: rgb(234, 234, 234);width: 100px;height: 30px;border: 1px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;">
										<b>提交</b>
									</button></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="content_right_content_text_3">
				<table>
					<tr>
						<td
							style="padding-left: 30px; color: darkslateblue; font-size: 25px;"><b>支付成功!</b></td>
					</tr>
					<tr>
					<%Date d= new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						%>
						<td><b>订购时间：<%=sdf.format(d) %></b><span
							style="color: #0000ff;cursor:pointer;">&nbsp;&nbsp;&nbsp;&nbsp;查看配送时间标准</span></td>
					</tr>
					<tr>
						<p></p>
					</tr>
					<tr>
						<td><b>订购商品：</b></td>
					</tr>
					<c:forEach items="${sessionScope.car.map}" var="map">
					<tr>
						<td style="padding-left: 100px; font-size: 14px; color: gray;">
							${map.value.good.gname}</td>
						<td style="font-size: 14px; color: gray;">
							${map.value.num}个</td>
					</tr>
					</c:forEach>
					<tr>
						<td style="padding-left: 750px;"><b>实际支付金额：</b></td>
						<td style="font-size: 16px;"><fmt:formatNumber type="number" value="${sessionScope.car.hj}"
												pattern="0.0000" maxFractionDigits="4" />元</td>
					</tr>
					<tr>
						<td><b>收货人信息：</b></td>
					</tr>
					<tr>
						<td style="padding-left: 100px; font-size: 15px; color: gray;">
							${client.cName}</td>
					</tr>
					<tr>
						<td style="padding-left: 100px; font-size: 14px; color: gray;">
							${client.phone}</td>
					</tr>
					<tr>
						<td style="padding-left: 100px; font-size: 14px; color: gray;">
							${client.address}</td>
					</tr>
					<tr>
						<td><b>订单信息：</b></td>
						<!-- <span style="font-size: 18px;"><input type="checkbox"
							value="信息选项">取消订单</span> -->
					</tr>
					<%StringBuilder sb=new StringBuilder();
			        Random rand=new Random();
			        for(int i=0;i<20;i++)
			        {
			            sb.append(rand.nextInt(10));
			        } %>
					<tr>
						<td style="padding-left: 100px; font-size: 14px; color: gray;">订单号：<%=sb.toString() %></td>
					</tr>
					<tr>
						<td
							style="padding-left: 600px; font-size: 18px; color: darkorange;">
							聚合数据感谢您的使用，欢迎下次体验！</td>
					</tr>
				</table>
			</div>
			<div class="content_right_content_text_4">
				<div class="content_right_dhead">
					<div class="content_right_dhead_left">
						<img src="https://juheimg.oss-cn-hangzhou.aliyuncs.com/www/v6/headerFooter/logo-white.png">
					</div>
					<div class="content_right_dhead_right">
						<div class="content_right_dhead_right_1">| 我的订单支付</div>
						<div class="content_right_dhead_right_2"></div>
						<div class="content_right_dhead_right_3">支付宝账号：18867096623</div>
						<div class="content_right_dhead_right_4"><span style="cursor: pointer;" id="daifu">找人代付</span> | 唯一热线：95188</div>
					</div>
				</div>
				<div class="content_right_dbody">
					<div class="content_right_dbody_top">
						<div class="content_right_dbody_top_top">&nbsp;&nbsp;&nbsp;&nbsp;<b>支付平台</b></div>
						<div class="content_right_dbody_top_center">
						    <div class="content_right_dbody_top_center_left">
								<div class="content_right_dbody_top_1">
									<img src="img/zhifu1.png" id="img001">
								</div>
								<div class="content_right_dbody_top_1">
									<img src="img/zhifu2.png" id="img002">
								</div>
								<div class="content_right_dbody_top_1">
									<img src="img/zhifu3.png" id="img003">
								</div>
								<div class="content_right_dbody_top_1">
									<img src="img/zhifu4.png" id="img004">
								</div>
							</div>
							<div class="content_right_dbody_top_center_right">
								<img src="img/Api6.png">
							</div>
						</div>
						<div class="content_right_dbody_top_bottom">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button style="background-color: rgb(194,192,193);width: 150px;height: 30px; text-align: center; color: rgb(96, 96, 96);border: 1px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;" id="but03">
								<b>其他支付方式</b>
							</button>
						</div>
					</div>
					<!-- <td class="kuang_td2"><input type="text" size="15px" required="required" id="telephone" name="fname" min="11">
									<span class="checkExistRong" id="checkExistPhone" style="color: red;"></span>
								</td> -->
					<div class="content_right_dbody_bottom">
						<div class="id">请输入银行卡账号：<input type="text" size="35px" name="card" id="bank" min="19" Placeholder="请输入19个0-9的数字"/>
						<span class="checkExistRong" id="checkExistBank" style="color: red;"></span></div>
						<div class="pv-line pv-line-shortPwd">
							<div class="pl-s-title">请输入6位数字支付密码</div>
				
								<!-- 需要错误提示 添加 ui-input-error -->
							<span class="ui-shortPwd" avalon-events="keyup:ekeyup_0_64typeEnter">
								
								<input type="password" id="pwd1" class="ui-shortPwd-input" autocomplete="new-password" maxlength="1" avalon-events="keyup:ekeyup_0_64collect,click:eclick_0_64fixPosition,input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
								<span class="checkExistRong" id="checkExistPwd1" style="color: red;"></span>
								<input type="password" id="pwd2" class="ui-shortPwd-input" autocomplete="new-password" maxlength="1" avalon-events="keyup:ekeyup_0_64collect,click:eclick_0_64fixPosition,input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
								<span class="checkExistRong" id="checkExistPwd2" style="color: red;"></span>
								<input type="password" id="pwd3" class="ui-shortPwd-input" autocomplete="new-password" maxlength="1" avalon-events="keyup:ekeyup_0_64collect,click:eclick_0_64fixPosition,input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
								<span class="checkExistRong" id="checkExistPwd3" style="color: red;"></span>
								<input type="password" id="pwd4" class="ui-shortPwd-input" autocomplete="new-password" maxlength="1" avalon-events="keyup:ekeyup_0_64collect,click:eclick_0_64fixPosition,input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
								<span class="checkExistRong" id="checkExistPwd4" style="color: red;"></span>
								<input type="password" id="pwd5" class="ui-shortPwd-input" autocomplete="new-password" maxlength="1" avalon-events="keyup:ekeyup_0_64collect,click:eclick_0_64fixPosition,input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
								<span class="checkExistRong" id="checkExistPwd5" style="color: red;"></span>
								<input type="password" id="pwd6" class="ui-shortPwd-input" autocomplete="new-password" maxlength="1" avalon-events="keyup:ekeyup_0_64collect,click:eclick_0_64fixPosition,input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
								<span class="checkExistRong" id="checkExistPwd6" style="color: red;"></span>
							</span>
							<a href="" class="ml10" target="_blank" psa="PCashier_home_forgetpassword">忘记支付密码？</a>
						</div>
						<div class="content_right_dbody_bottom_4">
							<button style="background-color: rgb(0, 171, 239);width: 100px;height: 30px; text-align: center; color: white;border: 1px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;" id="but3">
								<b>确认付款</b>
							</button>
						</div>
					</div>
				</div>
				<div class="content_right_dfoot">
					<div class="content_right_dfoot_top">ICP证：沪B2-20150087</div>
					<div class="content_right_dfoot_bottom">
						<img src="img/Api454.png">
					</div>
				</div>
			</div>
		</div>
	</div>

				<!-- content right cart end-->
			</div>
			<!--content end-->
		</div>
		<script>
		/* 密码判断 */
		function isBankPwdNo1(code) {
				var pattern = /^\d{1}$/;
				return pattern.test(code);
			}
		/* 密码判断 */
		function userPwd1(inputid, spanid) {
				$(inputid).blur(function() {
					if($.trim($(inputid).val()).length == 0) {
						$(spanid).html("");
						$("#pwd1").focus();
					} else {
						$("#pwd2").focus();
					}
					$(inputid).focus(function() {
						$(spanid).html("");
					});
				});
			};
			userPwd1('#pwd1', "#checkExistPwd1");
			/* 密码判断 */
			function isBankPwdNo2(code) {
					var pattern = /^\d{1}$/;
					return pattern.test(code);
				}
			/* 密码判断 */
			function userPwd2(inputid, spanid) {
					$(inputid).blur(function() {
						if($.trim($(inputid).val()).length == 0) {
							$(spanid).html("");
							$("#pwd2").focus();
						} else {
							$("#pwd3").focus();
						}
						$(inputid).focus(function() {
							$(spanid).html("");
						});
					});
				};
				userPwd2('#pwd2', "#checkExistPwd2");	
				/* 密码判断 */
				function isBankPwdNo3(code) {
						var pattern = /^\d{1}$/;
						return pattern.test(code);
					}
				/* 密码判断 */
				function userPwd3(inputid, spanid) {
						$(inputid).blur(function() {
							if($.trim($(inputid).val()).length == 0) {
								$(spanid).html("");
								$("#pwd3").focus();
							} else {
								$("#pwd4").focus();
							}
							$(inputid).focus(function() {
								$(spanid).html("");
							});
						});
					};
					userPwd3('#pwd3', "#checkExistPwd3");
					/* 密码判断 */
					function isBankPwdNo4(code) {
							var pattern = /^\d{1}$/;
							return pattern.test(code);
						}
					/* 密码判断 */
					function userPwd4(inputid, spanid) {
							$(inputid).blur(function() {
								if($.trim($(inputid).val()).length == 0) {
									$(spanid).html("");
									$("#pwd4").focus();
								} else {
									$("#pwd5").focus();
								}
								$(inputid).focus(function() {
									$(spanid).html("");
								});
							});
						};
						userPwd4('#pwd4', "#checkExistPwd4");
						/* 密码判断 */
						function isBankPwdNo5(code) {
								var pattern = /^\d{1}$/;
								return pattern.test(code);
							}
						/* 密码判断 */
						function userPwd5(inputid, spanid) {
								$(inputid).blur(function() {
									if($.trim($(inputid).val()).length == 0) {
										$(spanid).html("");
										$("#pwd5").focus();
									} else {
										$("#pwd6").focus();
									}
									$(inputid).focus(function() {
										$(spanid).html("");
									});
								});
							};
							userPwd5('#pwd5', "#checkExistPwd5");
							/* 密码判断 */
							function isBankPwdNo6(code) {
									var pattern = /^\d{1}$/;
									return pattern.test(code);
								}
							/* 密码判断 */
							function userPwd6(inputid, spanid) {
									$(inputid).blur(function() {
										if($.trim($(inputid).val()).length == 0) {
											$(spanid).html("");
											$("#pwd6").focus();
										} 
										$(inputid).focus(function() {
											$(spanid).html("");
										});
									});
								};
								userPwd6('#pwd6', "#checkExistPwd6");
		/* 银行卡号判断 */
		function isBankCardNo(code) {
				var pattern = /^\d{19}$/;
				return pattern.test(code);
			}
		/* 银行卡号判断 */
		function userBank(inputid, spanid) {
				$(inputid).blur(function() {
					if($.trim($(inputid).val()).length == 0) {
						$(spanid).html("× 银行卡号没有输入");
						$("#bank").focus();
					} else {
						if(isBankCardNo($.trim($(inputid).val())) == false) {
							$(spanid).html("× 银行卡号不正确");
							$("#bank").focus();
						}
					}
					$(inputid).focus(function() {
						$(spanid).html("");
					});
				});
			};
			userBank('#bank', "#checkExistBank");
		/* 邮编判断 */
		function isPostcodeNo(code) {
				var pattern = /^\d{6}$/;
				return pattern.test(code);
			}
		/* 邮编判断 */
		function userPost(inputid, spanid) {
				$(inputid).blur(function() {
					if($.trim($(inputid).val()).length == 0) {
						$(spanid).html("× 邮编码没有输入");
						$("#postcode").focus();
					} else {
						if(isPostcodeNo($.trim($(inputid).val())) == false) {
							$(spanid).html("× 邮编码不正确");
							$("#postcode").focus();
						}
					}
					$(inputid).focus(function() {
						$(spanid).html("");
					});
				});
			};
			userPost('#postcode', "#checkExistPost");
			/* 姓名 */
			function isChinaName(name) {
				var pattern = /^[\u4E00-\u9FA5]{1,6}$/;
				return pattern.test(name);
			}
			/* 用户名判断 */
			function userName(inputid, spanid) {
				$(inputid).blur(function() {
					if($.trim($(inputid).val()).length == 0) {
						$(spanid).html("× 收货人姓名没有输入");
						$("#cname").focus();
					} else {
						if(isChinaName($.trim($(inputid).val())) == false) {
							$(spanid).html("× 收货人姓名不合法");
							$("#cname").focus();
						}
					}
				});
				$(inputid).focus(function() {
					$(spanid).html("");
				});

			};
			userName('#cname', "#checkExistname");
			// 验证手机号
			function isPhoneNo(phone) {
				var pattern = /^1[34578]\d{9}$/;
				return pattern.test(phone);
			}
		/* 手机号判断 */
		function userTel(inputid, spanid) {
			$(inputid).blur(function() {
				if($.trim($(inputid).val()).length == 0) {
					$(spanid).html("× 手机号没有输入");
					$("#telephone").focus();
				} else {
					if(isPhoneNo($.trim($(inputid).val())) == false) {
						$(spanid).html("× 手机号码不正确");
						$("#telephone").focus();
					}
				}
				$(inputid).focus(function() {
					$(spanid).html("");
				});
			});
		};
		userTel('#telephone', "#checkExistPhone");
		</script>
		<script>
		$(function() {
			$("#but3").click(function() {
				$.ajax({
					type : "POST",
					url : "SelectBankServlet",
					data : {
						
						"bankid" : $("#bank").val(),
						"bpwd" : $("#pwd1").val()+$("#pwd2").val()+$("#pwd3").val()+$("#pwd4").val()+$("#pwd5").val()+$("#pwd6").val()
					},
					success : function(data) {
						var s="支付成功！";
						var f="支付失败！";
						//alert(data);
						if(s==data){
							alert(data);
							$(".content_right_content_text_3").css("display", "block");
							$(".content_right_content_text_2").css("display", "none");
							$(".content_right_content_text_1").css("display", "none");
							$(".content_right_content_text_4").css("display", "none");
						}else if(f==data){
							alert(data);
							
							$(".content_right_content_text_4").css("display", "block");
							$(".content_right_content_text_2").css("display", "none");
							$(".content_right_content_text_1").css("display", "none");
							$(".content_right_content_text_3").css("display", "none");
							$("#bank").val(""); 
							$("#pwd1").val("");
							$("#pwd2").val("");
							$("#pwd3").val("");
							$("#pwd4").val("");
							$("#pwd5").val("");
							$("#pwd6").val("");
						}
					}
					
				});
			});
		});
		</script>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript" src="js/jquery-3.3.1.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/order_form.css"/>
		<title></title>
		<script>
			$(function(){
				$("#content_right_content_tips_sel_1").click(function(){
					$(".content_right_content_text_1").css("display","block");
					$(".content_right_content_text_2").css("display","none");
					$(".content_right_content_text_3").css("display","none");
					$(".content_right_content_text_4").css("display","none");
				});
				$(".but1").click(function(){
					$(".content_right_content_text_2").css("display","block");
					$(".content_right_content_text_1").css("display","none");
					$(".content_right_content_text_3").css("display","none");
					$(".content_right_content_text_4").css("display","none");
				});
				$("#content_right_content_tips_sel_2").click(function(){
					$(".content_right_content_text_2").css("display","block");
					$(".content_right_content_text_1").css("display","none");
					$(".content_right_content_text_3").css("display","none");
					$(".content_right_content_text_4").css("display","none");
				});
				$("#but2").click(function(){
					$(".content_right_content_text_3").css("display","block");
					$(".content_right_content_text_2").css("display","none");
					$(".content_right_content_text_1").css("display","none");
					$(".content_right_content_text_4").css("display","none");
				});
				$("#content_right_content_tips_sel_3").click(function(){
					$(".content_right_content_text_3").css("display","block");
					$(".content_right_content_text_2").css("display","none");
					$(".content_right_content_text_1").css("display","none");
					$(".content_right_content_text_4").css("display","none");
				});
				$("#content_right_content_tips_sel_4").click(function(){
					$(".content_right_content_text_4").css("display","block");
					$(".content_right_content_text_2").css("display","none");
					$(".content_right_content_text_1").css("display","none");
					$(".content_right_content_text_3").css("display","none");
				});
				$("#but3").click(function(){
					$(".content_right_content_text_3").css("display","block");
					$(".content_right_content_text_2").css("display","none");
					$(".content_right_content_text_1").css("display","none");
					$(".content_right_content_text_4").css("display","none");
				});
			})
			
		</script>
	</head>
	<body>
		<div class="content_right">
			<div class="content_right_content">
				<div class="content_right_content_tips">
					<div id="content_right_content_tips_sel_1">
						确认购买
					</div>
					<div id="content_right_content_tips_sel_2">
						收货人信息
					</div>
					<div id="content_right_content_tips_sel_4">
						在线支付
					</div>
					<div id="content_right_content_tips_sel_3">
						我的订单
					</div>
				</div>
				<div class="content_right_content_text_1">
					<table border="1px" cellspacing="0px" bordercolor="grey">
						<tr>
							<td colspan="7"><button class="but1"><b style="font-size: 15px;">合并付款</b></button><button class="but1"><b style="font-size: 15px;">合并代付</b></button></td>
						</tr>
						<tr>
							<td>宝贝</td>
							<td>单价(元)</td>
							<td>数量</td>
							<td>商品操作</td>
							<td>实付款()元</td>
							<td>交易状态</td>
							<td>交易操作</td>
						</tr>
						<tr>
							<td>短信API服务</td>
							<td>1.0000</td>
							<td>1</td>
							<td>投诉卖家</td>
							<td>1.0000</td>
							<td>等待买家付款</td>
							<td><button style="background-color: orangered;" class="but1"><b style="font-size: 15px;color: white;">立即付款</b></button></td>
						</tr>
						<tr>
							<td>汽车维修保养记录</td>
							<td>6.0000</td>
							<td>2</td>
							<td>投诉卖家</td>
							<td>12.0000</td>
							<td>等待买家付款</td>
							<td><button style="background-color: orangered;" class="but1"><b style="font-size: 15px;color: white;">立即付款</b></button></td>
						</tr>
						<tr>
							<td colspan="3">订单编号：918392490357093</td>
							<td colspan="4">2018-04-23</td>
						</tr>
				</table>
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
									<td class="kuang_td2">
									<select name="省">
										<option value="广东">广东</option>
										<option value="河北">河北</option>
										<option value="东北">东北</option>
									</select>
									<select name="市">
										<option value="广州市">广州市</option>
										<option value="唐山市">唐山市</option>
										<option value="长春市">长春市</option>
									</select>
									<select name="区">
										<option value="东山区">东山区</option>
										<option value="路北区">路北区</option>
										<option value="高新区">高新区</option>
									</select>
									</td>
								</tr>
								<tr>
									<td class="kuang_td1"><span style="color: red;">*</span>收货地址:</td>
									<td class="kuang_td2">
										<input type="text" size="15px" required="">
										<span>邮编：<input type="text" size="12px" required=""></span>
									</td>
								</tr>
								<tr>
									<td class="kuang_td1"><span style="color: red;">*</span>收货人姓名:</td>
									<td class="kuang_td2">
										<input type="text" size="15px" required="">
									</td>
								</tr>
								<tr>
									<td class="kuang_td1"><span style="color: red;">*</span>手机:</td>
									<td class="kuang_td2">
										<input type="text" size="15px" required="">
									</td>
								</tr>
								<tr>
									<td class="kuang_td1">固定电话:</td>
									<td class="kuang_td2">
										<input type="text" size="15px">
									</td>
								</tr>
								<tr>
									<td class="kuang_td1">是否保存地址:</td>
									<td class="kuang_td2">
										<input type="checkbox" value="保存地址">保存本次收货地址
									</td>
								</tr>
								<tr>
									<td colspan="2">订单附言:<input type="text" size="35px"></td>
								</tr>
								<tr>
									<td colspan="2" style="text-align: center;"><button id="but2"><b>提交</b></button></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="content_right_content_text_3">
					<table>
						<tr><td style="padding-left: 700px;color: darkslateblue;font-size: 25px;"><b>支付成功</b></td></tr>
						<tr><th>订单号：918392490357093</th></tr>
						<tr><td><b>订购时间：</b>2018-4-23 17：14：03<span style="color: #0000ff;">查看配送时间标准</span></td></tr>
						<tr><p></p></tr>
						<tr><td><b>订购商品：</b></td></tr>
						<tr><td style="padding-left: 50px;font-size: 14px;color: gray;"> 短信API服务</td></tr>
						<tr><td style="padding-left: 50px;font-size: 14px;color: gray;"> 1.0000元/次</td></tr>
						<tr><td style="padding-left: 50px;font-size: 14px;color: gray;"> 1个</td></tr>
						<tr><td style="padding-left: 750px;"> <b>实际支付金额：</b></td><td style="font-size: 16px;"> 1.0000元</td></tr>
						<tr><td><b>收货人信息：</b></td></tr>
						<tr><td style="padding-left: 50px;font-size: 15px;color: gray;"> 姓名：张三</td></tr>
						<tr><td style="padding-left: 50px;font-size: 14px;color: gray;"> 电话：13831838438</td></tr>
						<tr><td style="padding-left: 50px;font-size: 14px;color: gray;"> 收货地址：河北省唐山市路北区大学生公寓村</td></tr>
						<tr><td><b>订单信息：</b></td><span style="font-size: 18px;"><input type="checkbox" value="信息选项">取消订单</span></tr>
						<tr><td style="padding-left: 600px;font-size: 18px;color: darkorange;"> 聚合数据感谢您的使用，欢迎下次体验！</td></tr>
					</table>
				</div>
				<div class="content_right_content_text_4">
					<div class="content_right_dhead">
						<div class="content_right_dhead_left">
							<img src="img/Api4.png">
						</div>
						<div class="content_right_dhead_right">
							<div class="content_right_dhead_right_1">
								我的订单支付
							</div>
							<div class="content_right_dhead_right_2">
								<select>
									<option value="中国大陆版">中国大陆版</option>
								</select>
							</div>
							<div class="content_right_dhead_right_3">
								支付宝账号：18867096623
							</div>
							<div class="content_right_dhead_right_4">
								找人代付 | 唯一热线：95188
							</div>
						</div>
					</div>
					<div class="content_right_dbody">
						<div class="content_right_dbody_top">
							<div class="content_right_dbody_top_left">
								<img height="100px" src="img/Api6.png">
							</div>
							<div class="content_right_dbody_top_center">
								<div class="content_right_dbody_top_center_1">
									汽车维修保养记录--聚合数据API让你体验科技时代,数据让生活更美好
								</div>
								<div class="content_right_dbody_top_center_2">
									卖家昵称：聚合数据
								</div>
							</div>
							<div class="content_right_dbody_top_right">
								<b style="font-size: 18px;color: orange;">6.0000</b><font size="2px">元</font>
							</div>
						</div>
						<div class="content_right_dbody_middle">
							<div class="content_right_dbody_middle_1">
								<div class="method_left">
									<div class="method_left_1">
										<input type="radio"> 
									</div>
									<div class="method_left_2">
										<img src="img/Api5.png">
									</div>
									<div class="method_left_3">
										交通银行
									</div>
								</div>
								<div class="method_center">
									信用卡 | 快捷
								</div>
								<div class="method_right">
									支付<b style="color: orange;font-size: 15px;">6.0000</b>元
								</div>
							</div>
							<div class="content_right_dbody_middle_1">
								<div class="method_left">
									<div class="method_left_1">
										<input type="radio"> 
									</div>
									<div class="method_left_2">
										<img src="img/Api7.png">
									</div>
									<div class="method_left_3">
										中国工商银行
									</div>
								</div>
								<div class="method_center">
									储蓄卡 | 快捷   <span style="color: orange;font-size: 11px;">推荐</span>
								</div>
								<div class="method_right">
									支付<b style="color: orange;font-size: 15px;">6.0000</b>元
								</div>
							</div>
							<div class="content_right_dbody_middle_2">
								&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"> <button style="font-size: 12px;color: rgb(0, 171, 239);line-height: 20px;height: 25px;width: 100px;text-align: center;background-color: white;">其他付款方式</button>
							</div>
						</div>
						<div class="content_right_dbody_bottom">
							<div class="content_right_dbody_bottom_1">
								支付宝支付密码：
							</div>
							<div class="content_right_dbody_bottom_2">
								<div class="bimg"><img src="img/Api44.png"></div>
								<div class="btext">忘记密码？</div>
							</div>
							<div class="content_right_dbody_bottom_3">
								请输入6位数字支付密码
							</div>
							<div class="content_right_dbody_bottom_4">
								<button style="background-color: rgb(0, 171, 239);text-align: center;color: white;" id="but3"><b>确认付款</b></button>
							</div>
						</div>
					</div>
					<div class="content_right_dfoot">
						<div class="content_right_dfoot_top">
							ICP证：沪B2-20150087
						</div>
						<div class="content_right_dfoot_bottom">
							<img src="img/Api454.png">
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
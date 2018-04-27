<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<title>聚合数据</title>
		<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
		<link rel="stylesheet" type="text/css" href="css/product_details.css" />
		<script>
			$(function() {
				$(".nav").mouseenter(function() {
					$(this).css("color", "rgb(178, 178, 178)");
					$(this).find(".nav_1").slideDown(300);
				});
				$(".nav").mouseleave(function() {
					$(this).css("color", "rgb(102, 102, 102)");
					$(this).find(".nav_1").slideUp(300);
				});
				$(".tbody_middle_1 li").mouseover(function() {
					$(this).css("color", "rgb(0, 189, 255)");
				});
				$(".tbody_middle_1 li").mouseout(function() {
					$(this).css("color", "rgb(125, 102, 125)");
				});
				$("#img1").mouseenter(function(){
					$(this).find("#login").animate({"left":"20px","width":"100px"},1000)
				});
				$("#img1").mouseleave(function(){
					$(this).find("#login").animate({"left":"0px","width":"0px"},1000);
				});
				$(".table0").mouseenter(function(){
					$(this).css("background-color","rgb(0, 174, 255)");
				});
				$(".table0").mouseleave(function(){
					$(this).css("background-color","rgb(0, 189, 255)");
				});
			});
		</script>
	</head>

	<body>
		<div class="body">
			<div class="thead">
				<div class="thead_left">
					<img src="https://juheimg.oss-cn-hangzhou.aliyuncs.com/www/v6/headerFooter/logo-white.png">
				</div>
				<div class="thead_middle">
					<ul>
						<div class="nav">
							<li>首页</li>
						</div>
						<div class="nav">
							<li>数据服务
								<div class="nav_1">
									<div class="nav_top">
										<table>
											<tr class="nav_top_1">
												<td>金融征信</td>
												<td>生活常用</td>
												<td>车辆服务</td>
												<td>短信服务</td>
												<td>短信服务</td>
												<td>应用开发</td>
											</tr>
											<tr>
												<td>银行卡四元素校验</td>
												<td>常用快递</td>
												<td>全国车辆违章</td>
												<td>短信API服务</td>
												<td>电信基站</td>
												<td>证件识别</td>
											</tr>
											<tr>
												<td>身份证实名认证</td>
												<td>全国天气预报</td>
												<td>尾号银行</td>
												<td>语音验证码</td>
												<td>地图坐标服务</td>
												<td>二维码生成</td>
											</tr>
											<tr>
												<td>股票数据</td>
												<td>空气质量</td>
												<td>VIN车架号车辆识别码查询</td>
												<td>金融短信</td>
												<td>移动联通基站</td>
												<td>商标信息查询</td>
											</tr>
											<tr>
												<td>更多>></td>
												<td>更多>></td>
												<td>更多>></td>
												<td>更多>></td>
												<td>更多>></td>
												<td>更多>></td>
											</tr>
										</table>
									</div>
									<div class="nav_low">
										<img src="img/Api04.png">
										<img src="img/Api05.png">
										<img src="img/Api06.png">
									</div>
								</div>
							</li>
						</div>
						<div class="nav">
							<li>产品&解决方案
								<div class="nav_1">
									<div class="nav_0"></div>
									<div class="nav_left">
										<div class="nav_left_1">
											<b>工具/Tools</b>
										</div>
										<div class="nav_left_2">
											<div class="nav_left_2_1">
												>聚合 合作伙伴
											</div>
											<div class="nav_left_2_2">
												成为聚合合作商、供应商
											</div>
										</div>
										<div class="nav_left_2">
											<div class="nav_left_2_1">
												>聚合交易所
											</div>
											<div class="nav_left_2_2">
												预约您的油卡专属库存
											</div>
										</div>
										<div class="nav_left_2">
											<div class="nav_left_2_1">
												>聚盒子
											</div>
											<div class="nav_left_2_2">
												API接口测试工具
											</div>
										</div>
									</div>
									<div class="nav_center">
										<div class="nav_left_1"></div>
										<div class="nav_left_2">
											<div class="nav_left_2_1">
												>在线批量充值服务
											</div>
											<div class="nav_left_2_2">
												价格合理、方便快捷、无手续费
											</div>
										</div>
										<div class="nav_left_2">
											<div class="nav_left_2_1">
												>基站定位
											</div>
											<div class="nav_left_2_2">
												移动联通电信，轻松帮你定位位置
											</div>
										</div>
										<div class="nav_left_2"></div>
									</div>
									<div class="nav_right">
										<div class="nav_right_0">
											<b>产品和解决方案/Products and Solutions</b>
										</div>
										<div class="nav_right_1">
											<div class="nav_left_2">
												<div class="nav_left_2_1">
													>金融征信解决方案
												</div>
												<div class="nav_left_2_2">
													实名认证、银行卡鉴权、金融风控
												</div>
											</div>
											<div class="nav_left_2">
												<div class="nav_left_2_1">
													>企业数据分析
												</div>
												<div class="nav_left_2_2">
													挖掘企业商业数据价值
												</div>
											</div>
											<div class="nav_left_2">
												<div class="nav_left_2_1">
													>行业分析报告
												</div>
												<div class="nav_left_2_2">
													洞察数据背后隐藏的商业价值
												</div>
											</div>
										</div>
										<div class="nav_right_1">
											<div class="nav_left_2">
												<div class="nav_left_2_1">
													>汽车征信解决方案
												</div>
												<div class="nav_left_2_2">
													汽车服务行业一站式解决方案
												</div>
											</div>
											<div class="nav_left_2">
												<div class="nav_left_2_1">
													>商业地产分析
												</div>
												<div class="nav_left_2_2">
													智能选址、活动检测、环境分析
												</div>
											</div>
											<div class="nav_left_2">
												<div class="nav_left_2_1">
													>充值技术接入营销解决方案
												</div>
												<div class="nav_left_2_2">
													产品变现最好的解决方案
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
						</div>
						<div class="nav">
							<li>聚合会员</li>
						</div>
						<div class="nav">
							<li>数据积分</li>
						</div>
					</ul>
				</div>
				<div class="thead_right">
					<div class="thead_right_left">
						<div id="img1"><div id="login"></div><img src="img/Api03.png"></div>
					</div>
					<div class="thead_right_right">
						<button>登录</button>
						<button>注册</button>
					</div>
				</div>
			</div>
			<div class="tbody">
				<div class="tbody_top">
					<div class="tbody_top_left">
						<img src="img/Api02.png">
					</div>
					<div class="tbody_top_middle">
						<div class="table1">
							<b>汽车维修保养记录</b>
						</div>
						<div class="table2">
							<input class="table01" type="text" value="聚合数据" size="5" readonly="readonly"/>
							<input class="table01" type="text" value="支持HTTPS" size="7" readonly="readonly"/>
						</div>
						<div class="table3">
							<p color="gray">根据车辆识别代码查询车辆维修保养记录，详细资费等内容请联系在线客服</p>
						</div>
						<div class="table2">
							<input class="table01" type="text" value="  5次  " size="4" readonly="readonly"/>
						</div>
						<div class="table2">
							<font color="red" size="5">¥ 30.00 </font>(约6.0000元/次),每人最多限购一份;
						</div>
						<div class="table3">
							<button class="table0" type="submit"><b>联系客服</b></button>
							<button class="table02" type="submit">加入购物车</button>
							<button class="table02" type="submit">下载文档</button>
						</div>
					</div>
					<div class="tbody_top_right"></div>
				</div>
				<div class="tbody_middle">
					<div class="tbody_middle_1">
						<ul>
							<div id="click1">
								<li><b>API文档</b></li>
							</div>
							<div id="click2">
								<li><b>错误码参照</b></li>
							</div>
							<div id="click3">
								<li id="col"><b>示例代码</b></li>
							</div>
							<div id="click4">
								<li><b>联系我们</b></li>
							</div>
						</ul>
					</div>
					<div class="tbody_middle_2">
						<div class="tbody_middle_2_left">
							<div class="tbody_middle_2_left_top">
								<table border="1px" width="800px" height="100px" cellspacing="0px" bordercolor="gainsboro">
									<tr>
										<th align="left">
											<font size="4">完整教学代码示例</font>
										</th>
									</tr>
									<tr>
										<td>语言</td>
										<td>标题</td>
										<td>提供者</td>
										<td>时间</td>
									</tr>
									<tr>
										<td colspan="4">暂无教学代码，小聚正在拼命添加中.....</td>
									</tr>
								</table>
							</div>
							<div class="tbody_middle_2_left_bottom">
								<table border="1px" width="800px" height="100px" cellspacing="0px" bordercolor="gainsboro">
									<tr>
										<th align="left">
											<font size="4">常见问题</font>
										</th>
									</tr>
									<tr>
										<td>内容</td>
										<td>详情</td>
									</tr>
									<tr>
										<td colspan="4">常见问题：
											
											<a style="color: aqua" href="">http://www.juhe.cn/qa/index/1524146993</a>
											
										</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="tbody_middle_2_right">
							<div class="tbody_middle_2_right_1">
								猜你喜欢
							</div>
							<div class="tbody_middle_2_right_2">
								<div class="tbody_middle_2_right_2_left">
									<img src="img/Api07.png">
								</div>
								<div class="tbody_middle_2_right_2_right">
									<div class="tbody_middle_2_right_2_right_top">
										出险理赔查询
									</div>
									<div class="tbody_middle_2_right_2_right_bottom">
										提供按照车牌或车架号查...
									</div>
								</div>
							</div>
							<div class="tbody_middle_2_right_2">
								<div class="tbody_middle_2_right_2_left">
									<img src="img/Api08.png">
								</div>
								<div class="tbody_middle_2_right_2_right">
									<div class="tbody_middle_2_right_2_right_top">
										全国车辆违章
									</div>
									<div class="tbody_middle_2_right_2_right_bottom">
										目前已经支持300个左右...
									</div>
								</div>
							</div>
							<div class="tbody_middle_2_right_2">
								<div class="tbody_middle_2_right_2_left">
									<img src="img/Api09.png">
								</div>
								<div class="tbody_middle_2_right_2_right">
									<div class="tbody_middle_2_right_2_right_top">
										全国违章直连查询
									</div>
									<div class="tbody_middle_2_right_2_right_bottom">
										目前已经支持300个左右...
									</div>
								</div>
							</div>
							<div class="tbody_middle_2_right_2">
								<div class="tbody_middle_2_right_2_left">
									<img src="img/Api10.png">
								</div>
								<div class="tbody_middle_2_right_2_right">
									<div class="tbody_middle_2_right_2_right_top">
										违章代缴v2.0
									</div>
									<div class="tbody_middle_2_right_2_right_bottom">
										支持全国300+城市车辆...
									</div>
								</div>
							</div>
							<div class="tbody_middle_2_right_2">
								<div class="tbody_middle_2_right_2_left">
									<img src="img/Api11.png">
								</div>
								<div class="tbody_middle_2_right_2_right">
									<div class="tbody_middle_2_right_2_right_top">
										VIN码查询
									</div>
									<div class="tbody_middle_2_right_2_right_bottom">
										根据VIN码准确定型，获...
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tfoot">
				<div class="tfoot_top">
					<div class="tfoot_top_top">
						<b>现在注册，百款接口免费测试</b>
					</div>
					<div class="tfoot_top_bottom">
						<input type="text" value="免费注册" id="input" readonly="readonly"/>
					</div>
				</div>
				<div class="tfoot_bottom">
					<div class="tfoot_bottom_left">
						<div class="tbody_middle_2_left_0">
							<dl>
								<dt>联系与支持</dt>
								<dd>400-882-7715</dd>
								<dd>售前咨询</dd>
								<dd>客服&售后</dd>
								<dd>常见问题</dd>
								<dd>工单后台</dd>
								<dd>投诉与建议</dd>
							</dl>
						</div>
						<div class="tbody_middle_2_left_0">
							<dl>
								<dt>关于聚合</dt>
								<dd>合作伙伴</dd>
								<dd>服务条款</dd>
								<dd>隐私政策</dd>
								<dd>市场合作</dd>
								<dd>加入我们</dd>
							</dl>
							
						</div>
						<div class="tbody_middle_2_left_0">
							<dl>
								<dt>快速入口</dt>
								<dd>API数据</dd>
								<dd>聚合会员</dd>
								<dd>聚合积分</dd>
								<dd>新闻动态</dd>
								<dd>联系我们</dd>
							</dl>
						</div>
						<div class="tbody_middle_2_left_0">
							<dl>
								<dt>产品服务</dt>
								<dd>在线批量充值服务</dd>
								<dd>聚合交易所</dd>
								<dd>基站定位</dd>
								<dd>聚盒子</dd>
								<dd>行业分析报告</dd>
							</dl>
						</div>
						<div class="tbody_middle_2_left_0">
							<dl>
								<dt>解决方案</dt>
								<dd>金融征信解决方案</dd>
								<dd>汽车征信解决方案</dd>
								<dd>商业地产分析</dd>
								<dd>企业数据分析</dd>
								<dd>充值技术解决方案</dd>
							</dl>
						</div>
					</div>
					<div class="tfoot_bottom_right">
						<div class="tfoot_bottom_right_top">
							<div class="tfoot_bottom_right_top_1">
								<div id="top_1">微信公众号</div>
							</div>
							<div class="tfoot_bottom_right_top_2">
								<div id="top_2">juhe_cn</div>
							</div>
						</div>
						<div class="tfoot_bottom_right_bottom">
							<img src="img/Api12.png">
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
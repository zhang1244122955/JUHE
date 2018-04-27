<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>API数据接口_免费数据调用-聚合数据</title>
		<link rel="stylesheet" type="text/css" href="css/commodity.css" />
		<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript">
			$(function() {
				$(".header-btn1").mouseover(function() {
					$(this).css("color", "#BBBBBB");
					$(this).css("border", "2px solid #ddd");
				})
				$(".header-btn1").mouseout(function() {
					$(this).css("color", "#666");
					$(this).css("border", "2px solid rgba(102, 102, 102, 0.3)");
				})
				$(".header-btn2").mouseover(function() {
					$(this).css("background-color", "dodgerblue");
				})
				$(".header-btn2").mouseout(function() {
					$(this).css("background-color", "#00BDFF");
				})
				$(".header-menu-item").mouseover(function() {
					$(this).css("color", "#BBBBBB");
				})
				$(".header-menu-item").mouseout(function() {
					$(this).css("color", "#666");
				})
				$(".header-menu-item-active").mouseover(function() {
					$(this).find(".header-menu-item-nav").css("display", "block");
				})
				$(".header-menu-item-active").mouseout(function() {
					$(this).find(".header-menu-item-nav").css("display", "none");
				})
				$(".api-nav").mouseover(function() {
					$(this).css("color", "#BBBBBB");
				})
				$(".api-nav").mouseout(function() {
					$(this).css("color", "#666");
				})
				$(".word2").mouseover(function() {
					$(this).css("color", "#00BDFF");
				})
				$(".word2").mouseout(function() {
					$(this).css("color", "#BBBBBB");
				})
				$(".select-type-name").mouseover(function() {
					$(this).css("color", "#BBBBBB");
				})
				$(".select-type-name").mouseout(function() {
					$(this).css("color", "#666");
				})
				$(".api-list-li").mouseover(function() {
					$(this).css("box-shadow", "1px 3px 4px #DDD");
				})
				$(".api-list-li").mouseout(function() {
					$(this).css("box-shadow", "1px 3px 4px #FFF");
				})
				$(".api-info").mouseover(function() {
					$(this).animate({
						"top": "-10px"
					}, 10);
				})
				$(".api-info").mouseout(function() {
					$(this).animate({
						"top": "0px"
					}, 10);
				})
			})
		</script>
	</head>

	<body>
		<div id="header">
			<div class="header-nav">
				<div class="header-logo">
					<a href="index.jsp"><img src="img/commlogo.png" /></a>
				</div>
				<div class="header-menu">
					<div class="header-menu-item"></div>
					<div class="header-menu-item" style="width: 90px;">
						<a class="header-menu-item" href="index.jsp">首页</a>
					</div>
					<div class="header-menu-item-active">
						<a class="header-title" href="#">数据服务</a>
						<div class="header-menu-item-nav">
							<table>
								<tr>
									<td></td>
									<td class="word1">
										<a href="#">金融征信</a>
									</td>
									<td class="word1">
										<a href="#">生活常用</a>
									</td>
									<td class="word1">
										<a href="#">车辆服务</a>
									</td>
									<td class="word1">
										<a href="#">短信服务</a>
									</td>
									<td class="word1">
										<a href="#">短信服务</a>
									</td>
									<td class="word1">
										<a href="#">应用开发</a>
									</td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td>
										<a class="word2" href="#">银行卡四元素校验</a>
									</td>
									<td>
										<a class="word2" href="#">常用快递</a>
									</td>
									<td>
										<a class="word2" href="#">全国车辆违章</a>
									</td>
									<td>
										<a class="word2" href="#">短信API服务</a>
									</td>
									<td>
										<a class="word2" href="#">电信基站</a>
									</td>
									<td>
										<a class="word2" href="#">证件识别</a>
									</td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td>
										<a class="word2" href="#">身份证实名认证</a>
									</td>
									<td>
										<a class="word2" href="#">全国天气预报</a>
									</td>
									<td>
										<a class="word2" href="#">尾号银行</a>
									</td>
									<td>
										<a class="word2" href="#">语音验证码</a>
									</td>
									<td>
										<a class="word2" href="#">地图坐标服务</a>
									</td>
									<td>
										<a class="word2" href="#">二维码生成</a>
									</td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td>
										<a class="word2" href="#">股票数据</a>
									</td>
									<td>
										<a class="word2" href="#">空气质量</a>
									</td>
									<td>
										<a class="word2" href="#">VIN车架号车辆识别码查询</a>
									</td>
									<td>
										<a class="word2" href="#">金融短信</a>
									</td>
									<td>
										<a class="word2" href="#">移动联通基站</a>
									</td>
									<td>
										<a class="word2" href="#">商标信息查询</a>
									</td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td>
										<a class="word3" href="#">更多>></a>
									</td>
									<td>
										<a class="word3" href="#">更多>></a>
									</td>
									<td>
										<a class="word3" href="#">更多>></a>
									</td>
									<td>
										<a class="word3" href="#">更多>></a>
									</td>
									<td>
										<a class="word3" href="#">更多>></a>
									</td>
									<td>
										<a class="word3" href="#">更多>></a>
									</td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td colspan="2" align="center">
										<a href="#"><img src="img/Api04.png" style="-webkit-border-radius: 5px;width: 300px;height: 90px;"></a>
									</td>
									<td colspan="2" align="center">
										<a href="#"><img src="img/Api05.png" style="-webkit-border-radius: 5px;width: 300px;height: 90px;"></a>
									</td>
									<td colspan="2" align="center">
										<a href="#"><img src="img/Api06.png" style="-webkit-border-radius: 5px;width: 300px;height: 90px;"></a>
									</td>
									<td></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="header-menu-item">
						<a class="header-menu-item" href="#">产品&解决方案</a>
					</div>
					<div class="header-menu-item">
						<a class="header-menu-item" href="Login.html">聚合会员</a>
					</div>
					<div class="header-menu-item">
						<a class="header-menu-item" href="#">数据积分</a>
					</div>
				</div>
				<div class="header-action">
					<div class="header-line"></div>
					<div class="header-status">
						<a class="header-btn1" href="Login.jsp">登录</a>
						<a class="header-btn2" href="Register.jsp">注册</a>
						<!--<a class="header-btn2" href="/account">个人中心</a>
        				<a class="header-btn1" href="javascript:void(0)">退出</a>-->
					</div>
				</div>
			</div>
		</div>
		<div id="bodyer">
			<div class="api-assort">
				<p>API分类</p>
				<a class="api-nav-selected" href="#">全部</a>
				<a class="api-nav" href="#">生活常用</a>
				<a class="api-nav" href="#">车辆服务</a>
				<a class="api-nav" href="#">金融征信</a>
				<a class="api-nav" href="#">位置服务</a>
				<a class="api-nav" href="#">即时通讯</a>
				<a class="api-nav" href="#">应用开发</a>
				<a class="api-nav" href="#">旅游出行</a>
				<a class="api-nav" href="#">站长工具</a>
				<a class="api-nav" href="#">文娱体育</a>
				<a class="api-nav" href="#">充值缴费</a>
				<a class="api-nav" href="#">礼品卡</a>
			</div>
			<div class="api-select-bar">
				<span class="api-select-title">全部</span>
				<div class="select-type-bar">
					<div class="select-type-group">
						<span class="select-type">排序:</span>
						<a href="#" class="select-type-name-selected " val="9">综合</a>
						<a href="#" class="select-type-name " val="1">最新</a>
						<a href="#" class="select-type-name " val="2">热门</a>
					</div>
					<div class="select-type-group">
						<span class="select-type">付费类型:</span>
						<a href="#" class="select-type-name-selected " val="9">全部</a>
						<a href="#" class="select-type-name " val="0">免费</a>
						<a href="#" class="select-type-name " val="1">收费</a>
					</div>
				</div>
			</div>
			<ul class="api-list-ul">
				<!-- clearfix-->
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="短信API服务接口">
							<img src="img/p01.png" width="100px" height="90px" />
							<h2 class="api-name">短信API服务</h2>
						</a>
						<div class="api-price">￥0.0301/次
						</div>
					</div>
					<p class="api-marks">稳定的短信发送API，低至3.7分/条；【请务必添加图片验证码等防恶意攻击的机制，以防短信轰炸】。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-paster">企业专用</div>
					<div class="api-info">
						<a href="#" title="银行卡四元素校验接口">
							<img src="img/p02.png" width="100px" height="90px" />
							<h2 class="api-name">银行卡四元素校验</h2>
						</a>
						<div class="api-price">￥0.1500/次
						</div>
					</div>
					<p class="api-marks">检测输入的姓名、手机号码、身份证号码、银行卡号是否一致。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="全国车辆违章接口">
							<img src="img/p03.png" width="100px" height="90px" />
							<h2 class="api-name">全国车辆违章</h2>
						</a>
						<div class="api-price">￥0.0400/次
						</div>
					</div>
					<p class="api-marks">目前已经支持300个左右的城市违章查询，支持小车，大车查询以及历史违章数据</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="product_details.jsp" title="汽车维修保养记录接口">
							<img src="img/p04.png" width="100px" height="90px" />
							<h2 class="api-name">汽车维修保养记录</h2>
						</a>
						<div class="api-price">￥6.0000/次
						</div>
					</div>
					<p class="api-marks">根据车辆识别代码查询车辆维修保养记录，详细资费等内容请联系在线客服</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="银行卡类型及真伪查询接口">
							<img src="img/p05.png" width="100px" height="90px" />
							<h2 class="api-name">银行卡类型及真伪查询</h2>
						</a>
						<div class="api-price">￥0.0070/次
						</div>
					</div>
					<p class="api-marks">通过银行卡查询，可以判断卡类型。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-paster">企业专用</div>
					<div class="api-info">
						<a href="#" title="三网手机实名制认证接口">
							<img src="img/p06.png" width="100px" height="90px" />
							<h2 class="api-name">三网手机实名制认证</h2>
						</a>
						<div class="api-price">￥0.2500/次
						</div>
					</div>
					<p class="api-marks">支持移动、电信、联通号码；检验姓名、身份证、手机号码是否一致。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-paster">企业专用</div>
					<div class="api-info">
						<a href="#" title="身份证实名认证接口">
							<img src="img/p07.png" width="100px" height="90px" />
							<h2 class="api-name">身份证实名认证</h2>
						</a>
						<div class="api-price">￥0.1000/次
						</div>
					</div>
					<p class="api-marks">检测姓名和身份证号是否一致，身份证验证。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-paster">企业专用</div>
					<div class="api-info">
						<a href="#" title="银行卡三元素检测接口">
							<img src="img/p08.png" width="100px" height="90px" />
							<h2 class="api-name">银行卡三元素检测</h2>
						</a>
						<div class="api-price">￥0.1500/次
						</div>
					</div>
					<p class="api-marks">检测输入的姓名、身份证号码、银行卡号是否一致。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-paster">企业专用</div>
					<div class="api-info">
						<a href="#" title="银行卡二元素检测接口">
							<img src="img/p09.png" width="100px" height="90px" />
							<h2 class="api-name">银行卡二元素检测</h2>
						</a>
						<div class="api-price">￥0.2000/次
						</div>
					</div>
					<p class="api-marks">检测输入的姓名、银行卡号是否一致。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="违章代缴v2.0接口">
							<img src="img/p10.png" width="100px" height="90px" />
							<h2 class="api-name">违章代缴v2.0</h2>
						</a>
						<div class="api-price">￥0.1000/次
						</div>
					</div>
					<p class="api-marks">支持全国300+城市车辆违章代办</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="企业工商数据接口">
							<img src="img/p11.png" width="100px" height="90px" />
							<h2 class="api-name">企业工商数据</h2>
						</a>
						<div class="api-price">￥0.5700/次
						</div>
					</div>
					<p class="api-marks">根据企业名称或营业执照编号查询企业基本工商信息。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="驾驶员累计计分查询接口">
							<img src="img/p12.png" width="100px" height="90px" />
							<h2 class="api-name">驾驶员累计计分查询</h2>
						</a>
						<div class="api-price">￥0.0400/次
						</div>
					</div>
					<p class="api-marks">根据驾驶证信息查询驾驶证累计扣分</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="彩票开奖结果查询接口">
							<img src="img/p13.png" width="100px" height="90px" />
							<h2 class="api-name">彩票开奖结果查询</h2>
						</a>
						<p class="api-price green">免费</p>
					</div>
					<p class="api-marks">目前支持双色球、大乐透、七乐彩、七星彩、福彩3D、排列3、排列5，数据来源于网络公开，开奖结果获取可能会有一定的延时。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="流量接口">
							<img src="img/p14.png" width="100px" height="90px" />
							<h2 class="api-name">流量接口</h2>
						</a>
						<p class="api-price yellow">按实际订单收费</p>
					</div>
					<p class="api-marks">流量API接口技术接入服务。为企业提供流量API接口，通过接口自由实现PC端、H5、APP等方式接入。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="话费接口">
							<img src="img/p15.png" width="100px" height="90px" />
							<h2 class="api-name">话费接口</h2>
						</a>
						<p class="api-price yellow">按实际订单收费</p>
					</div>
					<p class="api-marks">话费API接口技术接入服务。为企业提供话费API接口，通过接口自由实现PC端、H5、APP等方式接入。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="二维码生成接口">
							<img src="img/p16.png" width="100px" height="90px" />
							<h2 class="api-name">二维码生成</h2>
						</a>
						<p class="api-price green">免费</p>
					</div>
					<p class="api-marks">按照设定的参数、生成二维码</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="城际出行直达规划接口">
							<img src="img/p17.png" width="100px" height="90px" />
							<h2 class="api-name">城际出行直达规划</h2>
						</a>
						<div class="api-price">￥0.0660/次
						</div>
					</div>
					<p class="api-marks">城际出行直达推荐方案</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="身份证OCR识别接口">
							<img src="img/p18.png" width="100px" height="90px" />
							<h2 class="api-name">身份证OCR识别</h2>
						</a>
						<div class="api-price">￥0.0800/次
						</div>
					</div>
					<p class="api-marks">支持对二代居民身份证正反面的关键字段识别，包括姓名、性别、民族、出生日期、住址、 身份证号、签发机关、有效期限，识别准确率可达98%以上</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="通用礼品卡接口文档接口">
							<img src="img/p19.png" width="100px" height="90px" />
							<h2 class="api-name">通用礼品卡接口文档</h2>
						</a>
						<p class="api-price yellow">按实际订单收费</p>
					</div>
					<p class="api-marks">集于各商家实体卡和会员卡的API虚拟卡，可用于线上/下消费、移动支付。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="驾驶证核查接口">
							<img src="img/p20.png" width="100px" height="90px" />
							<h2 class="api-name">驾驶证核查</h2>
						</a>
						<p class="api-price yellow">按实际订单收费</p>
					</div>
					<p class="api-marks">核查姓名身份证号准驾车型初次领证日期以及档案编号等信息</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="7*24小时城市天气空气质量预报接口">
							<img src="img/p21.png" width="100px" height="90px" />
							<h2 class="api-name">7*24小时城市天气空气质量预报</h2>
						</a>
						<div class="api-price">￥0.0187/次
						</div>
					</div>
					<p class="api-marks">提供数据气象方面,包括天气预报和空气质量预报的精细化的服务</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="大型车违章查询接口">
							<img src="img/p22.png" width="100px" height="90px" />
							<h2 class="api-name">大型车违章查询</h2>
						</a>
						<div class="api-price">￥0.0750/次
						</div>
					</div>
					<p class="api-marks"></p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="移动联通基站接口">
							<img src="img/p23.png" width="100px" height="90px" />
							<h2 class="api-name">移动联通基站</h2>
						</a>
						<div class="api-price">￥0.0010/次
						</div>
					</div>
					<p class="api-marks">通过移动联通基站的小区号和基站号进行基站位置查询。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-paster">企业专用</div>
					<div class="api-info">
						<a href="#" title="腾讯Q币会员充值接口">
							<img src="img/p24.png" width="100px" height="90px" />
							<h2 class="api-name">腾讯Q币会员充值</h2>
						</a>
						<p class="api-price yellow">按实际订单收费</p>
					</div>
					<p class="api-marks">支持腾讯Q币、会员、超级会员、红钻、蓝钻等在线充值，如需要请联系在线客服开通</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
				<li class="api-list-li">
					<div class="api-info">
						<a href="#" title="泰国落地签申请表生成接口">
							<img src="img/p25.png" width="100px" height="90px" />
							<h2 class="api-name">泰国落地签申请表生成</h2>
						</a>
						<p class="api-price yellow">按实际订单收费</p>
					</div>
					<p class="api-marks">通过此接口可以直接生成在线泰国落地签的申请表格。在接口调用成功后，回通过电子邮件把表格发送给申请人。</p>
					<a class="api-get-btn" href="#">查看详情</a>
				</li>
			</ul>
			<div class="paginate">
				<div class="pageLinkStyle4"><span class="currentPage"><a href="#">1</a></span><span class="extPage"><a href="#"  target="_self">2</a></span><span class="extPage"><a href="#"  target="_self">3</a></span><span class="extPage"><a href="#"  target="_self">4</a></span><span class="extPage"><a href="#"  target="_self">5</a></span><span class="nextPage"><a href="#" title="下一页" >下一页</a></span></div>
			</div>
		</div>
		<div id="footer">
			<div class="footer-container">
				<div class="footer-top clearfix">
					<div class="footer-link">
						<dl>
							<dt>联系与支持</dt>
							<dd>
								<a href="">400-882-7715</a>
							</dd>
							<dd>
								<a href="">售前咨询</a>
							</dd>
							<dd>
								<a href="">客服&amp;售后</a>
							</dd>
							<dd>
								<a href="">常见问题</a>
							</dd>
							<dd>
								<a href="">工单后台</a>
							</dd>
							<dd>
								<a href="">投诉与建议</a>
							</dd>
						</dl>
						<dl>
							<dt>关于聚合</dt>
							<dd>
								<a href="">合作伙伴</a>
							</dd>
							<dd>
								<a href="">服务条款</a>
							</dd>
							<dd>
								<a href="">隐私政策</a>
							</dd>
							<dd>
								<a href="">市场合作</a>
							</dd>
							<dd>
								<a href="">加入我们</a>
							</dd>
						</dl>
						<dl>
							<dt>快速入口</dt>
							<dd>
								<a href="">API数据</a>
							</dd>
							<dd>
								<a href="">聚合会员</a>
							</dd>
							<dd>
								<a href="">聚合积分</a>
							</dd>
							<dd>
								<a href="">新闻动态</a>
							</dd>
							<dd>
								<a href="">联系我们</a>
							</dd>
						</dl>
						<dl>
							<dt>产品服务</dt>
							<dd>
								<a href="">在线批量充值服务</a>
							</dd>
							<dd>
								<a href="">聚合交易所</a>
							</dd>
							<dd>
								<a href="">基站定位</a>
							</dd>
							<dd>
								<a href="">聚盒子</a>
							</dd>
							<dd>
								<a href="">行业分析报告</a>
							</dd>
						</dl>
						<dl>
							<dt>解决方案</dt>
							<dd>
								<a href="">金融征信解决方案</a>
							</dd>
							<dd>
								<a href="">汽车征信解决方案</a>
							</dd>
							<dd>
								<a href="">商业地产分析</a>
							</dd>
							<dd>
								<a href="">企业数据分析</a>
							</dd>
							<dd>
								<a href="">充值技术解决方案</a>
							</dd>
						</dl>
					</div>
				</div>
				<div class="footer-bottom clearfix">
					<div class="footer-bottom-left">
						<a href=""> <span class="footer-pic1"></span> </a>
						<a href=""> <span class="footer-pic2"></span> <span>苏公网安备 32059002001776号</span> </a> <span class="footer-license">增值电信业务经营许可证：苏B2-20140496</span>
						<a class="footer-icp" href="" target="_blank" rel="noopener noreferrer"> <span>苏ICP备14006450号-3</span> </a>
					</div>
					<div class="footer-bottom-right"><span>天聚地合（苏州）数据股份有限公司&copy;版权所有</span></div>
				</div>
			</div>
		</div>
		<div class="footer-help">
			<div class="footer-help-btn">
				<span>联系</span>
				<span class="dot"></span>
				<span>咨询</span>
			</div>
		</div>
	</body>

</html>
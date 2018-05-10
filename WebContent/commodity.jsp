<%@page import="java.util.List,com.zz624.entry.Goods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
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
				"top" : "-10px"
			}, 10);
		})
		$(".api-info").mouseout(function() {
			$(this).animate({
				"top" : "0px"
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
								<td class="word1"><a href="#">金融征信</a></td>
								<td class="word1"><a href="#">生活常用</a></td>
								<td class="word1"><a href="#">车辆服务</a></td>
								<td class="word1"><a href="#">短信服务</a></td>
								<td class="word1"><a href="#">短信服务</a></td>
								<td class="word1"><a href="#">应用开发</a></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td><a class="word2" href="#">银行卡四元素校验</a></td>
								<td><a class="word2" href="#">常用快递</a></td>
								<td><a class="word2" href="#">全国车辆违章</a></td>
								<td><a class="word2" href="#">短信API服务</a></td>
								<td><a class="word2" href="#">电信基站</a></td>
								<td><a class="word2" href="#">证件识别</a></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td><a class="word2" href="#">身份证实名认证</a></td>
								<td><a class="word2" href="#">全国天气预报</a></td>
								<td><a class="word2" href="#">尾号银行</a></td>
								<td><a class="word2" href="#">语音验证码</a></td>
								<td><a class="word2" href="#">地图坐标服务</a></td>
								<td><a class="word2" href="#">二维码生成</a></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td><a class="word2" href="#">股票数据</a></td>
								<td><a class="word2" href="#">空气质量</a></td>
								<td><a class="word2" href="#">VIN车架号车辆识别码查询</a></td>
								<td><a class="word2" href="#">金融短信</a></td>
								<td><a class="word2" href="#">移动联通基站</a></td>
								<td><a class="word2" href="#">商标信息查询</a></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td><a class="word3" href="#">更多>></a></td>
								<td><a class="word3" href="#">更多>></a></td>
								<td><a class="word3" href="#">更多>></a></td>
								<td><a class="word3" href="#">更多>></a></td>
								<td><a class="word3" href="#">更多>></a></td>
								<td><a class="word3" href="#">更多>></a></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2" align="center"><a href="#"><img
										src="img/Api04.png"
										style="-webkit-border-radius: 5px; width: 300px; height: 90px;"></a>
								</td>
								<td colspan="2" align="center"><a href="#"><img
										src="img/Api05.png"
										style="-webkit-border-radius: 5px; width: 300px; height: 90px;"></a>
								</td>
								<td colspan="2" align="center"><a href="#"><img
										src="img/Api06.png"
										style="-webkit-border-radius: 5px; width: 300px; height: 90px;"></a>
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
					<a class="header-btn1" href="Login.jsp">登录</a> <a
						class="header-btn2" href="Register.jsp">注册</a>
					<!--<a class="header-btn2" href="/account">个人中心</a>
        				<a class="header-btn1" href="javascript:void(0)">退出</a>-->
				</div>
			</div>
		</div>
	</div>
	<div id="bodyer">
		<div class="api-assort">
			<p>API分类</p>
			<a class="api-nav-selected" href="#">全部</a> <a class="api-nav"
				href="#">生活常用</a> <a class="api-nav" href="#">车辆服务</a> <a
				class="api-nav" href="#">金融征信</a> <a class="api-nav" href="#">位置服务</a>
			<a class="api-nav" href="#">即时通讯</a> <a class="api-nav" href="#">应用开发</a>
			<a class="api-nav" href="#">旅游出行</a> <a class="api-nav" href="#">站长工具</a>
			<a class="api-nav" href="#">文娱体育</a> <a class="api-nav" href="#">充值缴费</a>
			<a class="api-nav" href="#">礼品卡</a>
		</div>
		<div class="api-select-bar">
			<span class="api-select-title"><span class="glyphicon glyphicon-align-left"  aria-hidden="true"></span>全部</span>
			<div class="select-type-bar">
				<div class="select-type-group">
					<span class="select-type">排序:</span> <a href="#"
						class="select-type-name-selected " val="9">综合</a> <a href="#"
						class="select-type-name " val="1">最新</a> <a href="#"
						class="select-type-name " val="2">热门</a>
				</div>
				<div class="select-type-group">
					<span class="select-type">付费类型:</span> <a href="#"
						class="select-type-name-selected " val="9">全部</a> <a href="#"
						class="select-type-name " val="0">免费</a> <a href="#"
						class="select-type-name " val="1">收费</a>
				</div>
			</div>
		</div>
		<ul class="api-list-ul">
			<!-- clearfix-->
			<c:forEach items="${list}" var="good">
				<li class="api-list-li"><c:if test="${good.gpaster!=0}">
						<div class="api-paster">企业专用</div>
					</c:if>
					<div class="api-info">
						<a href="DetailServlet?gid=${good.gid}" title="${good.gname}接口"> <img src="${good.gimg}"
							width="100px" height="90px" />
							<h2 class="api-name">${good.gname}</h2>
						</a>
						<c:choose>
							<c:when test="${good.gisprice==0}">
								<p class="api-price yellow">按实际订单收费</p>
							</c:when>
							<c:otherwise>
							<c:choose>
								<c:when test="${good.gprice==0}">
									<p class="api-price green" color="green">免费</p>
								</c:when>
								<c:otherwise>
									<div class="api-price">￥<fmt:formatNumber type="number" value="${good.gprice}" pattern="0.0000" maxFractionDigits="4"/>/次</div>
								</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</div>
					<p class="api-marks">${good.gmarks}</p> <a class="api-get-btn"
					href="#">查看详情</a></li>
			</c:forEach>
		</ul>
		<div class="paginate">
			<div class="pageLinkStyle4">
				<span class="currentPage"><a href="#">1</a></span><span
					class="extPage"><a href="#">2</a></span><span
					class="extPage"><a href="#">3</a></span><span
					class="extPage"><a href="#">4</a></span><span
					class="extPage"><a href="#">5</a></span><span
					class="nextPage"><a href="#" title="下一页">下一页</a></span>
			</div>
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
					<a href=""> <span class="footer-pic1"></span>
					</a> <a href=""> <span class="footer-pic2"></span> <span>苏公网安备
							32059002001776号</span>
					</a> <span class="footer-license">增值电信业务经营许可证：苏B2-20140496</span> <a
						class="footer-icp" href="" target="_blank"
						rel="noopener noreferrer"> <span>苏ICP备14006450号-3</span>
					</a>
				</div>
				<div class="footer-bottom-right">
					<span>天聚地合（苏州）数据股份有限公司&copy;版权所有</span>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-help">
		<div class="footer-help-btn">
			<span>联系</span> <span class="dot"></span> <span>咨询</span>
		</div>
	</div>
</body>

</html>
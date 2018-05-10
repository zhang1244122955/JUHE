<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script src="js/html5_3d_animation.js" type="text/javascript"></script>
<script type="text/javascript" src="js/index.js"></script>
<link rel="stylesheet" href="css/index.css" />
</head>

<body style="overflow: hidden;">
	<div class="header">
		<div class="logo">
			<div class="logo_content"
				style="background-image: url(img/logo-black.png);"></div>
		</div>
		<div class="option">
			<div class="opt">首页</div>
			<div class="opt">数据服务</div>
			<div class="opt">产品&解决方案</div>
			<div class="opt">聚合会员</div>
			<div class="opt">数据积分</div>
		</div>
		<div class="search">

			<input id="search_left" placeholder="  天气" />
			<div id="search_right"></div>

		</div>
		<div class="header-status">
			<a class="header-btn1" id="login">登录</a> <a class="header-btn2"
				id="register">注册</a>
		</div>
	</div>
	<div class="home-nav">
		<ul>
			<li id="li1" class="active" style="opacity: 1;"><span>TOP</span>
			</li>
			<li id="li2"><span>聚合技术</span></li>
			<li id="li3"><span>谁在使用我们</span></li>
			<li id="li4"><span>新闻动态</span></li>
			<li id="li5"><span>快速入口</span></li>
		</ul>
	</div>
	<div class="bottom-page">
		<span class="current-page">1</span> <span class="total-page">/
			5</span>
	</div>
	<div id="content">
		<span id="span" style="color: #000000;"></span>
		<canvas class="banner-bg" id="space" width="1200" height="710"></canvas>
		<div class="item" id="item1">
			<span id="testspan" style="color: white;"></span>
			<div class="banner-bg" id="bg1"
				style="background-image: url(img/1.png);"></div>
			<div class="banner-bg" id="bg2"
				style="background-image: url(img/2.png);"></div>
			<div class="banner-bg" id="bg3"
				style="background-image: url(img/3.png);"></div>
			<div class="banner-bg" id="bg4"
				style="background-image: url(img/4.png);"></div>
			<div class="banner-bg" id="bg5"
				style="background-image: url(img/5.png);"></div>

		</div>
		<div class="item" id="item2">
			<div class="tech-container">
				<div class="tech-item first">
					<div class="tech-icon tech-icon1"
						style="background-image: url(img/tech1.png);"></div>
					<p class="tech-title">
						<span>指标体系</span> <i class="iconfont icon-tishi"></i>
					</p>
				</div>
				<div class="tech-item second">
					<div class="tech-icon tech-icon2"
						style="background-image: url(img/tech2.png);"></div>
					<p class=" tech-title ">
						<span>风控模型</span> <i class="iconfont icon-tishi "></i>
					</p>
				</div>
				<div class="tech-item third ">
					<div class="tech-icon tech-icon3 "
						style="background-image: url(img/tech3.png);"></div>
					<p class="tech-title">
						<span>图形数据库</span> <i class="iconfont icon-tishi"></i>
					</p>
				</div>
				<div class="tech-item fourth">
					<div class="tech-icon tech-icon4"
						style="background-image: url(img/tech4.png);"></div>
					<p class=" tech-title ">
						<span>数据资源引擎</span> <i class="iconfont icon-tishi "></i>
					</p>
				</div>
				<div class="tech-item fifth ">
					<div class="tech-icon tech-icon5"
						style="background-image: url(img/tech5.png);"></div>
					<p class="tech-title">
						<span>专业技术支撑</span> <i class="iconfont icon-tishi"></i>
					</p>
				</div>
			</div>
		</div>
		<div class="item" id="item3">
			<div class="user-list"
				style="background-image: url(img/users-logo-2.png);"></div>
		</div>
		<div class="item" id="item4">
			<div class="news-container">
				<div class="news-left">
					<p class="news-type">聚合公告 / Announcement</p>
					<ul class="news-list">
						<li><span class="news-date">09-20</span>
							<p class="news-title">
								<a href="/news/index/id/2177" target="_blank"
									rel="noopener noreferrer">聚合数据平台公司主体名称变更通知</a>
							</p></li>
						<li><span class="news-date">08-12</span>
							<p class="news-title">
								<a href="/news/index/id/206" target="_blank"
									rel="noopener noreferrer">数据聚合和云端生态，聚合数据受邀于腾讯云峰会发表演讲</a>
							</p></li>
						<li><span class="news-date">08-12</span>
							<p class="news-title">
								<a href="/news/index/id/205" target="_blank"
									rel="noopener noreferrer">推动大数据产业发展，金鸡湖大数据产业联盟正式揭牌成立</a>
							</p></li>
						<li><span class="news-date">08-08</span>
							<p class="news-title">
								<a href="/news/index/id/204" target="_blank"
									rel="noopener noreferrer">聚合数据与腾讯众创空间达成战略合作</a>
							</p></li>
						<li><span class="news-date">06-30</span>
							<p class="news-title">
								<a href="/news/index/id/201" target="_blank"
									rel="noopener noreferrer">苏州市发改委领导来我司调研考察</a>
							</p></li>
					</ul>
					<a class="news-more" href="/news/listview/cid/1" target="_blank"
						rel="noopener noreferrer">更多公告></a>
				</div>
				<div class="news-left">
					<p class="news-type">行业资讯 / Industry information</p>
					<ul class="news-list">
						<li><span class="news-date">04-18</span>
							<p class="news-title">
								<a href="/news/index/id/2788" target="_blank"
									rel="noopener noreferrer">七行JSON代码将你的网站变成移动应用</a>
							</p></li>
						<li><span class="news-date">04-18</span>
							<p class="news-title">
								<a href="/news/index/id/2789" target="_blank"
									rel="noopener noreferrer">如何识别数字货币中的“骗局”？</a>
							</p></li>
						<li><span class="news-date">04-18</span>
							<p class="news-title">
								<a href="/news/index/id/2790" target="_blank"
									rel="noopener noreferrer">Telegram：俄罗斯封杀令尚未造成“显著”影响</a>
							</p></li>
						<li><span class="news-date">04-17</span>
							<p class="news-title">
								<a href="/news/index/id/2787" target="_blank"
									rel="noopener noreferrer">吹响“人工智能应用”的集结号 ——AI Conference
									2018北京站大会圆满落幕</a>
							</p></li>
						<li><span class="news-date">04-16</span>
							<p class="news-title">
								<a href="/news/index/id/2786" target="_blank"
									rel="noopener noreferrer">使用 GitHub 和 Python 实现持续部署</a>
							</p></li>
					</ul>
					<a class="news-more" href="/news/listview/cid/99" target="_blank"
						rel="noopener noreferrer">更多资讯></a>
				</div>
			</div>
		</div>
		<div class="item" id="item5">
			<h1>5F</h1>
		</div>
	</div>

</body>

</html>
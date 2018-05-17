<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/reset.min.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/LoginStyle.css" />
		<link rel="bookmark" type="image/x-icon" href="img/brower.png" />
		<link rel="shortcut icon" href="img/brower.png">
		<link rel="icon" href="img/brower.png">
		<script src="js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/indexTab.js"></script>
		<script src="js/photobooth_min.js"></script>
		<script type="text/javascript">
			$(function() {
				$('#pwd_face').val("");
				$("#btn_face")
					.click(
						function() {
							//按钮a点击完成后。b也执行点击事件。
							$(".trigger").trigger('click');
							$("#btn_face").val("正在登录···");
							$("#btn_face").css("background-color", "#D7D7D7");
							$("#btn_face").attr("disabled", true);
							$
								.ajax({
									type: "POST",
									url: "LoginFaceServlet",
									data: {
										"data": $('#facetoken').val(),
										"username": $('#usr_face').val(),
										"password": $('#pwd_face').val()
									},
									success: function(data) {
										$("#btn_face").val("登录");
										$("#btn_face").css(
											"background-color",
											"#03C5FF");
										$("#btn_face").attr("disabled",
											false);
										//alert(data);
										switch(data) {
											case '10002000':
												//登录成功
												if(document.referrer == "http://localhost:8080/JUHE/Login.jsp") {
													location.href = "index.jsp";
												} else if(document.referrer == "") {
													location.href = "index.jsp";
												} else {
													location.href = document.referrer;
												}
												break;
											case '10000001':
												//用户名不存在
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>用户名不存在</span>");
												break;
											case '10000002':
												//用户名或密码错误
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>用户名或密码错误</span>");
												break;
											case '10000003':
												//未开通人脸登录
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>未开通人脸登录,输入密码进行开通</span>");
												$('#face_pwd').css("display",
													"block");
												break;
											case '10000004':
												//用户名脸部信息匹配失败
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>用户名脸部信息匹配失败</span>");
												break;
											case '10000010':
												//人脸有被遮挡
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>人脸有被遮挡</span>");
												break;
											case '10000011':
												//人脸模糊
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>人脸模糊</span>");
												break;
											case '10000012':
												//人脸光照不好
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>人脸光照不好</span>");
												break;
											case '10000013':
												//人脸不完整
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>人脸不完整</span>");
												break;
											case '10000014':
												//活体检测未通过
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>活体检测未通过</span>");
												break;
											case '10000015':
												//质量检测未通过 右眼遮挡程度过高
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>质量检测未通过 右眼遮挡程度过高</span>");
												break;
											case '10000016':
												//质量检测未通过 左眼遮挡程度过高
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>质量检测未通过 左眼遮挡程度过高</span>");
												break;
											case '10000017':
												//质量检测未通过 右脸遮挡程度过高
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>质量检测未通过 右脸遮挡程度过高</span>");
												break;
											case '10000018':
												//质量检测未通过 左脸遮挡程度过高
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>质量检测未通过 左脸遮挡程度过高</span>");
												break;
											case '10000019':
												//质量检测未通过 下巴遮挡程度过高
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>量检测未通过 下巴遮挡程度过高</span>");
												break;
											case '10000020':
												//质量检测未通过 鼻子遮挡程度过高
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>质量检测未通过 鼻子遮挡程度过高</span>");
												break;
											case '10000021':
												//质量检测未通过 嘴巴遮挡程度过高
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>质量检测未通过 嘴巴遮挡程度过高</span>");
												break;
											case '10000100':
												//发现未知错误
												$("#p_error_face")
													.html(
														"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>未知错误</span>");
												break;

											default:
												break;
										}

									}
								});
						});
				$('#tab01').click(function() {
					$('#example').data("photobooth").destroy();
				});
				$('#tab02').click(function() {
					$('#example').photobooth();
					$('#example').data("photobooth").resize(267, 200);
					$('#example').on("image", function(event, dataUrl) {
						$('#facetoken').val(dataUrl);
					});
				});
				$("#usr").change(function() {
					//获取用户输入的值
					var usr = $("#usr").val();
					//写正则表达式
					var reg = /^\w{6,20}$/;
					var flagusr = reg.test(usr);
					if(!flagusr) {
						$("#usr+p").css("display", "block");
						$("#tab02").click(function() {
							$("#usr+p").css("display", "none");
						})
						$("#tab01").click(function() {
							$("#usr+p").css("display", "block");
						})
					} else {
						$("#usr+p").css("display", "none");

					}
				});
				$("#usr_face").change(function() {
					//获取用户输入的值
					var usr = $("#usr_face").val();
					//写正则表达式
					var reg = /^\w{6,20}$/;
					var flagusr = reg.test(usr);
					if(!flagusr) {
						$("#usr_face+p").css("display", "block");
						$("#tab01").click(function() {
							$("#usr_face+p").css("display", "none");
						})
						$("#tab02").click(function() {
							$("#usr_face+p").css("display", "block");
						})
					} else {
						$("#usr_face+p").css("display", "none");

					}
				});

				$("#btn")
					.click(
						function() {
							//获取用户输入的用户名和密码
							var username = $("#usr").val();
							var pwd = $("#pwd").val();
							$("#btn").val("正在登录···");
							$("#btn").css("background-color", "#D7D7D7");
							$("#btn").attr("disabled", true);
							$
								.post(
									"Login", {
										"username": username,
										"pwd": pwd
									},
									function(data) {
										//alert(data);
										$("#btn").val("登录");
										$("#btn").css(
											"background-color",
											"#03C5FF");
										$("#btn").attr("disabled",
											false);
										if(data == 10002000) {
											if(document.referrer == "http://localhost:8080/JUHE/Login.jsp") {
												location.href = "index.jsp";
											} else if(document.referrer == "") {
												location.href = "index.jsp";
											} else {
												location.href = document.referrer;
											}
										} else if(data == 10000002) {
											//输出错误信息
											$("#p_error")
												.html(
													"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>用户名或密码不正确</span>");
										} else if(data == 10000001) {
											//输出错误信息
											$("#p_error")
												.html(
													"<img src='img/error.png' width='10px' height='10px'/><span style='font-size:10px;color:red'>用户名不存在</span>");
										}

									})
						});

			});
		</script>
	</head>

	<body>
		<div class="body_left">
			<span id="jpg2"> <img src="img/login.png" />
		</span>
		</div>
		<div class="body_right">
			<div class="body_right_con">
				<div id="head_left">
					<a href="new_file.html"><img src="https://juheimg.oss-cn-hangzhou.aliyuncs.com/www/register/juhelogo.png" id="jpg1" /></a>
				</div>
				<!-- 选项卡开始 -->

				<!-- 选项卡导航栏开始 -->
				<div class="tab-wrapper">

					<ul class="tab-menu">
						<li id="tab01" class="active">用户账号登录</li>
						<li id="tab02">人脸识别登录</li>
					</ul>

					<div class="tab-content">

						<!-- form表单内容部分 -->
						<div>
							<div class="head_bottom">
								<form method="post">
									<div class="input_txt">
										<input type="text" name="username" id="usr" value="" placeholder="用户名/手机号/邮箱" />
										<p class="error">
											<span class="error_tip"><img src="img/error.png"
											width="10px" height="10px" /></span> <span class="error_row">
											用户名不正确 </span>
										</p>
									</div>
									<div class="input_txt">
										<input type="password" id="pwd" name="pwd" value="" placeholder="密码" />
									</div>
									<!-- 错误信息 -->
									<p id="p_error"></p>
									<div class="input_txt">
										<p style="padding-left: 210px; font-size: 12px; padding-top: 15px; color: #A8EBFF;">
											<a href="select.jsp">忘记密码？</a>
										</p>
									</div>
									<div class="input_txt">
										<input type="button" name="btn" id="btn" value="登录" />
									</div>
									<div class="input_txt">
										<p style="padding-left: 130px; font-size: 10px; color: #AB90AB;">
											还没有聚合账号，
											<a href="Register.jsp">立即注册？</a>
										</p>
									</div>
								</form>
							</div>
						</div>
						<!-- 人脸识别部分 -->
						<div>

							<div id="example" class="photo"></div>
							<div id="face_username" class="input_txt">
								<input type="text" name="username" id="usr_face" value="" placeholder="用户名/手机号/邮箱" />
								<p class="face_error">
									<span class="error_tip"><img src="img/error.png"
									width="10px" height="10px" /></span> <span class="error_row">
									用户名不正确 </span>
								</p>
							</div>
							<div id="face_pwd" class="input_txt">
								<input id="pwd_face" name="face_pwd" value="" placeholder="密码" />
							</div>
							<input hidden id="facetoken" name="facetoken" />
							<!-- 错误信息 -->
							<p id="p_error_face"></p>
							<div class="input_txt">
								<input type="button" name="" id="btn_face" value="登录" />
							</div>

						</div>
					</div>
					<!-- //tab-content -->

				</div>
				<!-- //tab-wrapper -->

				<!-- 选项卡结束 -->

			</div>
		</div>
	</body>

</html>
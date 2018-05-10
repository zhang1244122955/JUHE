$(function() {
	$(".nav_li").mouseover(function() {
		$(this).css("color", "gray");
		$(this).find("div").css("display", "block");
		$(this).find("div").find("a").css("color", "rgb(3, 197, 255)");
	});
	$(".nav_li").mouseout(function() {
		$(this).css("color", "black");
		$(this).find("div").css("display", "none");
		$(this).find("div").find("a").css("color", "white");
	});
	$("nav_li_son").mouseover(function(){
		$(this).find("a").find("span").css("color", "blue");
	});
	$("nav_li_son").mouseout(function(){
		$(this).find("a").find("span").css("color", "black");
	});
	/*左边导航样式 开始*/
	/*我的聚合*/
	$(".content_nav_1_font").mouseover(function() {
		$(this).find("a").css("color", "rgb(3, 197, 255)");
	});
	$(".content_nav_1_font").mouseout(function() {
		$(this).find("a").css("color", "rgb(168, 175, 185)");
	});
	/*我的数据下的下拉菜单开始*/
	$(".content_nav_2_img2").mouseover(function() {
		$(this).find("div").css("display", "block");

	});
	$(".content_nav_2_img2").mouseout(function() {
		$(this).find("div").css("display", "none");
	});

	$(".sideMenu .nLi h3").click(function() {
		if($(this).parent(".nLi").hasClass("on")) {
			$(this).next(".sub").slideUp(300, function() {
				$(this).parent(".nLi").removeClass("on")
			});
		} else {
			$(this).next(".sub").slideDown(300, function() {
				$(this).parent(".nLi").addClass("on")
			});
		}
	})
	$(".sub li").mouseover(function() {
		$(this).find("a").css("color", "rgb(3, 197, 255)");
	});
	$(".sub li").mouseout(function() {
		$(this).find("a").css("color", "rgb(168, 175, 185)");
	});
	$(".sideMenu .nLi1").mouseover(function() {
		$(this).find("h3").css("color", "rgb(3, 197, 255)")
	});
	$(".sideMenu .nLi1").mouseout(function() {
		$(this).find("h3").css("color", "rgb(168, 175, 185)")
	});
	$(".sideMenu .nLi1").mouseover(function() {
		$(this).find("h3").find("a").css("color", "rgb(3, 197, 255)")
	});
	$(".sideMenu .nLi1").mouseout(function() {
		$(this).find("h3").find("a").css("color", "rgb(168, 175, 185)")
	});
	/*我的数据下的下拉菜单结束*/
	/*左边导航样式 结束*/
	/*购物车 加减按钮的实现样式  开始*/
	$(".td_changenum").find(".reduce").click(function() {
		var num = $(".num").val();
		num--;
		if(num < 1) {
			num = 1;
		}
		$(".num").val(num);
	});
	$(".td_changenum").find(".add").click(function() {
		var num = $(".num").val();
		num++;
		$(".num").val(num);
	});
	/*购物车 加减按钮的实现样式  结束*/
	/*购物车按钮 开始*/
	$(".cart_button_1_bg").mouseover(function(){
		$(this).css("background","rgb(0, 174, 255");
	});
	$(".cart_button_1_bg").mouseout(function(){
		$(this).css("background", "rgb(0, 189, 255)");
	});
	$(".cart_button_2_bg").mouseover(function(){
		$(this).css("background","rgb(0, 174, 255");
	});
	$(".cart_button_2_bg").mouseout(function(){
		$(this).css("background", "rgb(0, 189, 255)");
	});
	
	/*购物车按钮 结束*/
});
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/myMessage.css" />
<link rel="stylesheet" type="text/css" href="css/umeditor.css" />
<link rel="bookmark" type="image/x-icon" href="img/brower.png" />
<link rel="shortcut icon" href="img/brower.png">
<link rel="icon" href="img/brower.png">
<script src="js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/umeditor.config.js" type="text/javascript" charset="utf-8"></script>
<script src="js/umeditor.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zh-cn.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div class="tbody">
<!--style给定宽度可以影响编辑器的最终宽度-->
<script type="text/plain" id="myEditor" style="width:1000px;height:240px;">
    <p>这里我可以写一些输入提示</p>
</script>

<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');
</script>
<div class="but"><button onclick="butn()">提交留言</button></div>
</div>
<script>
function butn() {
	alert("留言成功！");
	location.href="order.jsp";
}
</script>
</body>
</html>
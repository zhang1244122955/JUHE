<%@page import="java.util.List"%>
<%@page import="com.zz624.entry.Client"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/selectClient.css" rel="stylesheet">
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link rel="bookmark" type="image/x-icon" href="img/brower.png" />
<link rel="shortcut icon" href="img/brower.png">
<link rel="icon" href="img/brower.png">
<script src="js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div class="bod">
<div class="bs-example" data-example-id="hoverable-table">
    <table class="table table-hover">
      <thead>
        <tr>
          <th>Address</th>
          <th>Client Name</th>
          <th>PostCode</th>
          <th>Telephone</th>
          <th>Handle</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${list}" var="client">
		<tr>
          <td>${client.address}</td>
          <td>${client.cName}</td>
          <td>${client.postCode}</td>
          <td>${client.phone}</td>
          <td><button onclick="deleteclient('${client.cid}')" style="background-color: rgb(150,155,158);color: rgb(235,235,235);width: 60px;height: 25px;border: 1px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;" class="delete">删除</button>
          <button onclick="ok('${client.cid}')" style="background-color: rgb(150,155,158);color: rgb(235,235,235);width: 60px;height: 25px;border: 1px rgb(166, 166, 166) solid;border-radius: 3px;cursor: pointer;" class="yes">确定</button>
          </td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

	function deleteclient(cid){
		var b = confirm("是否删除！！！");
		if (b) {
			//alert(gid);
			location.href="DeleteClientServlet?cid="+cid;
		} 
	}
	function ok(cid){
		location.href="GetClientServlet?cid="+cid;
	}

$(".delete").mouseenter(function() {
	$(this).css("background-color","rgb(220, 39, 54)");
	$(this).css("color","rgb(212,212,212)");
});
$(".delete").mouseleave(function() {
	$(this).css("background-color","rgb(150,155,158)");
	$(this).css("color","rgb(235,235,235)");
});

$(".yes").mouseenter(function() {
	$(this).css("background-color","rgb(52, 176, 165)");
	$(this).css("color","rgb(212,212,212)");
});
$(".yes").mouseleave(function() {
	$(this).css("background-color","rgb(150,155,158)");
	$(this).css("color","rgb(235,235,235)");
});
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Reset Password Form  Responsive Widget Template | Home :: w3layouts</title>
<link href="css/repwstyle.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Reset Password Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!--google fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
</head>
<body>
<!--element start here-->
<div class="elelment">
	<h2>重置密码</h2>
	<div class="element-main">
		<h1>找回密码</h1>
		<p> 请输入你的新密码！</p>
		<form action="${pageContext.request.contextPath }/user?method=rePassword" method="post">
			<input name="email" value="${email}" type="hidden">
			<input name="password" type="text" value="Your new password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your new password';}">
			<input type="submit" value="重置密码">
		</form>
	</div>
</div>
<div class="copy-right">
			<p>© 2016 Reset Password Form. All rights reserved | Template by  <a href="http://w3layouts.com/" target="_blank">  W3layouts </a></p>
</div>

<!--element end here-->
</body>
</html>
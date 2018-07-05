<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- header -->
	<div class="agileits_header">
		<div class="container">
			<div class="w3l_offers">
				<p>打折销售高达70%。 <a href="${pageContext.request.contextPath }/product?method=indexProduct">现在购物</a></p>
			</div>
			<div class="agile-login">
			<c:if test="${empty user }">
				<ul>
					<li><a href="registered.jsp"> 创建用户 </a></li>
					<li><a href="login.jsp">登录</a></li>
				</ul>
			</c:if>
			<c:if test="${!empty user }">
				<ul>
					<li style="color:red">欢迎您：${user.user_name }</li>
				<li><a href="${pageContext.request.contextPath }/user?method=logout">退出</a></li>
				</ul>
			</c:if>
			</div>
			<div class="product_list_header">  
					<form action="checkout.jsp" method="post" class="last"> 
<!-- 						<input type="hidden" name="cmd" value="_cart"> -->
<!-- 						<input type="hidden" name="display" value="1"> -->
						<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" ></i></button>
					</form>  
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="logo_products">
		<div class="container">
		<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" ></i>网上订购或致电:(+0123)234567</li>
				</ul>
			</div>
			<div class="w3ls_logo_products_left">
				<h1><a href="">super Market</a></h1>
			</div>
		<div class="w3l_search">
			<form action="${pageContext.request.contextPath }/product?method=searchProduct" method="post">
				<input type="text" name="pname" id="sousuo" placeholder="搜索产品…" required="" value="${pname }">
				<button type="submit" class="btn btn-default search" aria-label="Left Align">
					<i class="fa fa-search" > </i>
				</button>
				<div class="clearfix"></div>
			</form>
		</div>
			
			<div class="clearfix"> </div>
		</div>
	</div>
	
	
	<!-- //header -->
<!-- navigation -->
	<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li class="active" style="margin-left: 50px;"><a href="${pageContext.request.contextPath }/product?method=indexProduct" class="act">首页</a></li>	
									
									<li style="margin-left: 50px;"><a href="${pageContext.request.contextPath }/product?method=findProductListByPage&cid=1">水果蔬菜</a></li>
									
									<li style="margin-left: 50px;"><a href="${pageContext.request.contextPath }/product?method=findProductListByPage&cid=2">饮料食品</a></li>
								
								</ul>
							</div>
							</nav>
			</div>
		</div>
		
<!-- //navigation -->
</body>
</html>
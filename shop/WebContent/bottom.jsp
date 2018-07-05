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
<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
					<h3>联系</h3>
					
					<ul class="address">
						<li><i class="glyphicon glyphicon-map-marker" ></i>1234k Avenue, 4th block, <span>New York City.</span></li>
						<li><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:info@example.com">info@example.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" ></i>+1234 567 567</li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>信息</h3>
					<ul class="info"> 
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">关于我们</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">联系我们</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">短码</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">FAQ's</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">特殊的产品</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>类别</h3>
					<ul class="info"> 
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">食品杂货</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">家庭</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">个人护理</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">包装食品</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="javaScript:void(0);">饮料</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>简况</h3>
					<ul class="info"> 
						<li><i class="fa fa-arrow-right" ></i><a href="${pageContext.request.contextPath }/product?method=findProductListByPage&cid=1">商店</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="checkout.jsp">我的购物车</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="login.jsp">登录</a></li>
						<li><i class="fa fa-arrow-right" ></i><a href="registered.jsp">创建账户</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		
		<div class="footer-copy">
			
			<div class="container">
				<p>©2017年超级市场。版权归|设计公司所有<a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
		</div>
		
	</div>	
	<div class="footer-botm">
			<div class="container">
				<div class="w3layouts-foot">
					<ul>
						<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" ></i></a></li>
						<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" ></i></a></li>
						<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" ></i></a></li>
						<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" ></i></a></li>
					</ul>
				</div>
				<div class="payment-w3ls">	
					<img src="images/card.png" alt=" " class="img-responsive">
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
</body>
</html>
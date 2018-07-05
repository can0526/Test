<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Checkout :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
	
	
	
	
	function remove(pid){
		window.location="${pageContext.request.contextPath }/product?method=cleanOneProduct&pid="+pid;
	}
	
	function decreaseOneProduct(pid,buyNumId,subtotalId) {
// 		window.location="${pageContext.request.contextPath}/product?method=decreaseOneProduct&pid="+pid;
		//$("#productNum").text();

	$.post("${pageContext.request.contextPath}/product",
				{"method":"decreaseOneProduct","pid":pid,"buyNum":$("#"+buyNumId+"").text()},
				function (data) {
					$("#"+buyNumId+"").html(data.buyNum);
					$("#"+subtotalId+"").html(data.subtotal);
					$("#tot").html(data.total);
				},
				"json"					
						)
	}
	
	function addOneProduct(pid,buyNumId,subtotalId) {
// 		window.location="${pageContext.request.contextPath}/product?method=one&pid="+pid+"&buyNum="+buyNum;
		//$("#productNum").text();
// 		alert(pid);
// // 		alert(buyName);
// alert(id1);
// alert(id2);
// alert($("#"+buyNumId+"").text());
		$.post("${pageContext.request.contextPath}/product",
				{"method":"addOneProduct","pid":pid,"buyNum":$("#"+buyNumId+"").text()},
				function (data) {
// 					alert(data.total);
// 					alert(data.subtotal);
// 					alert(data.buyNum);
					
// // 					jQuery.each(data.cartItems, function(i,item){ 
// // // 					for(var js2 in data.cartItems){  
// // 					    jslength++;  
// // 					  //  alert(item.product.pname);
					
//  					})
					$("#"+buyNumId+"").html(data.buyNum);
					$("#"+subtotalId+"").html(data.subtotal);
					$("#tot").html(data.total);
// // 					$("#sub").html(data);
// // 					$("#checkoutBasket").html(bask);
					
// // 					alert(jslength);
				},
			"json"					
		)
}
				
				
				function jiezhang() {
					window.innerheight=100;
					window.innerwidth=200;
					window.open();
				}
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- 引入header.jsp -->
			<jsp:include page="/header.jsp"></jsp:include>
		
<!-- //navigation -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1">
				<li><a href="${pageContext.request.contextPath }/product?method=indexProduct"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">结帐页面</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- checkout -->
	<div class="checkout">
		<div class="container">
			<h2>你的购物车包含:<span>${cart.cartItems.size()}种产品</span><a href="${pageContext.request.contextPath }/product?method=removeAllCart"><span style="float: right;">清除购物车</span></a></h2>
			<div class="checkout-right" id="productt">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>序号</th>	
							<th>产品</th>
							<th>数量</th>  
							<th>产品名称</th>
							<th>价格</th>
							<th>移除</th>
						</tr>
					</thead>
					
					
					<c:forEach items="${cart.cartItems}" var="map" varStatus="status" >
					<tr class="rem${status.count}">
						<td class="invert">${status.count}</td>
						<td class="invert-image"><a href="${pageContext.request.contextPath }/product?method=productInfo&pid=${map.value.product.pid}"><img src="${pageContext.request.contextPath }/${map.value.product.pimage}" alt=" " class="img-responsive" /></a></td>
						<td class="invert">
							 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus" onclick="decreaseOneProduct(${map.value.product.pid },'buy${status.count}','sub${status.count}')">&nbsp;</div>
									<div  class=""><span id="buy${status.count}" >${map.value.buyNum }</span></div>
									<div class="entry value-plus active" onclick="addOneProduct(${map.value.product.pid },'buy${status.count}','sub${status.count}')">&nbsp;</div>
								</div>
							</div>
						</td>
						<td class="invert">${map.value.product.pname }</td>
						<td class="invert" id="sub${status.count}">$${map.value.subtotal }</td>
						<td class="invert">
							<div class="rem">
								<div class="close1" onclick="remove(${map.value.product.pid})"> </div>
							</div>
						</td>
					</tr>
				
				</c:forEach>
				
				
				
								<!--quantity-->
									<script>
									$('.value-plus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
									</script>
								<!--quantity-->
				</table>
			</div>
			<div class="checkout-left">	
				<div class="checkout-left-basket" id="checkoutBasket">
					<h4>结账篮</h4>
					<ul>
						<li>合计 <i>-</i> <span id="tot">$${cart.total }</span></li>
						<li style="margin: 0px">
						<a href="javaScript:void(0);" onclick="jiezhang()"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>结账</a>
						</li>
					</ul>
					
				</div>
				<div class="checkout-right-basket">
					<a href="${pageContext.request.contextPath }/product?method=indexProduct"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>继续购物</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //checkout -->
<!-- //footer -->
<jsp:include page="bottom.jsp"></jsp:include>
<!-- //footer -->	
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- top-header and slider -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>	
<!-- //main slider-banner --> 

</body>
</html>
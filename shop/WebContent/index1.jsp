<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>

<!-- 引入header.jsp -->
			<jsp:include page="/header.jsp"></jsp:include>
<!-- //navigation -->
	<!-- main-slider -->
		<ul id="demo1">
			<li>
				<img src="images/11.jpg" alt="" />
				<!--Slider Description example-->
				<div class="slide-desc">
<!-- 					//<h3>全产品现正与我们合作</h3> -->
				</div>
			</li>
<!-- 			<li> -->
<!-- 				<img src="images/22.jpg" alt="" /> -->
<!-- 				  <div class="slide-desc"> -->
<!-- 					<h3>全香料产品现正与我们合作</h3> -->
<!-- 				</div> -->
<!-- 			</li> -->
			
<!-- 			<li> -->
<!-- 				<img src="images/44.jpg" alt="" /> -->
<!-- 				<div class="slide-desc"> -->
<!-- 					<h3>全产品现正与我们合作</h3> -->
<!-- 				</div> -->
<!-- 			</li> -->
		</ul>
	<!-- //main-slider -->
	<!-- //top-header and slider -->
	<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
		<h2>顶级销售提供</h2>
			<div class="grid_3 grid_5">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">零食提供</a></li>
						<li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">水果推荐</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
							<div class="agile-tp">
								<h5>本周广告</h5>
								<p class="w3l-ad">我们把所有广告上的报价都集中在一个地方，所以你不会错过很多。</p>
							</div>
							
							
							<div class="agile_top_brands_grids">
							
							<c:forEach items="${drinkProductList }" var="pro">
								<div class="col-md-4 top_brand_left">
									<div class="hover14 column">
										<div class="agile_top_brand_left_grid">
											<div class="agile_top_brand_left_grid_pos">
												<img src="images/offer.png" alt=" " class="img-responsive" />
											</div>
											<div class="agile_top_brand_left_grid1">
												<figure>
													<div class="snipcart-item block" >
														<div class="snipcart-thumb">
															<a href="${pageContext.request.contextPath }/product?method=productInfo&pid=${pro.pid}"><img title=" " alt=" " src="${pageContext.request.contextPath }/${pro.pimage}" /></a>		
															<p>${pro.pname }</p>
															<div class="stars">
																<i class="fa fa-star blue-star" ></i>
																<i class="fa fa-star blue-star" ></i>
																<i class="fa fa-star blue-star" ></i>
																<i class="fa fa-star blue-star" ></i>
																<i class="fa fa-star gray-star" ></i>
															</div>
															<h4>${pro.shop_price }<span>${pro.market_price }</span></h4>
														</div>
														<div class="snipcart-details top_brand_home_details">
															<form action="${pageContext.request.contextPath }/cart?pid=${pro.pid}" method="post">
																<fieldset>
																	
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
													</div>
												</figure>
											</div>
										</div>
									</div>
								</div>
								</c:forEach>
								
								<div class="clearfix"> </div>
							</div>
						</div>
						
						
						<div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
							<div class="agile-tp">
								<h5>本周</h5>
								<p class="w3l-ad">我们把所有广告上的报价都集中在一个地方，所以你不会错过很多。</p>
							</div>
							<div class="agile_top_brands_grids">
							
							
							<c:forEach items="${fruitProductList }" var="pro">
								<div class="col-md-4 top_brand_left">
									<div class="hover14 column">
										<div class="agile_top_brand_left_grid">
											<div class="agile_top_brand_left_grid_pos">
												<img src="images/offer.png" alt=" " class="img-responsive" />
											</div>
											<div class="agile_top_brand_left_grid1">
												<figure>
													<div class="snipcart-item block" >
														<div class="snipcart-thumb">
															<a href="${pageContext.request.contextPath }/cart?pid=${pro.pid}"><img title=" " alt=" " src="${pageContext.request.contextPath }/${pro.pimage}" /></a>		
															<p>${pro.pname }</p>
															<div class="stars">
																<i class="fa fa-star blue-star" ></i>
																<i class="fa fa-star blue-star" ></i>
																<i class="fa fa-star blue-star" ></i>
																<i class="fa fa-star blue-star" ></i>
																<i class="fa fa-star gray-star" ></i>
															</div>
															<h4>${pro.shop_price }<span>${pro.market_price }</span></h4>
														</div>
														<div class="snipcart-details top_brand_home_details">
															<form action="${pageContext.request.contextPath }/cart?pid=${pro.pid}" method="post">
																<fieldset>
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																</fieldset>
															</form>
														</div>
													</div>
												</figure>
											</div>
										</div>
									</div>
								</div>
								</c:forEach>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //top-brands -->
 <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
         <a href="javaScript:void(0);"> <img class="first-slide" src="images/b1.jpg" alt="First slide"></a>
       
        </div>
        <div class="item">
         <a href="javaScript:void(0);"> <img class="second-slide " src="images/b3.jpg" alt="Second slide"></a>
         
        </div>
        <div class="item">
          <a href="javaScript:void(0);"><img class="third-slide " src="images/b1.jpg" alt="Third slide"></a>
        </div>
      </div>
    
    </div><!-- /.carousel -->	
<!--banner-bottom-->
				<div class="ban-bottom-w3l">
					<div class="container">
					<div class="col-md-6 ban-bottom3">
							<div class="ban-top">
								<img src="images/p2.jpg" class="img-responsive" alt=""/>
								
							</div>
							<div class="ban-img">
								<div class=" ban-bottom1">
									<div class="ban-top">
										<img src="images/p3.jpg" class="img-responsive" alt=""/>
									</div>
								</div>
								<div class="ban-bottom2">
									<div class="ban-top">
										<img src="images/p4.jpg" class="img-responsive" alt=""/>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="col-md-6 ban-bottom">
							<div class="ban-top">
								<img src="images/111.jpg" class="img-responsive" alt=""/>
							</div>
						</div>
						
						<div class="clearfix"></div>
					</div>
				</div>
<!--banner-bottom-->
<!--brands-->
	
<!--//brands-->
<!-- new -->
	<div class="newproducts-w3agile">
		<div class="container">
			<h3>新产品</h3>
				<div class="agile_top_brands_grids">
				
				<c:forEach items="${newProductList}" var="pro">
					<div class="col-md-3 top_brand_left-1">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="${pageContext.request.contextPath }/product?method=productInfo&pid=${pro.pid}"><img title=" " alt=" " src="${pageContext.request.contextPath }/${pro.pimage}"></a>		
												<p>${pro.pname }</p>
												<div class="stars">
													<i class="fa fa-star blue-star" ></i>
													<i class="fa fa-star blue-star" ></i>
													<i class="fa fa-star blue-star" ></i>
													<i class="fa fa-star blue-star" ></i>
													<i class="fa fa-star gray-star" ></i>
												</div>
													<h4>${pro.shop_price }<span>${pro.market_price }</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="${pageContext.request.contextPath }/cart?pid=${pro.pid}" method="post">
													<fieldset>
														<input type="submit" name="submit" value="Add to cart" class="button" />
													</fieldset>
												</form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
						<div class="clearfix"> </div>
				</div>
		</div>
	</div>
<!-- //new -->
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
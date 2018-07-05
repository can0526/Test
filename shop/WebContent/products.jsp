<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Products :: w3layouts</title>
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
<link rel="stylesheet" type="text/css" href="css/jquery-ui-1.css">
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
//			window.location="${pageContext.request.contextPath }/product?method=findProductListByPage&cid=1"
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
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="${pageContext.request.contextPath }/product?method=indexProduct"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Products</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!--- products --->
	<div class="products">
		<div class="container">
			<div class="col-md-4 products-left">
				<div class="categories">
					<h2>类别</h2>
					<ul class="cate">
						<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>水果和蔬菜</a></li>
							<ul>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>豆芽</a></li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>花</a></li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>新鲜香草 & 调味料</a></li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>新鲜蔬菜</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>进口蔬菜</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>有机水果 & 蔬菜</a></li>
							</ul>
						<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>杂货</a></li>
							<ul>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>木豆</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>干果</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>食用油 & 酥油</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>面粉</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>香料</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>有机原料</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>米产品</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>盐&糖</a></li>
							</ul>
						<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>个人护理</a></li>
							<ul>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>婴儿护理</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>化妆品</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>香水</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>皮肤护理</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>口腔护理</a> </li>
								<li><a href="javaScript:void(0)"><i class="fa fa-arrow-right" aria-hidden="true"></i>剃须的产品</a></li>
							</ul>
					</ul>
				</div>																																												
			</div>
			<div class="col-md-8 products-right">
				<div class="products-right-grid">
					<div class="products-right-grids">
						<div class="sorting">
							<select id="country" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>默认排序</option>
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>按人气排序</option> 
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>按平均等级排序</option>					
								<option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>按价格排序</option>								
							</select>
						</div>
						<script type="text/javascript">
						function changePage(currentPage,pageSize){
							var cid=$("#cid").val();
							window.location="${pageContext.request.contextPath }/product?method=findProductListByPage&cid="+cid+"&pageSize="+pageSize+"&currentPage="+currentPage;
						
						}
						
						$(function(){ 
							//用于用户选择分页数量 回显下拉框
							 $("#country1").val("${pageBean.pageSize}");
						});
						//ajax异步分页
						 function page1(a){
								var cid=$("#cid").val();
								var i=a.selectedIndex;
								 var v=a.options[i].value;
//								window.location="${pageContext.request.contextPath }/product?method=findProductListByPage&cid="+cid+"&pageSize="+v;
								$.post("${pageContext.request.contextPath }/product?method=findPage",
													{"cid":cid,"pageSize":v},
											  function(pageBean){
														var b ="<div class='agile_top_brands_grids'>";
														var c="<nav class='numbering'>"+"<ul class='pagination paging'>";
														
														 jQuery.each(pageBean.list, function(i,item){  
															 
															  b =b+"<div class='col-md-4 top_brand_left'>"+
																  "<div class='hover14 column'>"+
																		"<div class='agile_top_brand_left_grid'>"+
																			"<div class='agile_top_brand_left_grid_pos'>"+
																				"<img src='images/offer.png' alt=' ' class='img-responsive'>"+
																			"</div>"+
																			"<div class='agile_top_brand_left_grid1'>"+
																				"<figure>"+
																					"<div class='snipcart-item block'>"+
																						"<div class='snipcart-thumb'>"+
																							"<a href='${pageContext.request.contextPath }/product?method=productInfo&pid="+item.pid+"'><img title=' ' alt=' ' src='"+item.pimage+"'></a>"+		
																							"<p>"+item.pname+"</p>"+
																							"<h4>"+item.shop_price+"<span>"+item.market_price+"</span></h4>"+
																						"</div>"+
																						"<div class='snipcart-details top_brand_home_details'>"+
																							"<form action='${pageContext.request.contextPath }/cart?pid="+item.pid+"' method='post'>"+
																								"<fieldset>"+
																								"<span>数量：</span>"+
																								"<input type='text' name='buyNum' size='5' value='1'>"+
																								"<input style='margin-top: 10px;' type='submit'  value='Add to cart' class='button'>"+
																								"</fieldset>"+
																							"</form>"+
																						"</div>"+
																					"</div>"+
																				"</figure>"+
																			"</div>"+
																		"</div>"+
																	"</div>"+"</div>";
																	
																	//--------------------------------------------------------------------------------
 															 
																	//--------------------------------------------------------------------------------
												            }); 
														 
														 
														//-------------------------------------------------------------------------------- 
														 if(pageBean.currentPage==1){
																c=c+"<li>"+
																	"<a href='javaScript:void(0);' aria-label='Previous'>"+
																		"<span aria-hidden='true'>&laquo;</span>"+
																	"</a>"+
																"</li>";
																}else if(pageBean.currentPage!=1){
																	c=c+"<li>"+
																	"<a href='javaScript:changePage("+pageBean.currentPage-1+","+pageBean.pageSize+")' aria-label='Previous'>"+
																	"<span aria-hidden='true'>&laquo;</span>"+
																"</a>"+
															"</li>";
															}
// 														 alert(pageBean.totalPage);
														 var arr=new Array()
														 for (var i=1; i<=pageBean.totalPage; i++)
														  {
															 arr[i-1]=i;
														  }
														 
															jQuery.each(arr, function(i,item){ 
																if(pageBean.currentPage==item){
																	c=c+"<li class='active'><a href='javaScript:void(0);'>"+item+"<span class='sr-only'>(current)</span></a></li>";
// 																	c=c+"<li class='active'><href='javaScript:void(0);'>"+item+"<span class='sr-only'>(current)</span></a></li>";
																}else if(pageBean.currentPage!=item){
																	c=c+"<li><a href='javaScript:changePage("+item+","+pageBean.pageSize+")'>"+item+"</a></li>";
																}
															});
															
															if(pageBean.currentPage==pageBean.totalPage){
																c=c+"<li>"+
																	"<a href='javaScript:void(0);' aria-label='Next'>"+
																		"<span aria-hidden='true'>&raquo;</span>"+
																	"</a>"+
																"</li>";
																	}else if(pageBean.currentPage!=pageBean.totalPage){
																c=c+"<li>"+
																"<a href='javaScript:changePage("+(pageBean.currentPage+1)+","+pageBean.pageSize+")' aria-label='Next'>"+
																	"<span aria-hidden='true'>&raquo;</span>"+
																"</a>"+
															"</li>"	;
															}
														 
															//--------------------------------------------------------------------------------
														b=b+"<div class='clearfix'></div></div>";
														c=c+"</ul></nav>";
// 														alert(c);
														var d=b+c;
														$("#productDiv").html(d);
														//$("#productDiv").html("<h1><c:out value='${pageBean.pageSize}'></c:out></h1>");
													},
											  "json"
													);
								}		
								
						</script>
						<form action="${pageContext.request.contextPath }/product?method=findProductListByPage" id="pageForm" >
						<div class="sorting-left">
							<select  id="country1" onchange="page1(this)"  class="frm-f7ield required sect">
								<option value="9">项目9页</option>
								<option value="18">项目18</option> 
								<option value="32">项目32页</option>					
<%-- 								<option value="-1" selected="9==${pageBean.pageSize }?'selected'" onclick="page(18)">全部</option>								 --%>
							</select>
							<input type="hidden" name="cid" id="cid" value="${pageBean.list[0].cid }">
						</div>
						</form>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div id="productDiv">
				<div class="agile_top_brands_grids">
				<c:forEach items="${pageBean.list }" var="pro">
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="images/offer.png" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="${pageContext.request.contextPath }/product?method=productInfo&pid=${pro.pid}"><img title=" " alt=" " src="${pro.pimage }"></a>		
												<p>${pro.pname }</p>
												<h4>${pro.shop_price }<span>${pro.market_price}</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="${pageContext.request.contextPath }/cart?pid=${pro.pid}" method="post">
<!-- 													<fieldset> -->
<!-- 														<input type="hidden" name="cmd" value="_cart"> -->
<!-- 														<input type="hidden" name="add" value="1"> -->
<!-- 														<input type="hidden" name="business" value="	 "> -->
<!-- 														<input type="hidden" name="item_name" value="Fortune Sunflower Oil"> -->
<!-- 														<input type="hidden" name="amount" value="35.99"> -->
<!-- 														<input type="hidden" name="discount_amount" value="1.00"> -->
<!-- 														<input type="hidden" name="currency_code" value="USD"> -->
<!-- 														<input type="hidden" name="return" value=" "> -->
<!-- 														<input type="hidden" name="cancel_return" value=" "> -->
														<span>数量：</span>
														<input type="text" name="buyNum" size="5" value="1">
														<input style="margin-top: 10px;" type="submit"  value="Add to cart" class="button">
<!-- 													</fieldset> -->
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
				<nav class="numbering">
					<ul class="pagination paging">
					
					<c:if test="${pageBean.currentPage ==1}">
					<li>
							<a href="javaScript:void(0);" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
					</c:if>
					<c:if test="${pageBean.currentPage!=1 }">
					<li>
							<a href="javaScript:changePage(${pageBean.currentPage -1},${pageBean.pageSize })" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
					</c:if>
						
						<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
						<c:if test="${pageBean.currentPage==page}">
						<li class="active"><a href="javaScript:void(0);">${page}<span class="sr-only">(current)</span></a></li>
						</c:if>
						<c:if test="${pageBean.currentPage!=page }">
						<li><a href="javaScript:changePage(${page},${pageBean.pageSize })">${page }</a></li>
						</c:if>
						</c:forEach>
						
						
						
						<c:if test="${pageBean.currentPage==pageBean.totalPage}">
						<li>
							<a href="javaScript:void(0);" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
						</c:if>
						<c:if test="${pageBean.currentPage!=pageBean.totalPage}">
						<li>
							<a href="javaScript:changePage(${pageBean.currentPage+1},${pageBean.pageSize })" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
						</c:if>
					</ul>
				</nav>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!--- products --->
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link href="resource/css/buttonAdd.css" rel="stylesheet"
	type="text/css" medial="all" />
<link href="resource/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="resource/js/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".dropdown img.flag").addClass("flagvisibility");

				$(".dropdown dt a").click(function() {
					$(".dropdown dd ul").toggle();
				});

				$(".dropdown dd ul li a").click(
						function() {
							var text = $(this).html();
							$(".dropdown dt a span").html(text);
							$(".dropdown dd ul").hide();
							$("#result").html(
									"Selected value is: "
											+ getSelectedValue("sample"));
						});

				function getSelectedValue(id) {
					return $("#" + id).find("dt a span.value").html();
				}

				$(document).bind('click', function(e) {
					var $clicked = $(e.target);
					if (!$clicked.parents().hasClass("dropdown"))
						$(".dropdown dd ul").hide();
				});

				$("#flagSwitcher").click(function() {
					$(".dropdown img.flag").toggleClass("flagvisibility");
				});
			});
</script>
<!-- start menu -->
<link href="resource/css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="resource/js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="resource/js/move-top.js"></script>
<script type="text/javascript" src="resource/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="single">
		<div class="wrap">
			<div class="">
				<c:forEach items="${itemFinds}" var="item">
					<div class="labout span_1_of_a1" >
						<!-- start product_slider -->
						<li class="etalage_thumb thumb_5 etalage_thumb_active"
							style="background-image: none; display: list-item; opacity: 1; list-style-type: none">
							<img class="etalage_thumb_image" src="${item.image }"
							style="display: inline; width: 900px; height: 400px; opacity: 1;">
						</li>
						<!-- end product_slider -->
					</div>
					<div class="cont1 span_2_of_a1" style="margin: 0">
						<h1 class="" style="margin-bottom: 8px; font-size:30px; font-weight:bold">${item.name}</h1>
						<h1 class="" style="margin-bottom: 8px; font-size: 25px;font-style:italic;color: #777">${item.type }</h1>
							
						<div class="price_single" style="margin:0">
							<fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.price}" />
											đ
						</div>
				<div class="btn_form">
					<form action=>	 					 
						<a class="rainbow-button1" href="addtoCart?id=${item.id}" alt="Add To Bag" ></a>						
					</form>
				</div>
				<p class="m_desc" style="margin-bottom: 15px; font-size: 15px">${item.introduce }</p>
				<div class="social_single">
					<ul>
						<li class="fb"><a href="#"><span> </span></a></li>
						<li class="tw"><a href="#"><span> </span></a></li>
						<li class="g_plus"><a href="#"><span> </span></a></li>
						<li class="rss"><a href="#"><span> </span></a></li>
					</ul>
				</div>
			</div>
			<div class="clear"></div>

			<div class="toogle">
				<h3 class="m_3" style="font-weight: bold;"><i class="fas fa-tools" style="font-size:24px"></i> Configuration</h3>
				<p class="m_text" style="font-size: 14px; color: black" >${item.config }</p>
			</div>
			<div class="toogle" style="margin-top: 35px">
				<h3 class="m_3" style="font-weight: bold; "><i class="fas fa-headphones" style="font-size:24px"></i> About this item</h3>
				<p class="m_text" style="font-size: 14px; color: black">${item.detail }</p>
			</div>
		</div>
		</c:forEach>
		
		<div class="clear"></div>
		<div style="height: 80px"></div>
	</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>

	<script type="text/javascript">
		$(document).ready(function() {

			var defaults = {
				containerID : 'toTop', // fading element id
				containerHoverID : 'toTopHover', // fading element hover id
				scrollSpeed : 1200,
				easingType : 'linear'
			};

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<a href="#" id="toTop" style="display: block;"><span
		id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>
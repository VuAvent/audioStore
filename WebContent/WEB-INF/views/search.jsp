<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Search</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="resource/css/buttonSearch.css" rel="stylesheet"
	type="text/css" media="all" />
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

	<div class="main">
		<div class="wrap">
			<div class="content-bottom">
				<br>
				<form action="${pageContext.request.contextPath}/search"
					method="post" style="text-align: center">
					<input type="text" name="textSearch" placeholder="Search"
						style="width: 220px; height: 25px; border-radius: 5px; font-size:16px"> <input
						type="submit" class="rainbow-button" value="Search">
				</form>
				<c:forEach items="${itemSearch}" var="item">

					<div class="box1">

						<div class="col_1_of_3 span_1_of_3">

							<a href="single?id=${item.id }">
								<div class="view view-fifth">
									<div class="top_box">
										<h1 class="m_1">${item.name}</h1>
										<p class="m_2">${item.type}</p>
										<div class="grid_img">
											<div class="css3">
												<img src="${item.image}" alt="" width="200" height="180" />
											</div>
											<div class="mask">
												<div class="info">Quick View</div>
											</div>
										</div>
										<div class="price">
											<fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.price}" />
											đ
										</div>
									</div>
								</div>
								<ul class="list">
									<li><img src="resource/images/plus.png" alt="" />
										<ul class="icon1 sub-icon1 profile_img">
											<li><a class="active-icon c1" href="addtoCart?id=${item.id}">Add To Bag </a></li>
										</ul></li>
								</ul>
							</a>
						</div>
				</c:forEach>
				<div class="clear"></div>
			</div>
		</div>
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
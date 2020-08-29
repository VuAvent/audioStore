<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Success</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link href="resource/css/buttonHere.css" rel="stylesheet"
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
	<form action="${pageContext.request.contextPath}/home"
		style="text-align: center">
		<div
			style="width: 1203px; height: 495px; display: flex; justify-content: center">
			
			<div style="color: #888; padding: 30px 100px 300px 350px">
			<i class="fas fa-check-circle" style="color:green;font-size: 60px;padding-bottom: 10px; "></i><br>
<!-- 			<i class="fa fa-check" aria-hidden="true" style="color:green;font-size: 60px;padding-bottom: 10px; "></i>
 -->			
				<p style="font-weight: bold; font-size: 30px; color: #666; font-family:Cambria">You're all set!</p>
				<div style="width: 160px; background: #EEE; border-radius: 8px; margin: 0 auto;">TOTAL: 
				 <fmt:formatNumber type='number' maxFractionDigits='3' value='${total }' />đ
				</div>
				<br>
				<p style=" font-family:Candara; font-size: 20px">Thanks for being awesome,</p>
				<p style=" font-family:Candara; font-size: 20px"> we hope you enjoy your purchase!</p> <br> <br>
				
				<p style=" font-style: italic;">
					Click <input type="submit" class="rainbow-button" value="Here">
					to continue shopping.
				</p>
			</div>
		</div>
	</form>
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
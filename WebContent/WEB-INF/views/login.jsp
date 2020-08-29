<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
	
	<div class="login">
		<div class="wrap">
			<div class="col_1_of_login span_1_of_login">
				<h4 class="title">New Customers</h4>
				<h5 class="sub_title">Register Account</h5>
				<p>
					Our online store brings you greater convenience and helps you to
					save time and money.<br> You can visit our Online Store right
					now to see our product range. Just note, until you have registered
					above and receive your login details you won’t be able to see
					prices or place an order. To open a account for store and
					online shopping click here:
				</p>
				<div class="button1">
					<a href="${pageContext.request.contextPath}/register"><input
						type="submit" name="Submit" value="Register"></a>
				</div>
				<div class="clear"></div>
			</div>
			<div class="col_1_of_login span_1_of_login">
				<div class="login-title">
					<h4 class="title">Registered Customers</h4>
					<div class="comments-area">
						<form action="${pageContext.request.contextPath}/login"
							method="post">
							<p>
								<label>UserName</label> <span>*</span> <input type="text"
									name="username">
							</p>
							<p>
								<label>Password</label> <span>*</span> <input type="password"
									name="password">
							</p>
							<p id="login-form-remember">
								<label><a href="#">Forget Your Password ? </a></label>
							</p>
							<p>
								<input type="submit" value="Login">
							</p>
						</form>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div style="height: 200px"></div>
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
</body>
</html>
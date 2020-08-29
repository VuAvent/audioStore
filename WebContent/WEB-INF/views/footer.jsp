<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="footer">
		<div class="footer-top">
			<div class="wrap">
				<div class="col_1_of_footer-top span_1_of_footer-top">
					<ul class="f_list">
						<li><img src="resource/images/f_icon.png" alt="" /><span
							class="delivery">Free delivery on all orders</span></li>
					</ul>
				</div>
				<div class="col_1_of_footer-top span_1_of_footer-top">
					<ul class="f_list">
						<li><img src="resource/images/f_icon1.png" alt="" /><span
							class="delivery">Customer Service :<span class="orange">
									(+84) 905-6983 (freephone)</span></span></li>
					</ul>
				</div>
				<div class="col_1_of_footer-top span_1_of_footer-top">
					<ul class="f_list">
						<li><img src="resource/images/f_icon2.png" alt="" /><span
							class="delivery">Fast delivery & free returns</span></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="footer-middle">
			<div class="wrap">
				<div class="section group">
					<div class="col_1_of_middle span_1_of_middle"></div>
					<div class="col_1_of_middle span_1_of_middle">
						<ul class="f_list1">
							<li><span class="m_8">Sign up for email and Get 15%
									off</span>

								<form action="${pageContext.request.contextPath}/search"
				method="post" >
				<input type="text" name="textSearch"> 
				<input type="submit" value="search" style="background-color:black; color: orange">
			</form>
								<div class="clear"></div></li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
</body>
</html>
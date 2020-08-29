<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Checkout</title>
<link href="resource/css/buttonDel.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resource/css/buttonBuy.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resource/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resource/css/checkout.css" rel="stylesheet" type="text/css"
	media="all" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- start menu -->
<link href="resource/css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="resource/js/megamenu.js"></script>


</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br>

	 <table>
		<tr>
			<!-- <th>ID</th> -->
			<th>Image</th>
			<th>Name</th>
			<th>Type</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Amount</th>
			<th></th>
		</tr>
		
		<c:set var="s" value="0"></c:set>

		<c:forEach items="${order.products}" var="item">
			<c:set var="s" value="${s + item.item.price * item.quantity }"></c:set>
			<tr>
				<td><img src="${item.item.image}"></td>
				<td>${item.item.name }</td>
				<td>${item.item.type}</td>

				<td>
					<button style="border:0.1px; border-radius:3px; font-size:18px">
						<a style="color: #999"
							href="decreaseQuantity?name=${item.item.name }">-</a>
					</button> ${item.quantity} 
					<button style="border:0.1px; border-radius:3px;font-size: 18px">
						<a style="color: #999"
							href="increaseQuantity?name=${item.item.name }">+</a>
					</button>
				</td>
				
				<td><fmt:formatNumber type="number" maxFractionDigits="3"
						value="${item.item.price}" />đ</td>
				<td style="font-weight:bold"><fmt:formatNumber type="number" maxFractionDigits="3"
						value="${item.item.price * item.quantity }" />đ</td>
				<td><form>
						<a class="rainbow-button1"
							href="deleteOrder?name=${item.item.name}" alt="Delete"></a>
					</form></td>
					
			</tr>
		</c:forEach>
		<tr  style="height: 20px">
		</tr>
		<tr style=" font-size: 20px">
			<th colspan="5">Total</th>
<%-- 			<th>${s}</th>
 --%>			<th><fmt:formatNumber type="number" maxFractionDigits="3"
					value="${s}" />đ</th>
		</tr>
	
	</table> 

	<%-- <form>
		<button><a href="success?total=${s}"> BUY </a></button>
		<a href="success?total=${s}" class="rainbow-button" 
			style="margin: 0 auto" alt="BUY"></a>
	</form> --%>
		<div  style="height: 60px"></div>

	<form action="${pageContext.request.contextPath}/success?total=${s}"
		method="post" style="text-align: center;">
		<input type="submit" class="rainbow-button" value="BUY"
			style="margin: 0 auto">
	</form>

		<div  style="height: 265px"></div>


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

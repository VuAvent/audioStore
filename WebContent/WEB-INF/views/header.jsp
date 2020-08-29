<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

</head>
<body>
	<div class="header-top">
		<div class="wrap">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/home"><img
					src="resource/images/logo11.jpg" alt="" /></a>
			</div>
			<div class="cssmenu">
				<ul>
					<li><a href="${pageContext.request.contextPath}/item">All
							Product</a></li>

					<%
						HttpSession session1 = request.getSession();
					if (session1 != null && session1.getAttribute("username") != null) {

						out.println("<li><a href='/audio/logout'>Log Out</a></li>");

					} else {
						out.println("<li><a href='/audio/login'>Log In</a></li>");
					}
					%>


				</ul>
			</div>

			<div class="clear"></div>
		</div>
	</div>
	<div class="header-bottom">
		<div class="wrap">
			<!-- start header menu -->
			<ul class="megamenu skyblue">
				<li><a class="color1"
					href="${pageContext.request.contextPath}/home">Home</a></li>
				<li class="grid"><a class="color2" href="type?type=sony">Sony</a></li>
				<li class="active grid"><a class="color4"
					href="type?type=apple">Apple</a></li>
				<li><a class="color5" href="type?type=senheiser">Senheiser</a></li>
				<li><a class="color6" href="type?type=marshall">Marshall</a></li>
				<li><a class="color6" href="type?type=jabra">Jabra</a></li>
				<li><a class="color7" href="type?type=bose">Bose</a></li>
				<li><a class="color8" href="type?type=anker">Anker</a></li>
				<li><a class="color9" href="type?type=samsung">Samsung</a></li>
				<li><a class="color9" href="type?type=jbl">JBL</a></li>
				<li><a class="color9" href="type?type=skullcandy">Skullcandy</a></li>
				<li><a class="color9"
					href="${pageContext.request.contextPath}/search"><i
						class="fas fa-search"></i></a></li>

			</ul>
			<div class="clear"></div>
		</div>
	</div>

</body>
</html>
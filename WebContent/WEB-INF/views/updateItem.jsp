<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">

<!-- Title Page-->
<title>Update Item</title>

<!-- Fontfaces CSS-->
<link href="resource/admin/css/font-face.css" rel="stylesheet"
	media="all">
<link
	href="resource/admin/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link
	href="resource/admin/vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link
	href="resource/admin/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="resource/admin/vendor/bootstrap-4.1/bootstrap.min.css"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link href="resource/admin/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all">
<link
	href="resource/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="resource/admin/vendor/wow/animate.css" rel="stylesheet"
	media="all">
<link href="resource/admin/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all">
<link href="resource/admin/vendor/slick/slick.css" rel="stylesheet"
	media="all">
<link href="resource/admin/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="resource/admin/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="resource/admin/css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
	<div class="page-wrapper">

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="#"> <img src="resource/admin/images/logo3.jpg"
					alt="Cool Admin" />
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li class="active"><a
							href="${pageContext.request.contextPath}/admin"> <i
								class="fas fa-table"></i>Category
						</a></li>
						<li class="active"><a
							href="${pageContext.request.contextPath}/admin2"> <i
								class="fas fa-copy"></i>Orders
						</a></li>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="header-wrap">
							<h2 class="title-1">
								<a href="">PRODUCTS</a>
							</h2>
							<button class="au-btn au-btn-icon au-btn--blue">
								<a style="color: white"
									href="${pageContext.request.contextPath}/insertItem">Add
									item</a>
							</button>

						</div>
					</div>
				</div>
			</header>
			<!-- END HEADER DESKTOP-->

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="table-responsive m-b-40">
					<table class="table table-borderless table-data3">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Type</th>
								<th>Price</th>
								<th>Image</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<form action="${pageContext.request.contextPath}/updateItem"
								method="post" enctype='multipart/form-data'>
								<tr class="tr-shadow">
									<td><input type="text" value="${itemFind.id}" name="id"
										hidden="true"></td>
									<td><input type="text" value="${itemFind.name}"
										name="name" placeholder="name"></td>
									<td><input type="text" value="${itemFind.type}"
										name="type" placeholder="type"></td>
									<td class="desc"><input type="text"
										value="${itemFind.price}" name="price" placeholder="price"></td>
									 <td><input type="file" value="${itemFind.image }"
										name="image"></td>
									<td>
										<button value="update" type="submit" class="item"
											data-toggle="tooltip" data-placement="top" title="Send">
											<i class="zmdi zmdi-mail-send"></i>
										</button>
									</td>
								</tr>
							</form>
						</tbody>
					</table>
				</div>
				<!-- END DATA TABLE-->

				<!-- Jquery JS-->
				<script src="resource/admin/vendor/jquery-3.2.1.min.js"></script>
				<!-- Bootstrap JS-->
				<script src="resource/admin/vendor/bootstrap-4.1/popper.min.js"></script>
				<script src="resource/admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
				<!-- Vendor JS       -->
				<script src="resource/admin/vendor/slick/slick.min.js">
					
				</script>
				<script src="resource/admin/vendor/wow/wow.min.js"></script>
				<script src="resource/admin/vendor/animsition/animsition.min.js"></script>
				<script
					src="resource/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
					
				</script>
				<!-- Main JS-->
				<script src="resource/admin/js/main.js"></script>
</body>
</html>
<!-- end document-->

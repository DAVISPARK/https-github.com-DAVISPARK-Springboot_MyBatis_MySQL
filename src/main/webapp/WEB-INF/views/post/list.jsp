<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list 페이지</title>
</head>
<body>
<img src="/nayeon.jpg" width="50px" height="50px">
<table border= "1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>날짜</th>
	</tr>
	<c:forEach var="post" items="${posts}">
		<tr>
			<td>${post.id}</td>
			<td><a href="/post/${post.id}">${post.title}</a></td>
			<td>${post.createDate}</td>
		</tr>
		</c:forEach>
</table>
<a href="/post/writeForm">글쓰기</a>
</body>
</html> --%>

<!-- 프리젠테이션 계층 --> 

<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Fu*king Blog</title>
	<meta charset="UTF-8">
	<meta name="description" content="Photo Gallery HTML Template">
	<meta name="keywords" content="endGam,gGaming, magazine, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">


	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="resources/css/animate.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>


	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Top right elements -->
	<div class="spacial-controls">
		<div class="search-switch"><img src="resources/img/search-icon.png" alt=""></div>
		<div class="nav-switch-warp">
			<div class="nav-switch">
				<div class="ns-bar"></div>
			</div>
		</div>
	</div>
	<!-- Top right elements end -->

	<div class="main-warp">
		<!-- header section -->
		<header class="header-section">
			<div class="header-close">
				<i class="fa fa-times"></i>
			</div>
			<div class="header-warp">
				<a class="site-logo">
					<img src="resources/img/blog.png" alt="" width="auto" height="100"><!--"./img/logo.png"-->
				</a>
			<!-- 	<div style="position:absolute; width:300px; height:200px; top:200px; right:50px;">
					<a href="/visitor/profile"><img style="border-radius:20px" src="resources/img/slider-bg-3.jpg" width="50px" height="50px" /></a>
				</div> -->
				<ul class="main-menu">
					<li class="active"><a href="/post">Home</a></li>
					<li><a href="post/writeForm">Posting</a></li>
					<c:choose>
					<c:when test="${empty sessionScope.visitor}">
					<li><a href="visitor/join">Join</a></li>
					<li><a href="visitor/login">Logout</a></li>
					</c:when>
					<c:otherwise>
					<li><a href="visitor/join">profile</a></li>
					<li><a href="visitor/login">Logout</a></li>
					</c:otherwise>
					</c:choose>
				</ul>

			</div>
		</header>
		<!-- header section end -->
		
		<!-- Page section -->
		<c:forEach var="post" items="${posts}">
		<div class="page-section home-page">
			<div class="hero-slider owl-carousel">
				<div class="slider-item d-flex align-items-center set-bg" data-setbg="resources/img/slider-bg-3.jpg" data-hash="slide-1">
					<div class="si-text-box">
						<h2>${post.title}</h2>
						<p>${post.content}</p>
						<a href="/post/${post.id}" class="site-btn">Read More</a>
					</div>
					<div class="next-slide-show set-bg" data-setbg="resources/img/slider-bg-2.jpg">
						<a href="/post/${param.page-1}" class="ns-btn">Next</a>
						</div>	
					</div>
				</div>

			</div>
			</c:forEach>
			<div id="snh-1"></div>
		</div>
		<!-- Page section end-->
	</div>

	<!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">x</div>
			<form class="search-moderl-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/isotope.pkgd.min.js"></script>
	<script src="resources/js/imagesloaded.pkgd.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/main.js"></script>

	</body>
</html>

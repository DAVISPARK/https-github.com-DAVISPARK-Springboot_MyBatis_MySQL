<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기 페이지</title>
</head>
<body>
제목 : ${post.title}<br/>
작성자 아이디 : ${post.userId}<br/>
내용 : ${post.content}<br/>
<a href="/post/updateForm/${post.id}">수정하기</a>
<a href="/post/delete/${post.id}">삭제하기</a> 
</body>
</html> --%>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Photo Gallery HTML Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="Photo Gallery HTML Template">
	<meta name="keywords" content="endGam,gGaming, magazine, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="/resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">


	<!-- Stylesheets -->
	<link rel="stylesheet" href="/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="/resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="/resources/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="/resources/css/animate.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="/resources/css/style.css"/>


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

	<div class="main-warp">
		<!-- header section -->
		<header class="header-section">
			<div class="header-close">
				<i class="fa fa-times"></i>
			</div>
			<div class="header-warp">
				<a href="" class="site-logo">
					<img src="/resources/img/blog.png" alt="" width="auto" height="100"><!--"./img/logo.png"-->
				</a>
				<ul class="main-menu">
					<li class="active"><a href="/post">Home</a></li>
					<li><a href="post/writeForm">Posting</a></li>
					<li><a href="visitor/join">Join</a></li>
					<li><a href="visitor/login">Login</a></li>
				</ul>

			</div>
		</header>
		<!-- header section end -->


		<!-- Page section -->
		<div class="page-section blog-page">
			<div class="blog-warp">
				<div class="blog-track">
					<div class="blog-post">
						<h2 class="post-title">${post.title}</h2>
						<div class="post-metas">
							<div OnClick= "location.href ='/post/updateForm/${post.id}'" style="cursor:pointer;" class="post-meta">UPDATE</div>|
							<div OnClick= "location.href ='/post/delete/${post.id}'" style="cursor:pointer;" class="post-meta">DELETE</div>
						</div>
						
						<p>${post.content}</p>
					</div>
				</div>
			</div>
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
	<script src="/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/owl.carousel.min.js"></script>
	<script src="/resources/js/jquery.nicescroll.min.js"></script>
	<script src="/resources/js/isotope.pkgd.min.js"></script>
	<script src="/resources/js/imagesloaded.pkgd.min.js"></script>
	<script src="/resources/js/circle-progress.min.js"></script>
	<script src="/resources/js/main.js"></script>

	</body>
</html>

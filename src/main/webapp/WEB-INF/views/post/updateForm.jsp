<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
<form action="/post/update" method="post">
	<input type="hidden" name="id" value="${post.id }"/>
	<input type="text" name="title" value="${post.title}" placeholder="title"/><br/>
	<textarea rows="5" cols="20" name="content" >
		${post.content}
	</textarea><br/>
	<input type="submit" value="전송"/>

</form>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>

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
<!--================Contact Area =================-->
<br/><br/><br/><br/><br/><br/><br/><br/>
<section class="contact_area">
	<div class="container">
		<div class="row">

			<div class="col-lg-12">
				<form class="row contact_form" action="/post/update" method="post">
					<input type="hidden" name="id" value="${post.id }" />
					<div class="col-md-12">
						<div class="form-group">
							<input type="text" class="form-control" value="${post.title}" id="title" name="title" placeholder="Title">
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<textarea class="form-control note-editor" name="content" id="summernote">${post.content}</textarea>
						</div>
					</div>
					<div class="col-md-12 text-right">
						<button type="submit" value="submit" class="btn submit_btn">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!--================Contact Area =================-->
<br />
<br />

<script>
	$('#summernote').summernote({
		placeholder : '글을 입력하세요.',
		tabsize : 2,
		height : 300
	});
	$('.dropdown-toggle').dropdown();
</script>

		<!-- Page section end-->
	</div>


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



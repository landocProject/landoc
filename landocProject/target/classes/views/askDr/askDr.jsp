<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>의사에게 물어봐</title>
<meta charset="UTF-8">
<meta name="description" content="SolMusic HTML Template">
<meta name="keywords" content="music, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon" />

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
<!-- Stylesheets -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" />

<!-- Main Stylesheets -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css" />


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
	<!-- Header section -->
	<%@ include file="../static/header.jsp"%>
	<!-- Header section end -->

	<!-- Playlist section -->
	<section class="premium-section spad" style="padding-bottom: 150px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title">
						<h1 class="mb-5" style="font-size: 50px;">어디가 아프세요???</h1>
					</div>
				</div>
				<div class="col-lg-6">
					<p>진료과목에 따른 여러 의사선생님들을 랜선에서 만나보세요!</p>
				</div>
			</div>
			<div class="row">
				<%@ include file="../static/askDrCategory.jsp"%>
				<%-- <div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/가정의학과.png"
							alt="">
						</a>
						<h4>가정의학과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/내과.png"
							alt="">
						</a>
						<h4>내과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/마취통증의학과.png"
							alt="">
						</a>
						<h4>통증의학과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/비뇨기과.png"
							alt="">
						</a>
						<h4>비뇨기과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/산부인과.png"
							alt="">
						</a>
						<h4>산부인과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/성형외과.png"
							alt="">
						</a>
						<h4>성형외과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/소아과.png"
							alt="">
						</a>
						<h4>소아과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/신경과.png"
							alt="">
						</a>
						<h4>신경과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/신경외과.png"
							alt="">
						</a>
						<h4>신경외과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/안과.png"
							alt="">
						</a>
						<h4>안과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/영상의학과.png"
							alt="">
						</a>
						<h4>영상의학과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/외과.png"
							alt="">
						</a>
						<h4>외과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/이비인후과.png"
							alt="">
						</a>
						<h4>이비인후과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/재활의학과.png"
							alt="">
						</a>
						<h4>재활의학과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/정신건강의학과.png"
							alt="">
						</a>
						<h4>정신의학과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/정형외과.png"
							alt="">
						</a>
						<h4>정형외과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/치과.png"
							alt="">
						</a>
						<h4>치과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/피부과.png"
							alt="">
						</a>
						<h4>피부과</h4>
					</div>
				</div>
				<div class="col-lg-2 col-sm-6 ">
					<div class="premium-item">
						<a href="#"> <img
							src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/한의원.png"
							alt="">
						</a>
						<h4>한의원</h4>
					</div>
				</div> --%>
			</div>
			<br>
			<br>
			<br>
			<div class="row">
				<!-- <div class="section-title"> -->
				<h1 class="mb-5" style="font-size: 50px;">의사선생님을 찾으세요?</h1>
				<!-- </div> -->
			</div>
			<div class="row">
				<p>찾으시는 의사선생님의 성함을 검색해주세요!</p>
			</div>
			<div class="row">
				<form>
					<div class="form-row">
						<!-- col-12 col-md-6 mb-2 mb-md-0 -->
						<div class="col-12 col-md-6 mb-2 mb-md-0">
							<input type="text" class="form-control form-control-lg"
								placeholder="성함" size="70">
						</div>
						<div class="col-12 col-md-3">
							<button type="submit" class="btn btn-block btn-lg btn-primary"
								style="background-color: #0071ce;">검색</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>

	<!-- Footer section -->
	<%@ include file="../static/footer.jsp"%>
	<!-- Footer section end -->

	<!--====== Javascripts & Jquery ======-->
	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
</body>
</html>

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
                <div class="col-lg-12">
                    <h1 class="mb-5" style="font-size: 50px; text-align:center;">가정의학과</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-1 col-sm-1"></div>
                            <div class="col-lg-3 col-sm-3"> <!-- mb-2 mb-md-0-->
                                <select class="form-control form-control-sm " style="width: 100%;">
                                    <option value="0">----------</option>
                                    <option value="1">제목</option>
                                    <option value="2">내용</option>
                                </select>
                            </div>
                            <div class="col-lg-5 col-sm-5"> <!-- mb-2 mb-md-0-->
                                <input type="text" class="form-control form-control-sm">
                            </div>
                            <div class="col-lg-1 col-sm-1">
                                <button type="submit" class="btn btn-block btn-sm btn-primary"
                                    style="background-color:  #0071ce;">검색</button>
                            </div>
                            <div class="col-lg-1 col-sm-1">
                                <button type="button" class="btn btn-block btn-sm btn-primary" style="background-color:  #0071ce;"
                                    onclick="location.href='insertAskDoctor.html'">글쓰기</button>
                            </div>
                            <div class="col-lg-1 col-sm-1"></div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-1 col-sm-1"></div>
                <div class="col-lg-8 col-sm-8">
                    <input id="choose" type="checkbox"> 채택완료된 글만 보기
                    <script>
                        $(function () {
                            if ($("#choose").is(":checked") == true) {
                                //채택완료된 답변만 보게 설정
                            }
                            else {
                                //기본설정
                            }
                        });
                    </script>
                </div>
                <div class="col-lg-2 col-sm-2">
                    <button type="button" class="btn btn-block btn-sm btn-primary" style="background-color:  #0071ce;"
                    onclick="location.href='askDr.html'">목록으로</button>
                </div>
                <div class="col-lg-1 col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-lg-1 col-sm-1"></div>
                <div class="col-lg-10 col-sm-10">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th style="width:10%">번호</th>
                                <th style="width:40%">제목</th>
                                <th style="width:15%">닉네임</th>
                                <th style="width:20%">날짜</th>
                                <th style="width:15%">채택여부</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- <tr>
                                <td>1</td>
                                <td>배아파요!</td>
                                <td>급똥범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>코아파요!</td>
                                <td>환절기고범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>머리아파요!</td>
                                <td>두범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>배아파요!</td>
                                <td>급똥범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>코아파요!</td>
                                <td>환절기고범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>머리아파요!</td>
                                <td>두범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>배아파요!</td>
                                <td>급똥범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>코아파요!</td>
                                <td>환절기고범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>머리아파요!</td>
                                <td>두범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>배아파요!</td>
                                <td>급똥범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>코아파요!</td>
                                <td>환절기고범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>머리아파요!</td>
                                <td>두범석</td>
                                <td>2020-07-03</td>
                                <td>채택대기</td>
                            </tr> -->
						<c:forEach items="${askDrBoardList}" var="item" >
							<c:if test="${empty item}">
							<tr>
							    <td colspan='4'>게시글이 없습니다.</td>
							</tr>								
							</c:if>
							<c:if test="${!empty item}">
							<tr>
							    <td>${item.bNo }</td>
							    <td>${item.bTitle }</td>
							    <td>${item.nickname }</td>
							    <td>${item.submitDate }</td>
							    <td>채택대기</td>
							</tr>
							</c:if>
						</c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-lg-1 col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-lg-1 col-sm-1"></div>
                <div class="col-lg-10 col-sm-10" style="text-align:center;">
                    <nav>
                        <button class="btn btn-md" onclick="location.href='#'">&laquo;</button>
                        &nbsp;&nbsp;
                        <button class="btn btn-md" onclick="location.href='#'">1</button>
                        &nbsp;&nbsp;
                        <button class="btn btn-md" onclick="location.href='#'">2</button>
                        &nbsp;&nbsp;
                        <button class="btn btn-md" onclick="location.href='#'">3</button>
                        &nbsp;&nbsp;
                        <button class="btn btn-md" onclick="location.href='#'">4</button>
                        &nbsp;&nbsp;
                        <button class="btn btn-md" onclick="location.href='#'">5</button>
                        &nbsp;&nbsp;
                        <button class="btn btn-md" onclick="location.href='#'">&raquo;</button>
                    </nav>
                </div>
                <div class="col-lg-1 col-sm-1"></div>
            </div>

		</div>
	</section>

	<!-- Footer section -->
	<%@ include file="../static/footer.jsp"%>
	<!-- Footer section end -->
	<!--====== Javascripts & Jquery ======-->
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
	</body>
</html>

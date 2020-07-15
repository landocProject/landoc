<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Header section -->
	<header class="header-section clearfix">
		<a href="index.html" class="site-logo">
			<img src="<%=request.getContextPath()%>/resources/img/mainlogo.png" alt="" style="width: 100px; height: 100px;">
		</a>
		
		<ul class="main-menu">
			<li><a href="#">병원찾기</a></li>
			<li><a href="#">리뷰쓰기</a></li>
			<li><a href="askDr.do">의사에게 물어봐</a></li>
			<li><a href="productIndex.do">의사추천 영양제</a></li>

			<div class="header-right" style="padding-top: 0%; padding-bottom: 0%;">
				<div class="user-panel">
					<li>
						<!--로그인 성공시 닉네임으로 변경, ul 태그 화면뿌리기 -->
						<a href="login.do">로그인</a>
						<ul class="sub-menu" style="left: 0px;">
							<li><a href="mypageWork.html">나의활동</a></li>
							<li><a href="mypagePoint.html">나의 포인트</a></li>
							<li><a href="#">계정설정</a></li>
							<li><a href="#">로그아웃</a></li>
						</ul>
						<!--//-->
					</li>
					<!--로그인 성공시 화면 X-->
					<span>|</span>
					<li><a href="#" style="color: #a82400;">회원가입</a></li>		<!-- 일반회원가입인지, 의사인지 굉장히 애매래스 -->
					<!--//-->
				</div>
			</div>

		</ul>
	</header>

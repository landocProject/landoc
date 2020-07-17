<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>의사 회원가입</title>
	<meta charset="UTF-8">
	<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs/dist/tf.min.js"> </script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/login_images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_css/main.css">
<!--===============================================================================================-->
<style>
	.logoDiv{background-color: #007ee5; width: 100px; height: 100px; margin: auto; border-radius: 7px;}
	.logoDiv .logo{width: 100px; height: 100px;}
	.radiobtn{padding-left: 150px; height: 50px;}
	.doc{margin-left: 30px;}
	.doctorForm{padding-top: 50px; padding-bottom: 50px;}
	.nextBox{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: lightgrey; color: white;}
	.nextBox1{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: #0071ce; color: white;}
	.img{width:18px; height:20px; padding-left: 5px;}
	.label1{padding-top: 40px; padding-left: 15px;}
	.label2{padding-top: 40px; padding-left: 7px;}
	.checkBox{background-color: lightgrey; height: 70px; padding-left: 10px;}
	.container-login100-form-btn{padding-top: 50px;}
	#ask{padding-top: 30px;}
	.searchDiv{display: inline-block; margin-bottom: 0px;}
	.searchBtn{background-color: #007ee5; width: 140px; height: 40px; border-radius: 5px; border: 0px; color: white;}
	.wrap-input1001{display: inline-block;}
</style>
</head>
<body>
	<div class="limiter" id="login">
		<div class="container-login100">
			<div class="wrap-login100">
			<form class="login100-form validate-form" action="#" method="post">
				<span class="login100-form-title p-b-48">
					<div class="logoDiv"> 
						<img class="logo" src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png">
					</div>
				</span>
				<div id="doctorJoin1">
					<span class="login100-form-title p-b-26">
						의사 회원가입
					</span>
				</div>
					<!-- 의사 회원 start -->
				
						<div class="doctorForm">
							<div class="nextBox1">
								<label class="label1">정보 입력</label>
							</div>
							<img class="img"src="<%=request.getContextPath()%>/resources/login_image/icon.png">
							<div class="nextBox">
								<label class="label2">이메일 인증</label>
							</div>
							<img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
							<div class="nextBox">
								<label class="label1">서류 제출</label>
							</div>
							<img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
							<div class="nextBox">
								<label class="label1">승인 대기</label>
							</div>
						</div>
						<div class="wrap-input100 validate-input" data-validate="병원을 선택해 주세요" >
							<input class="input100" type="text" name="hospital" id="hospital" list="hospitalList">
							<datalist id="hospitalList" class="focus-input100" data-placeholder="병원 검색">
								<option value="반도정형외과병원"></option>
								<option value="국립중앙의료원"></option>
								<option value="의료법인 제일의료재단 제일병원"></option>
								<option value="서울송도병원"></option>
								<option value="금강아산병원(재단법인 아산사회복지재단)"></option>
								<option value="소화병원(의료법인 소화병원)"></option>
								<option value="연세슬기병원"></option>
								<option value="연세바로척병원"></option>
								<option value="안녕하세요안과"></option>
								<option value="9988병원"></option>
								<option value="서울동인병원"></option>
								<option value="학교법인대진교육재단 제인병원"></option>
								<option value="맑은수병원"></option>
								<option value="서울명병원"></option>
								<option value="제니스병원"></option>
								<option value="서울프라임병원"></option>
								<option value="연세무척나은병원"></option>
								<option value="서울특별시 북부병원"></option>
								<option value="마디세상병원"></option>
								<option value="서울척병원"></option>
								<option value="사회복지법인 성가소비녀회 성가복지병원"></option>
								<option value="강북으뜸병원"></option>
								<option value="서울현대병원"></option>
								<option value="서울특별시서북병원"></option>
								<option value="참튼튼병원"></option>
								<option value="정병원"></option>
								<option value="도봉병원"></option>
								<option value="성신병원"></option>
								<option value="연세노블병원"></option>
								<option value="서울특별시은평병원"></option>
								<option value="강서필병원"></option>
								<option value="의료법인 우리아이들 의료재단 우리아이들병원"></option>
								<option value="의료법인다나의료재단구로다나병원"></option>
								<option value="성지병원"></option>
								<option value="(복지)예사랑병원"></option>
								<option value="송파미소병원"></option>
								<option value="강남을지대학교병원"></option>
								<option value="지앤지병원"></option>
								<option value="재단법인한국산업보건환경연구소부설 해상병원"></option>
								<option value="새움병원"></option>
								<option value="에스병원(S병원)"></option>
								<option value="메드윌병원"></option>
								<option value="의료법인 길정의료재단 길정병원"></option>
								<option value="열경의료재단동부허병원"></option>
								<option value="대동병원"></option>
								<option value="신세계 여성병원"></option>
								<option value="통합의료진흥원 전인병원"></option>
								<option value="대명의료재단서대구병원"></option>
								<option value="새동산병원"></option>
								<option value="진병원"></option>
								<option value="의료법인 백천의료재단 바로본병원"></option>
								<option value="서울지구병원"></option>
								<option value="기쁨병원"></option>
								<option value="예울병원"></option>
								<option value="씨에스나무병원"></option>
								<option value="순천센텀병원"></option>
								<option value="의료법인 현경의료재단 광양서울병원"></option>
								<option value="해남우석병원"></option>
								<option value="전라남도강진의료원"></option>
								<option value="장흥우리병원"></option>
								<option value="화순성심병원"></option>
								<option value="의료법인장호의료재단녹동현대병원"></option>
								<option value="의료법인삼선의료재단영암병원"></option>
								<option value="계명대학교 의과대학 경주 동산병원"></option>
								<option value="바른유병원"></option>
								<option value="강남병원"></option>
								<option value="서울아동병원"></option>
								<option value="의료법인 갑을의료재단 갑을구미병원"></option>
								<option value="문치과병원"></option>
								<option value="강북예치과병원"></option>
								<option value="다인치과병원"></option>
								<option value="샤인치과교정과 치과병원"></option>
								<option value="로덴성문치과병원"></option>
								<option value="경희치과병원"></option>
								<option value="잎사귀치과병원"></option>
								<option value="학교법인연세대학교치과대학치과병원"></option>
								<option value="네모치과병원"></option>
								<option value="한그루치과병원"></option>
								<option value="신촌다인치과병원"></option>
								<option value="동의대부속 한방병원"></option>
								<option value="더존한방병원"></option>
								<option value="서울실버한방병원"></option>
								<option value="강동모커리한방병원"></option>
								<option value="이엔이치과병원"></option>
								<option value="목동예치과병원"></option>
								<option value="재단법인 자생의료재단 해운대자생한방병원"></option>
								<option value="허브휴양  한방병원"></option>
								<option value="대구자생한방병원"></option>
								<option value="대구한의대학교부속대구한방병원"></option>
								<option value="새로난한방병원"></option>
								<option value="가천대학교부속 길한방병원"></option>
								<option value="수원중앙병원"></option>
								<option value="더웰병원"></option>
								<option value="강남여성병원"></option>
								<option value="(의)광혜원한방병원"></option>
								<option value="성인천한방병원"></option>
								<option value="국군고양병원"></option>
								<option value="바른마디병원"></option>
								<option value="고운여성병원"></option>
								<option value="국군구리병원"></option>
								<option value="오산세종병원"></option>
								<option value="국립교통재활병원"></option>
								<option value="의료법인 대광의료재단 괴산성모병원"></option>
								<option value="푸른사랑병원"></option>
								<option value="국군강릉병원"></option>
							</datalist>
							
						</div>
 
						<div class="wrap-input100 validate-input" data-validate="정해진 진료과목을 선택 및 입력해주세요." >
							<input class="input100" type="text" name="mainField" id="mainField" list="mainFieldList">
							<datalist id="mainFieldList" class="focus-input100" data-placeholder="주분야">
								<option value="치과"></option>
								<option value="피부과"></option>
								<option value="성형외과"></option>
								<option value="안과"></option>
								<option value="산부인과"></option>
								<option value="비뇨기과"></option>
								<option value="정신건강의학과"></option>
								<option value="정형외과"></option>
								<option value="마취통증의학과"></option>
								<option value="신경외과"></option>
								<option value="재활의학과"></option>
								<option value="영상의학과"></option>
								<option value="외과"></option>
								<option value="신경과"></option>
								<option value="소아과"></option>
								<option value="내과"></option>
								<option value="이비인후과"></option>
								<option value="가정의학과"></option>
								<option value="한의원"></option>
							</datalist>
							
						</div>

						<div class="wrap-input100 validate-input" data-validate="영소문,숫자 4~20글자로 입력가능합니다." >
							<input class="input100" type="text" name="userId" id="userId">
							<span class="focus-input100" data-placeholder="아이디"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="영소문,숫자 4~20글자로 입력가능합니다.">
							<span class="btn-show-pass">
								<i class="zmdi zmdi-eye"></i>
							</span>
							<input class="input100" type="password" name="userPwd" id="userPwd">
							<span class="focus-input100" data-placeholder="비밀번호"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="비밀번호가 일치하지 않습니다.">
							<span class="btn-show-pass">
								<i class="zmdi zmdi-eye"></i>
							</span>
							<input class="input100" type="password" name="checkPwd" id="checkPwd">
							<span class="focus-input100" data-placeholder="비밀번호 확인"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="한글로 2~4글자로 입력해주세요.">
							<input class="input100" type="text" name="userName" id="userName">
							<span class="focus-input100" data-placeholder="이름"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="이메일 양식으로 입력해주세요.">
							<input class="input100" type="email" name="email" id="email">
							<span class="focus-input100" data-placeholder="이메일(해당 메일로 인증번호가 발송됩니다.)"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="'-'를 제외한 숫자 11글자로 입력해주세요.">
							<input class="input100" type="tel" name="phone" id="phone">
							<span class="focus-input100" data-placeholder="전화번호('-' 제외)"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="숫자 6글자로 입력해주세요.">
							<input class="input100" type="text" name="birth" id="birth">
							<span class="focus-input100" data-placeholder="생년월일 ex)970325"></span>
						</div>
						<div class="wrap-input1001 validate-input" data-validate="우편번호를 검색해주세요.">
							<input class="input100" type="text" name="post" value="" id="post">
							<span class="focus-input100" data-placeholder="우편번호"></span>
						</div>
						<div class="searchDiv">
							<button type="button" class="searchBtn">검색</button>
						</div>
						
						<div class="wrap-input100 validate-input" data-validate="도로명 주소를 입력해주세요." >
							<input class="input100" type="text" name="address1" value="" id="address1">
							<span class="focus-input100" data-placeholder="도로명 주소"></span>
						</div>
						<div class="wrap-input100 validate-input" data-validate="상세 주소를 입력해주세요." >
							<input class="input100" type="text" name="address2" value="" id="address2">
							<span class="focus-input100" data-placeholder="상세주소"></span>
						</div>
						
						<div>
							<input type="checkbox" id="checkAll" class="infoBox"><label>전체동의</label><br>
							<div class="checkBox">
								<input type="checkbox" id="check1" class="infoBox"><a href="agree1.html">서비스 이용 약관</a><a>및</a><a href="agree2.html">개인정보 취급 방침</a><a>(필수)</a><br>
								<input type="checkbox" id="check2" class="infoBox"><a href="agree3.html">위치기반 서비스 이용 약관</a><a>(필수)</a><br>
								<input type="checkbox" id="check3" class="infoBox"><a>마케팅 정보수신 동의 (선택)</a>
							</div>
						</div>
	
						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button type="button" class="login100-form-btn" onclick="location.href='joinDr2.do'">
									회원가입
								</button>
							</div>
						</div>
						
						<div class="text-center p-t-115" id="ask">
							<span class="txt1">
								회원이라구요?
							</span>
	
							<a class="txt2" href="login.do">
								로그인
							</a>
						</div>
				
				</form>
					<!-- 의사 회원 end -->
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
<script src="<%=request.getContextPath()%>/resources/login_vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/popper.js"></script>
	<script src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/moment.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_js/main.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>의사 회원가입</title>
	<meta charset="UTF-8">
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
	.nextBox1{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: #007ee5; color: white;}
	.img{width:18px; height:20px; padding-left: 5px;}
	.label1{padding-top: 40px; padding-left: 15px;}
	.label2{padding-top: 40px; padding-left: 7px;}
	.file1{padding-bottom: 10px;}
	.file2{padding-top: 20px; padding-bottom: 10px;}
	.fileBtn{float: right; width: 250px;}
	.fileBox{width: 100%; height: 700px; border: 1px solid black; border-radius: 7px;}
	.fileImg{border-radius: 5px; width :100%; height: 700px;  border: 1px solid black;}
</style>
</head>
<body>
	
	<div class="limiter" id="login">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="joinDrClient3.do?drNo=${joinDrClient.drNo }" method="post">
					<span class="login100-form-title p-b-48" >
						<div class="logoDiv"> 
							<img src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png" class="logo">
						</div>
					</span>
					<div id="doctorJoin1">
						<span class="login100-form-title p-b-26">
							의사 회원가입
						</span>
					</div>

					<div class="doctorForm">
						<div class="nextBox">
							<label class="label1">정보 입력</label>
						</div>
						<img class="img"src="<%=request.getContextPath()%>/resources/login_image/icon.png">
						<div class="nextBox">
							<label class="label2">이메일 인증</label>
						</div>
						<img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
						<div class="nextBox1">
							<label class="label1">서류 제출</label>
						</div>
						<img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
						<div class="nextBox">
							<label class="label1">승인 대기</label>
						</div>
					</div>

					<div>
						<label class="file1">재직 증명서 또는 사업자 등록증</label>
						<input class="fileBtn" type="file" id="input_img1" name="uploadFile">
						<div class="fileBox">
							<img class="fileImg" id="img1"/>
						</div>

						<label class="file2">신분증</label>
						<input type="file" id="input_img2" name="uploadFile">
						<div class="fileBox">
							<img class="fileImg" id="img2"/>
						</div>

						<label class="file2">의사 면허증</label>
						<input type="file" id="input_img3" name="uploadFile">
						<div class="fileBox">
							<img class="fileImg" id="img3"/>
						</div>
					</div>

					<div class="container-login100-form-btn" style="padding-top: 50px;">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="button" class="login100-form-btn">
								서류 제출
							</button>
						</div>
					</div>
					
					<div class="text-center p-t-115" style="padding-top: 30px;">
						<span class="txt1">
							회원이라구요?
						</span>

						<a class="txt2" href="login.do">
							로그인
						</a>
					</div>
				</form>
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

<script>
		// 이미지 미리 보여주기 start
		$(function() {
            $("#input_img1").on('change', function(){
                readURL1(this);
			});
			$("#input_img2").on('change', function(){
                readURL2(this);
			});
			$("#input_img3").on('change', function(){
                readURL3(this);
			});
			
        });

        function readURL1(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
					$('#img1').attr('src', e.target.result);
                }

              reader.readAsDataURL(input.files[0]);
            }
		}
		function readURL2(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
					$('#img2').attr('src', e.target.result);
                }

              reader.readAsDataURL(input.files[0]);
            }
		}
		function readURL3(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
					$('#img3').attr('src', e.target.result);
                }

              reader.readAsDataURL(input.files[0]);
            }
        }
		// 이미지 미리보여주기 end
		
		
	</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>adminSide</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
      
        /*왼쪽 사이드 navi 부분*/
        body{padding:0; margin: 0;}
        #sideBar{position: fixed; width: 250px; height: 100%; background-color: #bbb;}
        #logoBox{text-align: center;}
        #logoBox img{width: 120px; height: 120px; padding-top:5px;} 
        #logoBox h3{text-align: center; margin: 0 auto; padding-top:5px;}

        #sideBarTb{margin:0 auto; padding-top: 15px; width: 100%;}
        #sideBarTb td{text-align: center; padding:0;}
        #sideBarTb button{border: none; width: 100%; font-size: 15px; font-weight: 800; padding: 6%; background-color: #bbb;}
        #sideBarTb button:hover{background-color: white;}
        
        
        
	</style>
</head>
<body>
	

	 <div id="sideBar">
        <div id="logoBox">
            <img src="<%=request.getContextPath() %>/resources/images/logo.png">
            <h3>ADMIN</h3>
        </div>
        <table id="sideBarTb">
            <!-- <tr><td><img src="../images/logo.png"></td></tr> -->
            <tr><td><button onclick="goMember();">일반 회원 관리</button></td></tr>
            <tr><td><button onclick="goDoctor();">의사 회원 관리</button></td></tr>
            <tr><td><button onclick="goHospital();">병원 정보 관리</button></td></tr>
            <tr><td><button onclick="goHospitalReview();">병원 리뷰 관리</button></td></tr>
            <tr><td><button onclick="goAskDr();">의사에게 물어봐 관리</button></td></tr>
            <tr><td><button onclick="goProduct();">상품 관리</button></td></tr>
            <tr><td><button onclick="goProductQnA();">상품 QnA 관리</button></td></tr>
            <tr><td><button onclick="goOrder();">주문 관리</button></td></tr>
            <tr><td><button onclick="goOrderQnA();">주문 QnA 관리</button></td></tr>
            <tr><td><button onclick="goSales();">매출 관리</button></td></tr>
        </table>
    </div>




	<script>
        function goMember(){
            location.href="clientManage.do";
        }

        function goDoctor(){
            location.href="drClientManage.do";
        }

        function goHospital(){
            location.href="hospitalManage.do";
        }

        function goHospitalReview(){
            location.href="hpReviewManage.do";
        }
        
        function goAskDr(){
            location.href="askDrManage.do";
        }
        
        function goProduct(){
        	location.href="productManage.do";
        }
        
        function goProductQnA(){
        	location.href="productQnaManage.do";
        }
        
        function goOrder(){
        	location.href="orderManage.do";
        }
        
        function goOrderQnA(){
        	location.href="orderQnaManage.do";
        }
        
        function goSales(){
        	location.href="#";
        }
        

        


    </script>
	



</body>
</html>
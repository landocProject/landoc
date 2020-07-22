<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>drClientDetail</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
	
     	/*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

         /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 80%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width: auto; border: 1px solid #bbb; font-size:14px;}
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}
		#contentTb input{width:95%; border:none;}

 		/* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 40px; width: 15%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:15px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}
	</style>


</head>
<body>

	<jsp:include page="../../../common/adminSide.jsp"/>
	
    <!--여기서 부터 왼쪽 영역 contentArea-->
    <form action="#" method="post">
        <div id="contentArea">
            <h3>의사 정보 수정</h3>


            <!--테이블 부분-->
            <table id="contentTb">
                <tr>
                    <th class="firstLine">번호</th>
                    <td><input type="text" value="M01" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">아이디</th>
                    <td><input type="text" value="dhwlsry258"></td>
                </tr>
                <tr>
                    <th class="firstLine">이름</th>
                    <td><input type="text" value="오진교"></td>
                </tr>
                <tr>
                    <th class="firstLine">생년월일</th>
                    <td><input type="text" value="970325"></td>
                </tr>
                <tr>
                    <th class="firstLine">휴대폰 번호</th>
                    <td><input type="text" value="01012345678"></td>
                </tr>
                <tr>
                    <th class="firstLine">포인트</th>
                    <td><input type="tel" value="10,000" readonly></td>
                </tr>   
                <tr>
                    <th class="firstLine">우편번호</th>
                    <td><input type="text" value="???"></td>
                </tr>
                <tr>
                    <th class="firstLine">상세주소</th>
                    <td><input type="text" value="????"></td>
                </tr>
                <tr>
                    <th class="firstLine">소속병원</th>
                    <td><input type="text" value="눈병원"></td>
                </tr>
                <tr>
                    <th class="firstLine">주분야</th>
                    <td><input type="text" value="안과"></td>
                </tr>
                <tr>
                    <th class="firstLine">첨부파일</th>
                    <td></td>
                </tr>
                <tr>
                    <th class="firstLine">첨부파일</th>
                    <td></td>
                </tr>
                <tr>
                    <th class="firstLine">첨부파일</th>
                    <td></td>
                </tr>
                <tr>
                    <th class="firstLine">승인대기 여부</th>
                    <td><input type="text" value="Y"></td>
                </tr>
                <tr>
                    <th class="firstLine">가입날짜</th>
                    <td><input type="text" value="2020/07/05" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">가입상태</th>
                    <td><input type="tel" value="Y"></td>
                </tr>  
            </table>
            

            <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
                <button type="sumbit" onclick="goModify();">수정하기</button>
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>


            <br><br><br><br><br><br>

    </div>

    </form>



    <script>
        function goModify(){
            location.href="#";
        }

        function goBack(){
            location.href="#";
        }


    </script>

  

</body>
</html>
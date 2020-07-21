<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>주문목록</title>
   <meta charset="UTF-8">
   <meta name="description" content="SolMusic HTML Template">
   <meta name="keywords" content="music, html">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <!-- Favicon -->
   <link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon" />

   <!-- Google font -->
   <link
      href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
      rel="stylesheet">

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
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
   <style>
    .modal { text-align: center;}
    @media screen and (min-width: 768px) { .modal:before {vertical-align: middle; content: " "; height: 100%; }}
    .modal-dialog {text-align: left; vertical-align: middle;position: absolute; left: 0;}
    .modal-content{width: 1200px;}	
    #posit{position: relative;}
    .period_btn{font-size:14px; width: 58px; background-color: darkgray; color: whitesmoke;}
   </style>
</head>

<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <%@ include file="../static/header.jsp" %>
	 <div class="container" style="text-align: center;" >
        <div style="width: 1000px; display: inline-block" >
            <div class="row px-3 py-5" id="posit">
                <!-- modal start-->
    
                <div id="ordermodal" class="modal fade show" tabindex="-1" role="dialog" aria-modal="true" style="padding-right: 16px; display: none; margin-left: 170px;">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header px-4 py-1 d-flex align-items-center">
                  
                          <h5 class="modal-title">주문 상세정보</h5>
                          <button class="btn-transparent" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" style="font-size: 2.5rem; color:#9b9b9b;">×</span>
                          </button>
                        </div>
                        <div class="modal-body p-4">
                           <div class="pl-3 pt-2 ">
                            <div class="contview">
                                <table  class="table w-100 border-bottom" style="width: 1120px;" id="orderInfo">
                           
                                    <thead>
                                        <tr style="background-color: #f8f8f8;color: #9b9b9b; text-align: center;">
                                            <th class="first" style="width: 200px;" >상품번호
                                                (주문번호)</th>
                                            <th>상품명</th>
                                            <th style="width: 250px;">상품금액
                                                (개수)</th>
                                            <th style="width: 150px;">할인금액</th>
                                            <th style="width: 150px;">주문상태</th>
                                        </tr>
                                    </thead>
                                    <tbody >
                        
                                    
                                     
                                        <tr>
                                            <td class="first" rowspan="2" style="border-right: solid lightgray 1px;" id="PdNo">  
                                                B483299657
                                                <span class="order-number" id="OrderNo">(1777031860)</span>
                                               
                                            </td>
                                            <td style="border-right: solid lightgray 1px;">
                                                <a href="#" id="aPdName">비타민 C</a>
                                            </td>
                                            <td class="price" rowspan="2" style="border-right: solid lightgray 1px;">
                                                <strong class="num" id="price">36,740</strong>원
                                               
                                                    (<strong class="num">1</strong>개)
                                              
                                            </td>
                                            <td class="price" rowspan="2" style="border-right: solid lightgray 1px;">
                                                <strong>-3,307</strong>원
                                            </td>
                                                                                        
                                            
                                            <td class="status" rowspan="2">
                                                <strong class="status-msg">배송완료<br></strong>
                                            </td>
                                        </tr>
                                        <tr class="product-order-option"><td><div>36,740원</div></td></tr>
                                        
                                    
                                    </tbody>
                                </table>
            
                                <div class="myauction-layer-columns">
                                    <!-- 배송지정보 -->
                                    <div class="myauction-layer-column-left" style="display: inline-block;">
                                        
                                        <h3 class="in-layer-tit">
                                            <img src="https://pics.auction.co.kr/myauction/2012/tit_shipping_addr_info.gif" alt="배송지정보" title="">
                                        </h3>
                                        
                                        <table class="table  border-bottom" style="width: 550px;">
                                         
                                            <tbody>
                                            <tr class="first">
                                                <th scope="row" class="first" style="background-color: #f8f8f8;color: #9b9b9b; text-align: center; border-right: solid lightgray 1px; width: 120px;">받으시는 분</th>
                                                <td colspan="0">김소현</td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="first" style="background-color: #f8f8f8;color: #9b9b9b; text-align: center; border-right: solid lightgray 1px; width: 120px;">연락처</th>
                                                <td colspan="0">010-9750-2902</td>
                                            </tr>
                                         
                                            <tr>
                                                <th scope="row" class="first" style="background-color: #f8f8f8;color: #9b9b9b; text-align: center; border-right: solid lightgray 1px; width: 120px;">주소</th>
                                                <td colspan="0">
                                                    [04947]<br>
                                                    서울특별시 광진구 영화사로9가길 33-5 (해성빌라) 401호<br>
                                              </td>
                                            </tr> 
                                        </tbody>
                                    </table>
                                  
                                        
                                    </div>
                                    <!-- //배송지정보 -->
            
            
            
                                    <!-- 결제정보 -->
                                    <div class="myauction-layer-column-right" style="display: inline-block;">
                                        <h3 class="in-layer-tit">
                                            <img src="https://pics.auction.co.kr/myauction/2012/tit_payment_info.gif" alt="결제정보" title="">
                                            
                                        </h3>
                                        <div class="order-detail-expandable">
                                            <table class="table  border-bottom"  id="payInfoTbl" style="width: 550px;">
                                               
                                         
                                                <tbody>
                                                    
                                                    <tr class="first">
                                                    <th scope="row" class="first" style="background-color: #f8f8f8;color: #9b9b9b; text-align: center; border-right: solid lightgray 1px; width: 130px;">최종 결제금액</th>
                                                    <td class="price final-price" style="text-align: right;">
                                                        <strong>35,190</strong>원		
                                                    
                                                    </td>
                                                </tr>
                                                
                                                <tr class="sub sub-first sub-last">
                                                    <th scope="row" class="first" style="background-color: #f8f8f8;color: #9b9b9b; text-align: center; border-right: solid lightgray 1px; ">결제수단</th>
                                                    <td class="price" style="text-align: right;"><strong>신용카드</strong></td>
                                                </tr>
                                                
                                                <tr class="sep">
                                                    <th scope="row" class="first" style="background-color: #f8f8f8;color: #9b9b9b; text-align: center; border-right: solid lightgray 1px; ">상품금액</th>
                                                    <td class="price" style="text-align: right;"><strong>36,740</strong>원</td>
                                                </tr>
                                             
                                               
                                               
                                                    <th scope="row" class="first" style="background-color: #f8f8f8;color: #9b9b9b; text-align: center; border-right: solid lightgray 1px; ">총할인금액</th>
                                                    <td class="price" style="text-align: right;"><strong>-3,307</strong>원</td>
                                                </tr>
                                                <tr class="hidden">
                                                    <th scope="row" class="first" style="background-color: #f8f8f8;color: #9b9b9b; text-align: center; border-right: solid lightgray 1px; ">사용포인트</th>
                                                    <td class="price" style="text-align: right;"><strong>0</strong>원</td>
                                                </tr>
                          
                                            </tbody>
                                        </table>
                                         
                                        </div>
                                    </div>
                                    <!-- //결제정보 -->
                                 </div>
                                </div>
                             </div>
                           </div>
                        </div>
                      </div>
                    </div>
                <!--modal end-->
                  </div>
    
    
              
                <div class="col-12 text-left">
    
                    <div class="point-breadcrumb text-left">
                        <a href="mypageWork.html" style="color:  #0071ce;letter-spacing: -0.5px; font-size: 25px;">
                            나의 주문조회
                        </a>
                        >
                        <strong class="ml-2" style="font-size: 25px;">주문목록</strong>
                    </div>
    
                    <!-- <div class="point-count-title mt-4 text-left" style="font-size: 30px;">
                         총 2건의 주문내역
                    </div> -->
    
                 <!--검색-->
                 <!-- <div class="point-count-title mt-4 text-left" style="display: flex;"> -->
                    <!-- 기간별 조회 -->
                  
                        <div class="select-wrap" style="float: left; padding-top: 40px;padding-bottom: 10px;">
                            <input type="submit" name="btnTerm1D" value="오늘" id="btnTerm1D"  class="btn btn-blackcontent w-10 p-1 period_btn" >
                            <input type="submit" name="btnTerm1W" value="1주일" id="btnTerm1W" class="btn btn-blackcontent w-10 p-1 period_btn" >
                            <input type="submit" name="btnTerm1M" value="1개월" id="btnTerm1M" class="btn btn-blackcontent w-10 p-1 period_btn" >
                            <input type="submit" name="btnTerm3M" value="3개월" id="btnTerm3M" class="btn btn-blackcontent w-10 p-1 period_btn" >
                            <input type="submit" name="btnTerm6M" value="6개월" id="btnTerm6M" class="btn btn-blackcontent w-10 p-1 period_btn" >
                        </div>
                  
                  
                     
                    <!--기간검색-->
                 
                        <!-- 년/월/일 -->
                        <div class="select-wrap" style="float: right; padding-top: 40px;padding-bottom: 10px; height: 30px;">

                            <input type="date" id="startDate" name="startDate">
                            <span>~</span>
                            <input type="date" id="endDate" name="endDate" >
                            <input type="submit" name="btnTerm1D" value="조회" id="btnTerm1D"  class="btn btn-blackcontent w-10 p-1 period_btn" >
                       
                        </div>
                   
                    <!--기간 end-->

                <!-- </div> -->

                 <!--검색 end-->



                    <table  class="table w-100 border-bottom" style=" margin-bottom: 30px;">
                        <thead >
                            <tr style="background-color: #f8f8f8;color: #9b9b9b; text-align: center;">
                                <th scope="col" class="p-3" style="width: 210px;">주문일(결제금액)</th>
                                <th scope="col" class="p-3">상품명/주문옵션/주문번호</th>
                                <th scope="col" class="p-3">주문상태</th>
                            </tr>

                        </thead>

                        <!--1번째 글-->
                       <c:forEach var="o" items="${orderList}">
                       <tbody>
                             <tr  class="color49" style="font-size:14px; color: rgba(0, 0, 0, 0.651);">
                                <td class="p-3" style="text-align: center; border-right: solid 1px; border-color: lightgray; vertical-align:middle;" rowspan="2">
                                    <div class="date-num">
                                        <strong>${o.orderDate}</strong>
                                       
                                        
                                    </div>
                                   
                                    <div class="total-charge">
                                    결제금액: <strong class="charge"><span class="num">${o.amountPrice}</span>원</strong>
                                    </div>
                                   
                                    <div class="detail-link">
                                        <a href="#" onclick="orderDetail(${o.orderNo});" class="link" data-toggle="modal" data-target="#ordermodal">주문상세보기</a>
                                        
                                    </div>
                                  
                                    
                               
                                </td>
                                <td class="product" style="border-right: solid 1px; border-color: lightgray; vertical-align:middle;">
                                    <div class="product-block">
                                        <a href="#" target="_blank" class="product-thumbnail" style="float: left;">
                                        <img src="../solmusic/img/blog/1.jpg" style="width :60px; height : 60px" alt="" ></a>												
                                        <div class="product-content" style="padding-left: 77px;">
                                            <div class="product-name">
                                                <a href="#" target="_blank">${o.pdName}</a>
                                            </div>
                                            
                                            
                                            <div class="product-order-num">
                                                <span class="label">주문번호</span> ${o.orderNo}
                                            </div>
                                  
                                        </div>
                                    </div>
                                </td>
                          
                                <td class="status" style="vertical-align:middle; text-align: center;">
                                    <strong class="status-msg">${o.oName}</strong>
                                     <!-- <a href="#"><img src="#" alt="배송조회"></a> -->
                                </td>
                            </tr>
                            
                            <tr class="color49" style="font-size:14px; color: rgba(0, 0, 0, 0.651);">
                                <td class="actions" colspan="2" style="border-bottom: solid 1px; color: lightgray; padding-top: 5px; padding-bottom: 5px;">
                            
                                    <div class="links">
                                      <button type="button" id="edit_profile" class="btn btn-blackcontent w-10 p-1" style="font-size:13px; background-color: #0071ce; color: whitesmoke; float: left;">판매자에게 문의하기</button>
                                    </div>
                                    <div class="buttons" style="float: right;">
                                        <button type="button" id="edit_profile" class="btn btn-blackcontent w-10 p-1" style="font-size:13px; background-color: #0071ce; color: whitesmoke">반품신청</button>
                                        <button type="button" id="edit_profile" class="btn btn-blackcontent w-10 p-1" style="font-size:13px; background-color: #0071ce; color: whitesmoke">교환신청</button>
                                        <button type="button" id="edit_profile" class="btn btn-blackcontent w-10 p-1" style="font-size:13px; background-color: #0071ce; color: whitesmoke">구매후기</button>
                                    </div>
                                </td>
                            </tr>
                           
                         </tbody>
                         </c:forEach>
                    </table>
                </div>
                 
            </div>
        </div>
   </div>

    <!--paginnation start-->
            <nav aria-label="Page navigation">
                <ul class="pagination" style="justify-content: center;padding-bottom: 30px; ">
                <!-- disabled가 있으면 마우스 커서가 금지표시로 바뀐다. -->
                <li class=disabled style="width: 30px;">
                <a href="#" aria-label="Previous">
                <span aria-hidden="true">«</span>
                </a>
                </li>
                <!-- 현재 페이지 -->
                <li class="active" style="width: 30px;"><a href="#">1</a></li>
                <li style="width: 30px;"><a href="#">2</a></li>
                <li style="width: 30px;"><a href="#">3</a></li>
                <li style="width: 30px;"><a href="#">4</a></li>
                <li style="width: 30px;"><a href="#">5</a></li>
                <li style="width: 30px;">
                <a href="#" aria-label="Next">
                <span aria-hidden="true">»</span>
                </a>
                </li>
                </ul>
                </nav>
   
  	

    <!--pagination end-->
    
      <script>
			function orderDetail(b){
			                 
				var orderNo=b;
				$.ajax({
					url:"cmOrderDetail.do",
					data:{orderNo:orderNo},
					dataType:"json",
					success:function(data){
						$tableBody = $("#orderInfo tbody");
						$tableBody.html("");
				
						alert(data.orderNo);
						
						
						
		              
			         },
			     	error:function(request, status, errorData){
	                     alert("error code: " + request.status + "\n"
	                           +"message: " + request.responseText
	                           +"error: " + errorData);
	                  }    
					
				})
			}
	 </script>
                              
   

   <%@ include file="../static/footer.jsp" %>
   <!--====== Javascripts & Jquery ======-->
   <script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
</body>
</html>
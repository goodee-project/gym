<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="Gym Template">
    <meta name="keywords" content="Gym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<title>getLectureOne</title>
</head>
<body>
	<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
	
	<!-- 메뉴 네비게이션 바 -->
    <jsp:include page="/WEB-INF/view/inc/navBar.jsp"></jsp:include>
    
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath}/img/breadcrumb-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb-text">
                        <h2>WaitingForPermission List</h2>
                        <div class="bt-option">
                            <a href="${pageContext.request.contextPath}/admin/adminLogin">Home</a>
                            <span>WaitingForPermission List</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    
    <!-- Table Section Begin -->
    <section class="bmi-calculator-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title chart-title">
                        <h2>지점신청 대기 상세보기</h2>
                    </div>
    				<div class="chart-table">
                        <table>
							<tbody>
				                <tr>
				                	<td>permissionID</td>
				                	<td>${permissionOne.permissionId}</td>
				                </tr>
				                <tr>
				                    <td>신청인</td>
				                    <td>${permissionOne.memberName}</td>
				                </tr>
				                <tr>
				                    <td>설명</td>
				                    <td>${permissionOne.description}</td>
				                </tr>
				                <tr>
				                    <td>건물주소</td>
				                    <td>${permissionOne.buildingAddress}</td>
				                </tr>
				                <tr>
				                    <td>계약조건</td>
				                    <td>${permissionOne.contractName}</td>
				                </tr>
				                <tr>
				                    <td>로얄티</td>
				                    <td>${permissionOne.contractLoyalty}%</td>
				                </tr>
				                <tr>
				                    <td>계약기간</td>
				                    <td>${permissionOne.contractDuration}</td>
				                </tr>
				                <tr>
				                    <td>계약금</td>
				                    <td><fmt:formatNumber value="${permissionOne.contractDeposit}" pattern="#,###"/>원</td>
				                </tr>
				                <tr>
				                    <td>신청날짜</td>
				                    <td>${permissionOne.createDate}</td>
				                </tr>
							</tbody>
                        </table>
                        <br>
                        <div>
						    <a href="${pageContext.request.contextPath}/admin/addBranch?permissionId=${permissionOne.permissionId}"><button type="button" class="primary-btn">허가</button></a>
						    <a href="${pageContext.request.contextPath}/admin/addRefusal?permissionId=${permissionOne.permissionId}"><button type="button" class="primary-btn">거부</button></a>
						    <a href="${pageContext.request.contextPath}/admin/getWaitingForPermissionList"><button type="button" class="primary-btn">목록</button></a>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Table Section End -->
    
    <!-- Footer Start -->
    <jsp:include page="/WEB-INF/view/inc/footer.jsp"></jsp:include>
    <!-- Footer Start -->
    
	<!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/masonry.pkgd.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.barfiller.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
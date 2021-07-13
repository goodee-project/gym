<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD CONTRACT</title>
</head>
<body>
	<!-- 메뉴 네비게이션 바 -->
    <jsp:include page="/WEB-INF/view/inc/adminNavBar.jsp"></jsp:include>
	<H1>지점 계약조건 등록</H1>
	<form action="${pageContext.request.contextPath}/admin/addContract" method="post">
		<table border="1">
		<!-- adminId 임시입력처리 수정예정 -->
			<tr>
				<td>
					adminId
				</td>
				<td>
					<input type="text" name="adminId" value="1" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>
					계약명
				</td>
				<td>
					<input type="text" name="contractName">
				</td>
			</tr>
			<tr>
				<td>
					로열티
				</td>
				<td>
					<input type="text" name="contractLoyalty">
				</td>
			</tr>
			<tr>
				<td>
					계약기간
				</td>
				<td>
					<input type="text" name="contractDuration">
				</td>
			</tr>
			<tr>
				<td>
					계약금
				</td>
				<td>
					<input type="text" name="contractDeposit">
				</td>
			</tr>
		</table>
		<button type="submit">등록</button>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>사용자 리스트</h2>
	<table>
		<c:forEach var="burger" items="${burgerList}">
			<tr>
				<td>${burger.img_url}</td>
				<td>${burger.menu_name}</td>
				<td>${burger.single_price}</td>
				<td>${burger.set_price}</td>
				<td>${burger.calory}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
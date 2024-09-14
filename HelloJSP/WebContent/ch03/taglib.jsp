<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>0 ~ 10까지 수에서 짝수만 출력</h3>
	<c:forEach var="i" begin="0" end="10" step="2">
			<c:out value="${i }"></c:out>		
	</c:forEach>
</body>
</html>
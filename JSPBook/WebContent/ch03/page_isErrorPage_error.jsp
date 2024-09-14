<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!-- 
	isErrorPage 속성은 현재 JSP 페이지가 오류 페이지인지 여부를 설정하는데 사용
	기본값을 false이며 예외 처리를 위한 내장객체인 exception 변수를 사용할 수 있다.
	속성 값을 true로 설정하면 현재 JSP 페이지는 오류 페이지가 됩니다.
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 내장객체 exception 변수 값을 출력하도록 스크립틀릿 태그를 작성
		exception.printStackTrace(new PrintWriter(out));
	%>
</body>
</html>
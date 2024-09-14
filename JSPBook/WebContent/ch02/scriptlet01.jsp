<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		// 스크립틀릿 태그는 자바 코드로 이루어진 로직 부분을 표현하며,
		// 스크립틀릿 태그는 가장 일반적으로 사용되는 변수 또는 메소드 선언, 유효식 등 다수를 포함할 수 있다.
		
		// 지역변수 a,b에 값을 저장하도록 스크립틀릿 태그를 작성함.
		int a = 2;
		int b = 3;
		int sum = a + b;
		out.println("a("+a+") + b("+b+") = " + sum);
	%>
</body>
</html>
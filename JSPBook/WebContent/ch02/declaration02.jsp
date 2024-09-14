<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!	
		// 전역 메소드 sum()을 선언하기 위해 선언문 태그를 작성
		int sum(int a, int b){
			return a + b;
		}
	%>
	<%	
		// println() 메소드를 이용하여 내용을 출력하도록 스크립틀릿 태그를 작성
		// 여기서 선언된 sum() 메소드는 선언문 태그에 선언된 전역 메소드인 sum()을 호출한다.
		out.println("a(2) + b(3) = " + sum(2,3));
	%>
</body>
</html>
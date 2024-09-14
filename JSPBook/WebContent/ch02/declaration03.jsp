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
		// 전역 메소드 makeItLower()를 선언하기 위해 선언문 태그를 작성
		String makeItLower(String data) {
			return data.toLowerCase();
		}
	%>
	<%	
		// println() 메소드로 makeItLower() 메소드를 호출하여 내용을 출력하도록
		// 스크립틀릿 태그를 작성한다.
		out.println(makeItLower("Hello World"));
	%>
</body>
</html>
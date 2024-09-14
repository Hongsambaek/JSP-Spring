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
		// 0부터 10까지의 짝수를 출력하도록 스크립틀릿 태그를 작성함.
		for(int i = 1; i<=10; i++) {
			if(i % 2 == 0) { // 짝수조건
				out.println(i + "<br/>");
			}
		}
	%>
</body>
</html>
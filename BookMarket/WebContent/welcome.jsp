<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	
	<%@ include file="menu.jsp" %>
	<!--
		선언문 태그를 이용하여 "Book Market Mall"과 "Welcome to Book Market!"를 저장하는 변수를 선언합니다.
		표현문 태그를 이용하여 설정한 변수 값을 출력합니다.
	-->
	<%!
		String greeting = "도서 웹 쇼핑몰";
		String tagline = "Welcome to Book Market!";
	%>
	

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">
				<!-- greeting 변수를 출력합니다. -->
				<%=greeting %>
			</h1>
		</div>
	</div>
	<main role="main">
	<div class="container">
		<div class="text-center">
			<h3>
				<!-- tagline 변수를 출력합니다. -->
				<%=tagline %>
			</h3>			
		</div>
		<hr>
	</div>
	</main>
	<%@ include file="footer.jsp" %>
</body>
</html>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="16kb" %>
<!-- buffer 속성은 현재 JSP 페이지의 출력 버퍼 크기를 설정하는데 사용합니다.
	해당 속성은 none과 buffer size로 설정할 수 있는데, none으로 설정하면 출력 버퍼를 체우지 않고
	웹 브라우저로 직접 보내게 됩니다. 버퍼 크리를 설정하게 되면 출력 버퍼에 먼저 기록한 후 웹브라우저로 보냅니다.
	이 때 기본 버퍼크기는 서버의 고유한 값이지만 일반적을는 8 kb이다.
-->
<%@ page buffer="16kb" info="데이트 클래스를 이용한 날짜 출력하기" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>Today's <%=new Date() %></p>
</body>
</html>
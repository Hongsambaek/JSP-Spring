<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form tag</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		StringBuffer name = new StringBuffer();
		StringBuffer addr = new StringBuffer();
		StringBuffer email = new StringBuffer();
		
		name.append(request.getParameter("name"));
		addr.append(request.getParameter("addr"));
		email.append(request.getParameter("email"));
	%>
	
	<p>이름 : <%=name.toString() %></p>
	<p>주소 : <%=addr.toString() %></p>
	<p>이메일 : <%=email.toString() %></p>
</body>
</html>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
    <%
	    request.setCharacterEncoding("UTF-8");
		
		Enumeration en = request.getParameterNames();
		while (en.hasMoreElements()) {
			StringBuffer info = new StringBuffer((String) en.nextElement());
			out.print("<b>" + info + "</b> " + " : " + "\n");
			
			String infoValue = request.getParameter(info.toString());
			out.println(infoValue + "<br>");
	}
        
        
    %>
</body>
</html>

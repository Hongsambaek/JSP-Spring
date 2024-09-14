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
<h2>선택한 과일</h2>
    <%
    	request.setCharacterEncoding("UTF-8");
    	String []fruit = request.getParameterValues("name");
    	if(fruit != null) {
    		for(int i = 0; i<fruit.length; i++) {
    			out.println(" " + fruit[i]);
    		}
    	}
        
    %>
</body>
</html>

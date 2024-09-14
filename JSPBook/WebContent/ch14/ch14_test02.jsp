<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ include file="/pageModule/headPart.jsp"%>
</head>
<%
	Cookie[] cookies = request.getCookies();
	String bgColor = "white";
	if (cookies == null || cookies.length < 2) {
		Cookie red = new Cookie("red", URLEncoder.encode("red", "UTF-8"));
		Cookie orange = new Cookie("orange", URLEncoder.encode("orange", "UTF-8"));
		Cookie yellow = new Cookie("yellow", URLEncoder.encode("yellow", "UTF-8"));
		Cookie green = new Cookie("green", URLEncoder.encode("green", "UTF-8"));
		Cookie blue = new Cookie("blue", URLEncoder.encode("blue", "UTF-8"));
		Cookie navy = new Cookie("navy", URLEncoder.encode("navy", "UTF-8"));
		Cookie purple = new Cookie("purple", URLEncoder.encode("purple", "UTF-8"));
	
		red.setMaxAge(5);
		orange.setMaxAge(10);
		yellow.setMaxAge(15);
		green.setMaxAge(20);
		blue.setMaxAge(25);
		navy.setMaxAge(30);
		purple.setMaxAge(35);
	
		response.addCookie(red);
		response.addCookie(orange);
		response.addCookie(yellow);
		response.addCookie(green);
		response.addCookie(blue);
		response.addCookie(navy);
		response.addCookie(purple);
	} else {
		List<String> color = new ArrayList<String>();
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i]; // 여러개의 쿠키중 하나씩 쿠키를 꺼냄
			String n = thisCookie.getName(); // 쿠키 name을 꺼냄
			if (n.equals("red"))
				color.add("red");
			if (n.equals("orange"))
				color.add("orange");
			if (n.equals("yellow"))
				color.add("yellow");
			if (n.equals("green"))
				color.add("green");
			if (n.equals("blue"))
				color.add("blue");
			if (n.equals("navy"))
				color.add("navy");
			if (n.equals("purple"))
				color.add("purple");
		}
		if (color.contains("red"))
			bgColor = "red";
		else if (color.contains("orange"))
			bgColor = "orange";
		else if (color.contains("yellow"))
			bgColor = "yellow";
		else if (color.contains("green"))
			bgColor = "green";
		else if (color.contains("blue"))
			bgColor = "blue";
		else if (color.contains("navy"))
			bgColor = "navy";
		else if(color.get(0) == "purple")
			bgColor = "purple";
	}
%>
<body style="background-color: <%=bgColor%>">
	<%@ include file="/pageModule/header.jsp"%>

	<div class="breadcrumbs" style="padding-top: 40px;">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">JSP 개요</h1>

					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="/">INDEX</a></li>
						<li>CH01</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<section class="about-us section">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-lg-12 col-md-12 col-12">
					<div class="content-left wow fadeInLeft" data-wow-delay=".3s"></div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/pageModule/footer.jsp"%>

	<%@ include file="/pageModule/footerPart.jsp"%>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		setTimeout(function() {
			location.reload();
		}, 2000);
	</script>
</body>
</html>
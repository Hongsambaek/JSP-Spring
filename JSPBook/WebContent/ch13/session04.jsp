<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>쉽게 배우는 JSP 웹 프로그래밍</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<%@ include file="/pageModule/headPart.jsp" %>
</head>
<body>
	<%@ include file="/pageModule/header.jsp" %>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">세션</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH13</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="about-us section">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
						<!-- 내용을 입력해주세요 -->
						<h3>──────────세션을 삭제하기 전──────────</h3>
						<%
							String userId = (String) session.getAttribute("userId");
							String userPw = (String) session.getAttribute("userPw");
							
							out.println("설정된 세션 값 userId : " + userId + "<br/>");
							out.println("설정된 세션 값 userPw : " + userPw + "<br/>");
							
							// userId 키를 가진 세션 삭제하기
							session.removeAttribute("userId");
						%>
						<h3>──────────세션을 삭제한 후──────────</h3>
						<%
							userId = (String) session.getAttribute("userId");
							userPw = (String) session.getAttribute("userPw");
							
							out.println("설정된 세션 값 userId : " + userId + "<br/>");
							out.println("설정된 세션 값 userPw : " + userPw + "<br/>");
						%>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>
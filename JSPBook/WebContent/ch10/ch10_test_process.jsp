<%@page import="org.apache.catalina.security.SecurityConfig"%>
<%@page import="java.security.Principal"%>
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
                        <h1 class="page-title">시큐리티</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH010</li>
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
						<!-- 
							1. 인증이 완료된 권한에 따라서 페이지를 이동시켜주세요.
								> 인증된 권한명이 'user' 일때 사용자 페이지로 이동합니다.
								> 사용자 페이지 경로 : ch10_test_user.jsp
								
								> 인증된 권한명이 'adm' 일때 관리자 페이지로 이동합니다.
								> 관리자 페이지 경로 : ch10_test_admin.jsp
								
								> 인증된 권한명이 'all' 일때 통합 페이지로 이동합니다.
								> 관리자 페이지 경로 : ch10_test_common.jsp
						 -->
						 
						 <%
						 	if(request.isUserInRole("user") && request.isUserInRole("adm")) {
						 		response.sendRedirect("ch10_test_common.jsp");
						 	} else if(request.isUserInRole("user")) {
						 		response.sendRedirect("ch10_test_user.jsp");
						 	} else if(request.isUserInRole("adm")) {
						 		response.sendRedirect("ch10_test_admin.jsp");
						 	}
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













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
                        <h1 class="page-title">내장객체</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH05</li>
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
						<%
							// 폼 페이지에서 입력한 한글을 처리하도록 request 내장 객체의 setCharacterEncoding() 메소드에
							// 문자 인코딩 유형을 UTF-8로 작성
							request.setCharacterEncoding("UTF-8");
							
							// 입력된 아이디와 비밀번호를 폼 태그로부터 전송받도록 request 내장 객체의 getParameter() 메소드를 작성
							String userId = request.getParameter("id");
							String userPw = request.getParameter("pw");
							
							// 폼 태그로 부터 전송받은 아이디와 비밀번호가 일치하면 response01_success.jsp 페이지로 이동
							if(userId.equals("admin") && userPw.equals("1234")) { // 로그인 성공
								response.sendRedirect("response01_success.jsp");
							}else {	// 로그인 실패, 일치하지 않으면 response_failed.jsp 페이지로 이동
								response.sendRedirect("response01_failed.jsp");
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
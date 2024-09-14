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
						<h3>─────세션 유효시간 변경 전─────</h3>
						<%
							// 세션에 설정되 유효 시간을 가져오도록 session 내장 객체의 getMaxInactiveInterval() 메소드를 작성
							// 세션 유효 시간은 기본 값이 1,800초이고 초 단위로 설정한다.
							int defaultTime = session.getMaxInactiveInterval();
							int time = defaultTime / 60;
							
							out.println("세션 유효 시간(기본) : " + defaultTime + "초<br/>");
							out.println("세션 유효 시간 : " + time + "분<br/>");
						%>
						
						<h3>─────세션 유효시간 변경 후─────</h3>
						<%
							// 세션 유효 시간을 60*60초로 설정하도록 session 내장 객체의 setMaxInactiveInterval() 메소드를 작성
							session.setMaxInactiveInterval(60*60);
							time = session.getMaxInactiveInterval() / 60;
							out.println("세션 유효 시간 : " + time + "분<br/>");
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









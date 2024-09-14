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
                        <h1 class="page-title">쿠키</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH14</li>
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
							request.setCharacterEncoding("UTF-8");
						
						// 요청 파라미터 아이디와 비밀번호를 전송받도록  request 내장 객체의 getParameter() 메소드를 작성
						String id = request.getParameter("id");
						String pw = request.getParameter("pw");
						
						// 전송된 아이디와 비밀번호가 각각 admin, 1234 와 일치하면 쿠키를 생성한다.
						if(id.equals("admin") && pw.equals("1234")) {
							// userId라는 키에 id값인 admin을 value로 쿠키를 생성한다.
							Cookie cookie_id = new Cookie("userId", id);
							// userPw라는 키에 pw값인 1234를 value로 쿠키를 생성한다.
							Cookie cookie_pw = new Cookie("userPw", pw);
							
							// 생성된 쿠키 객체를 쿠키로 저장하도록 response 내장 객체의 addCookie() 메소드를 설정
							response.addCookie(cookie_id);
							response.addCookie(cookie_pw);
							
							out.println("쿠키 생성이 성공했습니다!</br>");
							out.println(id + "님 환영합니다!");
						} else {
							out.println("쿠키 생성이 실패했습니다!</br>");
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
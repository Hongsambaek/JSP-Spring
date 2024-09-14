<%@page import="com.itextpdf.text.log.SysoCounter"%>
<%@page import="kr.or.ddit.ch07.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <h1 class="page-title">파일 업로드</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH07</li>
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
                    <%
						MemberDAO dao = MemberDAO.getInstance();
                    	
                    	String memId = request.getParameter("id");
                    	String memPw = request.getParameter("pw");
                    	
                    	MemberVO mv = dao.getMember(memId);
                    	
                    	if(mv != null) {
                    		if(memId.equals(mv.getMem_id()) && memPw.equals(mv.getMem_pw())) {
                    			session.setAttribute("memId", mv);
                    			response.sendRedirect("ch07_test_memberList.jsp");
                    		} else {
                    			session.setAttribute("msg", "**일치하지 않는 회원정보입니다.");
                    			response.sendRedirect("ch07_test_signin.jsp");
                    		}
                    	}
					%>
						<!--
							가입한 회원 목록 중, 입력한 아이디와 비밀번호가 일치하는지 체크 후, 
							일치한다면 로그인을 진행해주세요.
							
							- 일치하지 않는 다면, 로그인 페이지로 넘어가 "회원정보가 일치하지 않습니다." 와 같은 에러 메세지를 출력해주세요.
							- 일치한다면, 회원목록 페이지로 이동해주세요. (ch07_test_memberList.jsp)
						-->
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>
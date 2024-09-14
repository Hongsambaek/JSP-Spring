<%@page import="kr.or.ddit.ch11_1.dao.BoardRepository"%>
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
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
					<!-- 
						삭제할 게시글 정보를 넘겨받고, 삭제를 진행해주세요.
						삭제가 실패하여 에러가 발생 할 경우, exceptionBoard_error.jsp 페이지로 이동할 수 있게 해주세요.
						> 예외처리 적용 (여러 방법중 하나 선택)
						
						삭제 완료 후, 게시판 목록 페이지(boardList.jsp)로 이동해주세요.
					 -->
					 	<%
					 		int no= Integer.parseInt(request.getParameter("no"));
					 		BoardRepository dao = BoardRepository.getInstance();
					 		dao.deleteBoard(no);
					 		
					 		response.sendRedirect("boardList.jsp");
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
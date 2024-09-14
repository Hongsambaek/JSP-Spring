<%@page import="kr.or.ddit.ch11_1.vo.BoardVO"%>
<%@page import="kr.or.ddit.ch11_1.dao.BoardRepository"%>
<%@page import="java.util.List"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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
						# 게시판 목록 페이지를 작성해주세요.
						
						<데이터가 존재하지 않을 때>
						메뉴박스
						[게시판][자료실]
						─────────────────────────────────────────────────────────────────────────────
						
						번호				제목						작성자		작성일			조회수
						─────────────────────────────────────────────────────────────────────────────
											조회하실 게시글이 존재하지 않습니다.
						─────────────────────────────────────────────────────────────────────────────						
						[ 게시글 등록하기  ]
						
						<데이터가 존재할 때>
						메뉴박스
						[게시판][자료실]
						─────────────────────────────────────────────────────────────────────────────
						
						번호				제목						작성자		작성일			조회수
						─────────────────────────────────────────────────────────────────────────────
						10		게시판 제목입니다......! 1			허나훔		2022-12-12		1245
						9		게시판 제목입니다......! 2			송서영		2022-12-12		1245
						8		게시판 제목입니다......! 3			채진영		2022-12-12		1245
						7		게시판 제목입니다......! 4			배영호		2022-12-12		1245
						6		게시판 제목입니다......! 5			조은혁		2022-12-12		1245
						5		게시판 제목입니다......! 6			조현수		2022-12-12		1245
							.....
						─────────────────────────────────────────────────────────────────────────────
						[ 게시글 등록하기  ]
						
						1. 게시판 목록을 출력해주세요.
							> JSTL을 활용해주세요.
							> 초기 화면에서는 데이터가 없으므로 '조회하실 게시글이 존재하지 않습니다.'를 출력해주세요.
							> 데이터가 있는 경우엔 번호, 제목, 작성자, 작성일, 조회수를 맞춰서 데이터를 출력해주세요.
									
						2. 시큐리티 적용
							> 게시판 등록 페이지를 요청 시, 시큐리티 인증을 진행해주세요.
								- 시큐리티 인증방식 : FORM 
							> 등록 페이지는 역할명 admin만 접근 가능토록 해주세요.
								- id : admin
								- pw : a1234
							> 로그인 인증 시, loginSecurity.jsp로 이동하여 인증을 진행 할 수 있도록 해주세요.
							> 로그인 인증 실패 시, loginFailed.jsp로 이동할 수 있도록 해주세요.
							> 로그인 권한이 다를 때, errorPage.jsp로 이동할 수 있도록 해주세요. 
								  
						3. 게시글 클릭 시, 해당 게시글 상세보기 페이지로 이동합니다.
							> 상세보기 페이지로 이동할 때, 조회수가 상승합니다.
							
						4. 게시글 등록하기 클릭 시, 게시글 등록 페이지로 이동합니다.
						
						5. 인증된 회원 admin으로 로그인 시, [로그아웃] 버튼이 메뉴박스에 표시되고
						인증되지 않은(로그인 전) 상태인경우 [로그아웃] 버튼이 나타나지 않도록 설정해주세요
						
						<권한 인증 후>
						메뉴박스
						[게시판][자료실][로그아웃]
						─────────────────────────────────────────────────────────────────────────────
						
						<권한 인증 전>
						메뉴박스
						[게시판][자료실]
						─────────────────────────────────────────────────────────────────────────────
					 -->
					 	<h4>메뉴 박스</h4>
					 	<hr/>
					 	<button type="button" class="btn btn-primary" onclick="javascript:location.href='boardList.jsp'">게시판</button>
					 	<button type="button" class="btn btn-danger" onclick="javascript:location.href='dropbox.jsp'">자료실</button>
					 	<%
					 		if(request.isUserInRole("admin")) {
					 			
					 				 		
					 	%>
					 	<button type="button" class="btn btn-warning" onclick="javascript:location.href='logout.jsp'">로그아웃</button>
					 	<%
					 		}
					 	%>					 						 	
					 	<hr/>
						<%
							BoardRepository dao = BoardRepository.getInstance();
							List<BoardVO> boardList = dao.selectBoardList();
						%>
						<c:set value="<%=boardList %>" var="list"/>
						<table class="table table-bordered">
							<thead>
								<tr>
									<td width="8%">번호</td>
									<td width="58%">제목</td>
									<td width="12%">작성자</td>
									<td width="14%">작성일</td>
									<td width="8%">조회수</td>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${empty list }">
										<tr>
											<td colspan="5">조회하신 게시글이 존재하지 않습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list }" var="board">
											<tr>
												<td>${board.no }</td>
												<td><a href="boardView.jsp?no=${board.no}">${board.title}</td>
												<td>${board.writer }</td>
												<td>${board.regDate }</td>
												<td>${board.hit }</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
						<button type="button" class="btn btn-primary" onclick="javascript:location.href='boardForm.jsp'">등록</button>
					</div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>

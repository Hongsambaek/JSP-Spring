<%@page import="kr.or.ddit.ch11_1.vo.BoardFileVO"%>
<%@page import="kr.or.ddit.ch11_1.vo.BoardVO"%>
<%@page import="kr.or.ddit.ch11_1.dao.BoardRepository"%>
<%@page import="java.util.List"%>
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
						첨부한 파일들을 확인 할 수 있는 자료실 페이지를 구성해주세요.

						메뉴박스
						[게시판][자료실]
						─────────────────────────────────────────────────────────────────────────────						
						
						자료실
						┌───────────┐	┌───────────┐
						│	파일명		│	│	파일명		│
						├───────────┤	├───────────┤
						│	이미지		│	│	이미지		│
						├───────────┤	├───────────┤
						│ 	다운로드	│	│ 	다운로드	│
						└───────────┘	└───────────┘	...
						[목록]
						
						1. 게시판에서 등록했던 게시글에 포함된 모든 파일들을 자료실에서 목록으로 출력해주세요.
						2. 파일 출력
							> 업로드 된 파일이 이미지 파일인경우, 이미지 썸네일을 [이미지]에 출력해주세요.
							> 이미지 파일이 아닌 일반 파일일경우, 해당 파일의 확장자에 맞는 아이콘으로 [이미지]에 출력해주세요.
						3. 다운로드를 클릭 하면 다운로드가 가능하게 해주세요. 
					 -->
					 <%
						request.setCharacterEncoding("UTF-8");
					 	BoardRepository dao = BoardRepository.getInstance();
						List<BoardVO> list = dao.selectBoardList();
						String[] types = {"avi", "doc", "mp3", "pdf", "ppt", "psd", "plain", "xls", "zip"};
					 %>
					 <h3>메뉴 박스</h3><hr>
					 <a class='btn btn-primary' href='boardList.jsp'>게시판</a>
					 <a class='btn btn-danger' href='dropbox.jsp'>자료실</a>
					 <%
					 if(request.isUserInRole("admin") || request.isUserInRole("all") || request.isUserInRole("user")) {
					 %>
						 <a class='btn btn-warning' href='logout.jsp'>로그아웃</a>
					 <%
					 }
					 %><hr><h2>자료실</h2><hr>
					 <div style='display:flex'>
					 	<%
					 		for(BoardVO bv : list) {
					 			if(bv.getFileVO().getFileName() != null) {
					 				BoardFileVO bfv = bv.getFileVO();
					 				String fileType = bfv.getContentType().split("/")[1];
					 				System.out.print(bfv.getContentType() + " | " + fileType);
					 				boolean imageFlag = true;
					 				for(String type : types) {
					 					if(fileType.equals(type)) {
					 						imageFlag = false;
					 					}
					 				}
					 				%>
						 <div class='card col-2'>
						 	<div class='card-header'>
						 		<%=bfv.getFileName() %>
						 	</div>
						 	<div class='card-body'>
						 	<%
						 			if(imageFlag) {
						 		%> 
						 		<img src='${pageContext.request.contextPath }/resources/images/<%=bfv.getFileName() %>' alt='<%=bfv.getFileName() %>'/>
						 		<%
						 			} else {
						 		%> 
 			 					<img src='../../assets/fileIcon/<%=fileType %>.jpg' alt='<%=bfv.getFileName() %>'/>
						 		<%
						 			}
						 	%>
						 	</div>
						 	<div class='card-footer'>
						 		<a href="${pageContext.request.contextPath }/resources/images/<%=bfv.getFileName() %>" download="<%=bfv.getFileName() %>">Download</a>
						 	</div>
						 </div>
					 				<%
					 			}
					 		}
					 	%>
					 </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>
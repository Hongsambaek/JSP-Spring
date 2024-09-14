<%@page import="kr.or.ddit.ch11_1.vo.BoardFileVO"%>
<%@page import="kr.or.ddit.ch11_1.vo.BoardVO"%>
<%@page import="kr.or.ddit.ch11_1.dao.BoardRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<body>
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
					<div class="content-left wow fadeInLeft" data-wow-delay=".3s">
						<!-- 
						1. 게시판 수정 페이지를 작성해주세요.
						
						게시글 수정
						─────────────────────────────
						제목 : 제목입니다1
						내용 : 내용입니다1
						─────────────────────────────
						첨부파일 : [파일 선택]
						─────────────────────────────
						[ 수정  ] [ 목록 ]
						
						2. 수정 버튼 클릭 시, 게시글 수정(boardUpdate.jsp)을 진행해주세요.
						3. 목록 버튼 클릭 시, 목록 페이지(boardList.jsp)로 이동해주세요. 
					 -->

						<%
							BoardRepository dao = BoardRepository.getInstance();
							int no = Integer.parseInt(request.getParameter("no"));
							BoardVO bv = dao.getBoardById(no);
	
							String msg = session.getAttribute("fileMsg") == null ? "" : (String) session.getAttribute("fileMsg");
							session.removeAttribute("fileMsg");
						%>
						<h3>게시글 수정</h3>
						<hr>

						<form action="boardUpdate.jsp?no=<%=no%>" method="post"
							enctype="multipart/form-data">
							"
							<table class="table table-bordered">
								<tbody>
									<tr style="border: solid 1px;">
										<th style="border: solid 1px;">제목</th>
										<td><input type="text" name="title"
											value="<%=bv.getTitle()%>"></td>
									</tr>
									<tr style="border: solid 1px;">
										<th style="border: solid 1px;">내용</th>
										<td style="border: solid 1px;"><input type="text"
											name="content" value="<%=bv.getContent()%>"></td>
									</tr>
									<tr style="border: solid 1px;">
										<th style="border: solid 1px;">첨부파일 내용</th>
										<td style="border: solid 1px;"><%=bv.getFileVO().getFileName()%></td>
									</tr>
									<tr style="border: solid 1px;">
										<th style="border: solid 1px;">파일</th>
										<td style="border: solid 1px;"><input type="file" class="form-control-file"></td>
									</tr>
									<tr>
										<td colspan="6" style="border: solid 1px">
											<input type="submit" class="btn btn-warning" value="수정"/>
											<button type="button" class="btn btn-primary"
												onclick="location.href='boardList.jsp'">취소</button>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/pageModule/footer.jsp"%>

	<%@ include file="/pageModule/footerPart.jsp"%>
</body>
</html>
<%@page import="kr.or.ddit.ch11_1.vo.BoardFileVO"%>
<%@page import="kr.or.ddit.ch11_1.vo.BoardVO"%>
<%@page import="kr.or.ddit.ch11_1.dao.BoardRepository"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="com.itextpdf.text.log.SysoCounter"%>
<%@page import="org.apache.catalina.authenticator.SavedRequest"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						1. 게시글 등록을 처리해주세요.
							> 게시글 등록 성공 시, 상세보기 페이지(boardView.jsp)로 이동해주세요.
							> 게시글 등록을 진행 중 해당 페이지에서 에러가 발생했을때, 에러 페이지(exceptionBoard_error.jsp)로 이동해주세요.
							
						2. 게시글 등록 시, 구현해야할 옵션 기능을 설정해주세요.
							# 파일업로드
							> 게시글 등록 시, 파일 크기는 2MB로 제한해주세요.
							> 파일크기 2MB를 넘는 파일을 업로드 시, '업로드 파일 크기를 초과하였습니다' 메세지를 출력해주세요.
							> 파일을 추가하지 않은 경우에는 일반 게시글이 등록될 수 있도록도 해주세요.
							
							# 작성자
							> 작성자는 시큐리티 인증 후 진행하기 때문에, 인증된 사용자 id로 설정해주세요.
								- 사용자 id는 시큐리티 인증 정보에서 꺼내주세요.					
					 -->

						<%
							//
						request.setCharacterEncoding("UTF-8");

						String realFolder = request.getServletContext().getRealPath("/assets/images");
						String encType = "UTF-8";
						int maxSiz = 2 * 1024 * 1024;

						File file = new File(realFolder);

						
						if (!file.exists()) {
							file.mkdirs();
						}

						DiskFileUpload upload = new DiskFileUpload();
						upload.setSizeMax(2 * 1024 * 1024);
						upload.setSizeThreshold(2 * 1024 * 1024);
						upload.setRepositoryPath(realFolder);

						List items = upload.parseRequest(request);
						Iterator params = items.iterator();
						
						BoardRepository dao = BoardRepository.getInstance();
						BoardVO newProduct = new BoardVO();
						BoardFileVO bfv = new BoardFileVO();

						String title = "";
						String content = "";
						String writer = request.getRemoteUser();
						int no = dao.getNo();
						String contentType = "";
						long fileSize = 0;
						String fileName = "";

						while (params.hasNext()) {
							FileItem item = (FileItem) params.next();
							
							if (item.isFormField()) {
								String fieldName = item.getFieldName();
								if (fieldName.equals("title"))
							title = item.getString(encType);
								else if (fieldName.equals("content"))
							content = item.getString(encType);
							}
							
							else {
								try {
							fileName = item.getName(); 
							fileSize = item.getSize(); 
							contentType = item.getContentType();
							File saveFile = new File(realFolder + "/" + fileName);
							item.write(saveFile);	
								} catch (FileNotFoundException e) {
								}
							}
						}

						bfv.setNo(no);
						bfv.setContentType(contentType);
						bfv.setFileName(fileName);
						bfv.setFileSize(fileSize);
						newProduct.setTitle(title);
						newProduct.setWriter(writer);
						newProduct.setContent(content);
						newProduct.setFileVO(bfv);
						dao.addBoard(newProduct);
						response.sendRedirect("boardView.jsp?no=" + (no + 1));
						%>

					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/pageModule/footer.jsp"%>

	<%@ include file="/pageModule/footerPart.jsp"%>
</body>
</html>
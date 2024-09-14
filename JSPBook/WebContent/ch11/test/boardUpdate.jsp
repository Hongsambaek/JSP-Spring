<%@page import="kr.or.ddit.ch11_1.vo.BoardFileVO"%>
<%@page import="kr.or.ddit.ch11_1.vo.BoardVO"%>
<%@page import="kr.or.ddit.ch11_1.dao.BoardRepository"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="exceptionBoard_error.jsp" %>

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
                        <h1 class="page-title">예외처리</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH11</li>
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
						1. 게시글 수정을 처리해주세요.
							> 수정 성공 후, 상세보기 페이지(boardView.jsp)로 이동해주세요.
							> 수정 실패 후, 에러 페이지(exceptionBoard_error.jsp)로 이동해주세요.
							
						2. 게시글 수정 시, 등록과 같은 옵션 정보를 처리해주세요.
							> 등록과  옵션 정보 동일
					 -->
					  <%
						 	request.setCharacterEncoding("UTF-8");
					  		int no = Integer.parseInt(request.getParameter("no"));
						 	
						 	String realFolder = request.getServletContext().getRealPath("/assets/images");
						 	String encType = "UTF-8";
						 	int maxSize = 2*1024*1024;
						 
						 	File file = new File(realFolder);
						 	if(!file.exists()){
						 		file.mkdirs();
						 	}
						 	
						 	
						 	DiskFileUpload upload = new DiskFileUpload();
						 	upload.setSizeMax(2*1024*1024);
						 	upload.setSizeThreshold(2*1024*1024);
						 	upload.setRepositoryPath(realFolder);
						 	
						 	List items = upload.parseRequest(request);
						 	Iterator params = items.iterator();
						 	
							String writer = request.getUserPrincipal().getName();
							
							String title = "";		
							String content = "";		
							
							String fileName = "";		
							String contentType = "";		
							long fileSize = 0;			

					 	
					 	 
					 	
					 	while(params.hasNext()){
					 		FileItem item = (FileItem)params.next();
					 		if(item.isFormField()){
					 			String fieldName = item.getFieldName();
					 			
					 			if(fieldName.equals("title")){
					 				title = item.getString(encType);
					 			}
					 			if(fieldName.equals("content")){
					 				content = item.getString(encType);
					 			}
					 		}else{
					 			if(fileName.equals("") || fileName !=null){
						 			fileName = item.getName();
						 			contentType = item.getContentType();
						 			fileSize = item.getSize();
						 			File saveFile = new File(realFolder+"/"+fileName);
						 			
						 			if(maxSize < fileSize){
										session.setAttribute("fileMsg", "EXCESS");
						 				
						 			}else{
							 			if(fileSize !=0){
								 			item.write(saveFile);
							 			}
						 			}
					 				
					 			}
					 		}
					 		
					 	}
						
					 	if(maxSize < fileSize){
							response.sendRedirect("boardUpdateForm.jsp?no="+no);
			 				
			 			}else{
						
							BoardRepository dao = BoardRepository.getInstance();
							BoardVO bv = new BoardVO();
							BoardFileVO bfv = new BoardFileVO();
							
							bfv.setFileName(fileName);
							bfv.setContentType(contentType);
							bfv.setFileSize(fileSize);
							
							bv.setTitle(title);
							bv.setWriter(writer);
							bv.setContent(content);
							bv.setNo(no);
							bv.setFileVO(bfv);
							
							dao.updateBoard(bv);
							
							
							response.sendRedirect("boardView.jsp?no="+no);
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
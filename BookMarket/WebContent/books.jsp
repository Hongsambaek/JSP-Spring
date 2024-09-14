<%@page import="java.util.ArrayList"%>
<%@ page import="vo.Book"%>
<%@ page import="dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>도서 목록</title>
</head>
<body>
 	<%@ include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">도서 목록</h1>
		</div>
	</div>
	<%
		// 상품 목록 페이지로부터 전달되는 상품 아이디를 전송받도록 request 내장 객체의 getParameter() 메소드 작성
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	<div class="container">
		<!-- row 클래스명을 가지고 있는 div를 셋트로 Repository에서 얻어온 Book 전체 목록 데이터를 이용해 반복문을 돌려주세요 -->
		<div class="row">
			<!--
			<div class="col-md-3" align="center">	
				<img src="${pageContext.request.contextPath }/resources/images/" width="60%">
			</div>
			-->
			<%
				for (int i = 0; i < listOfBooks.size(); i++) {
				Book book = listOfBooks.get(i);
			%>
			<div class="col-md-8">
				<h5>
					<b>
					<!-- 카테고리(category) -->
					[<%=book.getCategory()%>] 
					<!-- 이름(name) -->
					<%=book.getName()%>
					</b>
				</h5>
				<p style="padding-top: 10px">
					<!-- 설명(description) -->
					<%=book.getDescription()%>
				</p>
				<p>				
					<%=book.getAuthor() + " | " + book.getPublisher() + " | " + book.getUnitPrice()%>원															
				</p>
			</div>
			<div class="col-md-1" style="padding-top: 60px">
				 				<a href="./book.jsp?id=<%=book.getBookId() %>"
				 					class="btn btn-secondary" role="button"> 상세정보 &raquo;></a> 
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>

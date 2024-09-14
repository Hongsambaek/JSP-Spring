<%@page import="vo.Book"%>
<%@page import="dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>도서 정보</title>
</head>
<body>
 	<%@ include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">도서 정보</h1>
		</div>
	</div>
	<%
		// 상품 목록 페이지로부터 전달되는 상품 아이디를 전송받도록 request 내장 객체의 getParameter() 메소드 작성
		String id = request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
	%>

	<!--
		1) 넘겨받은 책 ID를 꺼내주세요.
		2) BookRepository를 이용해 instance를 받아주세요
		3) instance에서 책 id에 해당하는 책 정보를 꺼내주세요.
	-->
	<div class="container">
		<div class="row">
			<!--
			<div class="col-md-4">
				<img src="${pageContext.request.contextPath }/resources/images/" style="width: 100%" />
			</div>
			-->
			<div class="col-md-12">
				<h4>
					<b>[<%=book.getCategory() %><!-- 카테고리(category) -->] <%=book.getName() %>
						<!-- 책 이름(name) --></b>
				</h4>
				<p>
					<%=book.getDescription()%><!-- 설명(description) -->
				</p>
				<p>
					<b>도서코드 : </b><span class="badge badge-danger"> <%=book.getBookId()%><!-- 도서코드(bookId) -->
					</span>
				</p>
				<p>
					<b>출판사</b> :
					<%=book.getPublisher()%>
					<!-- 출판사(publisher) -->
				</p>
				<p>
					<b>저자</b> :
					<%=book.getAuthor()%>
					<!-- 저자(author) -->
				</p>
				<p>
					<b>재고수</b> :
					<%=book.getUnitsInStock()%>권
					<!-- 재고수(unitsInStock) -->
				</p>
				<p>
					<b>총 페이지수</b> :
					<%=book.getTotalPages()%>페이지
					<!-- 총 페이지수(totalPages) -->
				</p>
				<p>
					<b>출판일</b> :
					<%=book.getReleaseDate()%>
					<!-- 출판일(releaseDate) -->
				</p>
				<h4>
					<%=book.getUnitPrice()%>원
					<!-- 가격(unitPrice) -->
				</h4>
 				<form name="addForm" action="./addCart.jsp" method="get"> 
<!-- 					<input type="hidden" value="" name="id" /> <a href="#" -->
<!-- 						class="btn btn-info" onclick="addToCart()"> 도서주문&raquo;</a> <a -->
<!-- 						href="./cart.jsp" class="btn btn-warning"> 장바구니&raquo;</a> <a -->
<!-- 						href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a> -->
 				</form> 
			</div>
		</div>
		<hr>
	</div>
 	<%@ include file="footer.jsp"%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <h1 class="page-title">내장객체</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH05</li>
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
						<!-- 
							ch05_test.jsp에서 전송받은 모든 데이터를 taglib을 이용하여 출력해주세요.
							
							[출력예시]
							아이디 : a001
							비밀번호 : 1234
							이름 : 홍길동
							성별 : 남자
							핸드폰번호 : 010-1234-1234
							주소 : 대전광역시 중구 오류동 123
							자기소개 : 아자아자! 화이팅!!!!
							
							그리고, 출력 후 5초 뒤에 www.naver.com 홈페이지로 이동시켜주세요!							
						 -->
						 <% 
						 	request.setCharacterEncoding("UTF-8");
						 
						 	String userId = request.getParameter("id");
						 	String userPw = request.getParameter("pw");
						 	String userNm = request.getParameter("nm");
						 	String Gender = request.getParameter("gender");
						 	String userTel = request.getParameter("tel");
						 	String userAddr = request.getParameter("addr");
						 	String userIntro = request.getParameter("intro");
						 	 
						 %>
						 <h4>결과</h4>
						 <c:set value="<%=userId %>" var="userId"/>
						 	아이디 : <c:out value="${userId }"></c:out><br>
						 	
						 <c:set value="<%=userPw %>" var="userPw"/>
						 	비밀번호 : <c:out value="${userPw }"></c:out><br>
						 	
						 <c:set value="<%=userNm %>" var="userNm"/>
						 	이름 : <c:out value="${userNm }"></c:out><br>
						 
						 <c:set value="<%=Gender %>" var="gender" />
						 	성별 : 
						 <c:choose>
						 	<c:when test="${gender=='M'}">남자</c:when>
						 	<c:otherwise>여자</c:otherwise>
						 </c:choose><br>
						 
						 <c:set value="<%=userTel %>" var="tel"/>
						 	전화번호 : <c:out value="${tel }"></c:out><br>
						 	
						 <c:set value="<%=userAddr %>" var="addr"/>
						 	주소 : <c:out value="${addr }"></c:out><br>
						 	
						 <c:set value="<%=userIntro %>" var="intro"/>
						 	자기소개 : <c:out value="${intro }"></c:out>
						 	

						<%--  	<%
						 		//response.setHeader("Refresh","5;http://www.naver.com");
						 	%> --%>
						 
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
<script>
		setTimeout("location.href='http://www.naver.com'", 5000);
</script>
</body>
</html>
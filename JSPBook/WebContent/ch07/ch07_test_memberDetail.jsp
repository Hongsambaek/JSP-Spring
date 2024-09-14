<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ch07.MemberDAO"%>
<%@page import="kr.or.ddit.ch07.MemberVO"%>
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
	<style>
		th, td {
  			text-align: center;
		}
		table, td, th {
  			border : 1px solid black;
  			border-collapse : collapse;
		}
	
	</style>
</head>
<body>
	<%@ include file="/pageModule/header.jsp" %>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">파일업로드</h1>
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
						<!-- 내용을 입력해주세요 -->
						<!--
							회원 상세보기
							-----------------------------
							목록
							-----------------------------
							
							[ 프로필 이미지 ]
							아이디 : a001
							비밀번호 : 1234
							이름 : 홍길동
							성별 : 남자
						-->
						
					<%
						MemberDAO dao = MemberDAO.getInstance();
						MemberVO mv = (MemberVO) session.getAttribute("memId");
						
					%>
                     
                     <h1>회원 상세보기</h1><hr>
                     <a href="ch07_test_memberList.jsp"><button type="button">회원 목록</button></a><hr>
						<div class="member">
							<div class="top_img">
								<img src="${pageContext.request.contextPath }/resources/images/<%=mv.getFilename() %>" style="width: 200px; height: 200px;"/>
							</div>
							<div class="member_info"><p>아이디 : <%=mv.getMem_id() %></p></div>	
							<div class="member_info"><p>비밀번호 : <%=mv.getMem_pw() %></p></div>	
							<div class="member_info"><p>이름 : <%=mv.getMem_name() %></p></div>	
							<div class="member_info"><p>성별 : <%=mv.getMem_gender() %></p></div>	
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
	<script>
		function fnc() {
			location.href = "ch07_test_memberList.jsp";
		}
	</script>
</body>
</html>
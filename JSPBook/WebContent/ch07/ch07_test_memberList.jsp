<%@page import="kr.or.ddit.ch07.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.ch07.MemberDAO"%>
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
                        <h1 class="page-title">파일 업로드</h1>
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
                    <!-- 
                    	1. 회원 목록 페이지를 작성해주세요.
                    	
                    	[ 등록 ]
                    	______________________________
                    	이미지	     회원정보			버튼
                    	______________________________
                    	[ 이	]     아이디 : a001      [상세]
                    	[ 미 ]     이름 : 홍길동
                    	[ 지 ]     
                    	[ 란 ]     
                    	______________________________
                    	[ 이	]     아이디 : a002      [상세]
                    	[ 미 ]     이름 : 홍길순
                    	[ 지 ]     
                    	[ 란 ]     
                    	______________________________
                    	... 
                     -->
                     
					<%
						MemberDAO dao = MemberDAO.getInstance();
						List<MemberVO> memList = dao.getMemberList();
						MemberVO memId = (MemberVO) session.getAttribute("memId");
					%>
                     
                     <h1>회원목록</h1><hr>
                     <a href="ch07_test_signup.jsp"><button type="button">회원등록</button></a><hr>
                     <div style="display: flex; flex-wrap: wrap;">
                     	<%
                     		for(MemberVO mv : memList){
                     	%>
						<div class="member">
							<div class="top">
							<%
								if(mv.getMem_id().equals(memId.getMem_id())){
							%>
								<span style="color: red; font-size: 20px;">[본인]</span>
							<%
								}
							%>
							<%=mv.getMem_name() %>님의 정보</div>
							<div class="mid_img">
								<img src="${pageContext.request.contextPath }/resources/images/<%=mv.getFilename() %>" style="width: 200px; height: 200px;"/>
							</div>
							<div class="mid_id"><p>아이디 : <%=mv.getMem_id() %></p></div>	
							<div class="mid_name"><p>이름 : <%=mv.getMem_name() %></p></div>	
							<div class="bottom">
								<a href="ch07_test_memberDetail.jsp?id=<%=mv.getMem_id()%>">
								<% 
									if(mv.getMem_id().equals(memId.getMem_id())){
								%>
									<button>상세정보</button>
								<%
									}
								%>
								</a>
							</div>
						</div>
                     	<%
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
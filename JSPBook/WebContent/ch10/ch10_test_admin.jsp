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
	.result-table {
	
		margin : 20px;
		border : 1px solid #dee2e6;
		border-radius : 0.25rem;
		padding : 20px;
	
	}
	
	.btn-start {
		margin-top : 20px;
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
                    	<div class="result-table">
						<!-- 내용을 입력해주세요 -->
						<!-- 
							결과
							권한명 : 관리자
							인증방식 : FORM
							사용자명 : adm
							사용자의 권한이 'adm'과 일치합니까? : true
							
							[처음으로]
							
							1. 위 결과 화면처럼 만들어주세요.
								> 인증이 완료된 이후, 인증된 사용자의 권한명/인증방식/사용자명/권한 일치 여부를 출력해주세요.
							2. 처음으로 버튼을 클릭 시, ch10_test_logout.jsp로 이동하여 처리해주세요.
						 -->
						 
						 <%-- <h3>결과</h3>
						 <hr>
						 <p>권한명 : 관리자</p>
						 <p>인증방식 : <%=request.getAuthType() %></p>
						 <p>사용자명 : <%=request.getRemoteUser() %></p>
						 <p>사용자의 권한이 'adm'과 일치합니까? : <%=request.isUserInRole("adm") %></p>
						 <a href="ch10_test_logout.jsp"><button class="btn btn-primary">처음으로</button></a> --%>
						 <table class="table">
						 	<tr>
						 		<th>권한명 </th>
						 		<td>사용자</td>
						 	</tr>
						 	<tr>
						 		<th>인증방식</th>
						 		<td><%=request.getAuthType() %></td>
						 	</tr>
						 	<tr>
						 		<th>사용자명 </th>
						 		<td><%=request.getRemoteUser() %></td>
						 	</tr>
						 	<tr>
						 		<th>사용자의 권한이 'user'와 일치합니까?</th>
						 		<td><%=request.isUserInRole("user") %></td>
						 	</tr>
						 	<tr>
						 		<th>사용자의 권한이 'adm'과 일치합니까?</th>
						 		<td><%=request.isUserInRole("adm") %></td>
						 	</tr>
						 </table>
						 	<a href="ch10_test_logout.jsp"><button class="btn btn-danger">처음으로</button></a>
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
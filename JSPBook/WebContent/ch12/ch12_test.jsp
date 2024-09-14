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
						<h1 class="page-title">필터</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="/">INDEX</a></li>
						<li>CH12</li>
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
							ch12_test.jsp를 요청 시, admin권한을 가지고 있는 계정으로만 접근이 가능하게 해주세요.
							이때, admin 권한을 가지고 있는 사용자가 로그인 시, 필터를 통해서 권한이 admin이고, 인증을 통해서 입력한 아이디가 admin일때
							ch12_test.jsp에서 '현재 접속중인 계정은 관리자(admin) 권한을 가지고 접근중입니다...!' 를 표시해주세요.
							> 시큐리티 인증은 Form 인증 방식으로 진행
							
							권한이 admin이 아닌경우, '아이디와 비밀번호를 확인해주세요.'를 표시해주세요.
							
							해당 페이지에서는 인증 성공 후, 인증 성공 된 사용자의 아이디를 함께 출력해주세요.
							
							[동작 프로세스]
							1. ch12_test.jsp 요청
							2. 시큐리티 인증
								> 권한 : admin, 아이디 : admin
								
							3. TestFilter 동작
								> 권한 admin이고, 아이디 admin인 요청인 경우 ch12_test.jsp에서 결과 메시지 및 페이지 출력
								> 권한 admin이고, 아이디 admin이 아닌 경우 ch12_test.jsp에서 에러메시지 및 페이지 출력
						 -->
						<p>현재 접속중인 계정은 관리자(admin) 권한을 가지고 접근중입니다...!</p>
						<h2>Filter Test</h2>
						<h3>인증성공 사용자 : <%=request.getAttribute("msg") %></h3>					
							
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/pageModule/footer.jsp"%>

	<%@ include file="/pageModule/footerPart.jsp"%>
</body>
</html>
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
                    		1. 로그인 처리를 진행할 수 있도록 로그인 페이지를 작성해주세요.
                    			아이디 : _____________
                    			비밀번호 : ____________
                    			[ 로그인 ]  [ 회원가입 ]
                    		
                    		2. 로그인 처리 중 실패로 인해 넘어온 error정보를 출력해주세요. 
                    			- alert을 이용해 출력
                    			- text로 출력
                    			
                    			두 가지 방법 외에 다른 방법이 있다면 자유롭게 사용
                    	 -->
						<form action="ch07_test_signin_process.jsp" method="post">
							<div class="row">
								<div class="col-1">아이디 :</div>
								<div class="col-12">
									<input type="text" name="id" id="id"><br> <br>
								</div>
								<div class="col-1">비밀번호 :</div>
								<div class="col-12">
									<input type="password" name="pw" id="pw"><br> <br>
								</div> 
							</div>
							<input type="submit" id="login_btn" value="로그인"><br>
						</form>
							<a href="ch07_test_signup.jsp"
								style="margin-top: 10px; text-decoration: none">회원가입</a>
					</div>
						<%
						    String msg = (String) session.getAttribute("msg");
						    if (msg != null) {
						%>
						        <div style="color:red">
						            <%=msg %>
						        </div>
						<%
						        session.removeAttribute("msg");
						    }
						%>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/pageModule/footer.jsp"%>

	<%@ include file="/pageModule/footerPart.jsp"%>


</body>
</html>
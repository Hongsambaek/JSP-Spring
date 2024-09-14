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
							회원가입 페이지를 작성해주세요.
							아이디 : _____________
							비밓번호 : _____________
							이름 : ______________
							성별 : O 남자 O 여자
							프로필 이미지 : [ 파일선택 ]
							-----------------------
							[ 가입하기 ] [ 뒤로가기 ]
						-->
						<form action="ch07_test_signup_process.jsp" method="post"
						 enctype="multipart/form-data">
							<div class="row">
								<div class="col-1">
								아이디 
								</div>
								<div class="col-11">
								<input type="text" name="id"><br><br>
								</div>
								<div class="col-1">
								비밀번호  
								</div>
								<div class="col-11">
								<input type="text" name="pw"><br><br>
								</div>
								<div class="col-1">
								이름 
								</div>
								<div class="col-11">
								<input type="text" name="name"><br><br>
								</div>
								<div class="col-1">
								성별 
								</div>
								<div class="col-11">
								<input type="radio" name="gender" value="남자">남자
								<input type="radio" name="gender" value="여자">여자<br><br>
								</div>
								<div class="col-1">
								프로필사진
								</div>
								<div class="col-11">
								<input type="file" name="filename"><br><br>
								</div>	
								<div class="col-11">			
								<input type="submit" value="가입완료">						
								</div>
							</div>
						</form>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>
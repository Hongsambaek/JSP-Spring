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
                        <h1 class="page-title">시큐리티</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH10</li>
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
							문제) 아래 프로세스를 만들어주세요.
							
							MAIN MENU
							-----------------------------------
							[	이동하기	]
							-----------------------------------
							
							### 권한은 사용자/관리자/통합로 구성되어 있습니다. (시큐리티 설정)
								# 사용자
								- 역할명(role) : user
								- id : u001
								- pw : u1234
								
								# 관리자
								- 역할명(role) : adm
								- id : adm
								- pw : 1234
								
								# 사용자,관리자 모두 가능한 계정
								- id : all
								- pw : 1234
								
							1. 이동하기 버튼을 클릭 시, ch10_test_process.jsp로 이동합니다.
							 
							2. 시큐리티 설정에 의한 프로세스를 이행해주세요.
								> 보호 자원(보호페이지)은 ch10_test_process.jsp 입니다.
								> ch10_test_process.jsp로 이동 시, 시큐리티 인증 페이지가 나타납니다.
								> 인증 페이지는 직접 custom으로 만든 페이지를 제공해주세요(ch10_test_authForm.jsp)
								> 권한에 따른 계정 정보를 입력 후, 인증 및 인가를 완료해주세요.
								> 보호 자원으로 접근 가능한 권한명은 user, adm 권한으로 설정해주세요.
							3. ch10_test_process.jsp로 이동해 문제를 해결해주세요.
						 -->					 
						 <h4>MAIN MENU</h4>
						 <hr>
						 <a href="ch10_test_process.jsp"><button class="btn btn-primary">이동하기</button></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>













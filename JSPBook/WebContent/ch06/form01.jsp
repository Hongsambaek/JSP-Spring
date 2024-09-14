<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>폼 태그</title>
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
                        <h1 class="page-title">JSP 폼 태그</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH06</li>
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
						<form action="" name="member" method="post">
							아이디 : <input type="text" name="id" id="id"><br>
							비밀번호 : <input type="text" name="pw" id="pw"><br>
							이름 : <input type="text" name="name" id="name"><br>
							연락처 : <input type="text" name="phone1" id="phone1"maxlength="3" size="3">-
									 <input type="text" name="phone2" id="phone2" maxlength="4" size="4">-
									 <input type="text" name="phone3" id="phone3" maxlength="4" size="4"><br>
							성별 : <input type="radio" name="gender" value="M"> 남자
								   <input type="radio" name="gneder" value="G"> 여자<br>
							취미 : <input type="checkbox" name="hobby1" id="hobby1"> 독서
								   <input type="checkbox" name="hobby2" id="hobby2"> 운동
								   <input type="checkbox" name="hobby3" id="hobby3"> 운동<br>
							<input type="submit" value="전송">
							<input type="reset" value="리셋">
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
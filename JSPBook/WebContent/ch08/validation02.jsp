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
                        <h1 class="page-title">유효성 검사</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH08</li>
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
                  
                  
                  
                  <!-- 자바스크립트 onsubmit 이벤트 -->
                  <h3>Javascript 버전</h3>
                  <form action="validation02_process.jsp" method="post" name="loginForm">
                      <div class="row">
                      <div class="col-1">
                     아이디 : 
                     </div>
                     <div class="col-11">
                     <input type="text" name="id"><br><br>
                     </div>
                     <div class="col-1">
                     비밀번호 : 
                     </div>
                     <div class="col-11">
                     <input type="text" name="pw"><br><br>
                     </div>
                     <div class="col-11">
                     <input type="button" value="전송" onclick="CheckLogin()"/>
                     </div>
                     </div>
                  </form>
                  <br><br><br>
                  
                  <br><br><br>
                  <!-- jquery 버튼 click 이벤트 -->
                  <h3>jQuery 버전</h3>
                  <form action="validation02_process.jsp" method="post" id="loginForm2">
                      <div class="row">
                      <div class="col-1">
                    	 아이디 : 
                     </div>
                     <div class="col-11">
                     <input type="text" name="id" id="id2"><br><br>
                     </div>
                     <div class="col-1">
                    	 비밀번호 : 
                     </div>
                     <div class="col-11">
                     <input type="text" name="pw" id="pw2"><br><br>
                     </div>
                     <div class="col-11">
                     <input type="button" id="subBtn" value="전송"/>
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
<script type="text/javascript">
function CheckLogin() {
	var form = document.loginForm; // form element
	
	// 입력에 필요한 아이디, 비밀번호 두가지 입력 조건
	// 아이디 : 소문자만 가능하도록
	// - charAt()
	// 비밀번호 : 숫자만 가능하도록
	
	for(var i = 0; i < form.id.value.length; i++) {
		// 입력한 아이디를 하나하나씩 끊어줌
		// id : a001
		// a, 0, 0, 1
		var ch = form.id.value.charAt(i);
		
		// ASCII CODE
		// 0 52, 9 61, A 65, Z 90, a 97, z 122
		// if 조건은 모든 조건이 참
		// || 연산 : true false는 true이다(즉, 하나라도 true면 true)
		// && 연산 : true false는 false이다(즉, 모두 true여야 true)
		if(!(ch >= 'a' && ch <= 'z')) {
			alert("아이디는 영문 소문자로만 입력 가능합니다!");
			form.id.select(); // id입력란 포커스 이동
			return false;
		}
	}
	
	// 비밀번호 숫자만 입력 가능하도록
	// 숫자가 아닌 값을 입력 시, true
	if(isNaN(form.pw.value)){
		alert("비밀번호는 숫자로만 입력 가능합니다!");
		form.pw.select();
		return false;
	}
	// 서버 전송
	form.submit();
	
}

$(function(){
	
	var subBtn = $("#subBtn")				// button element
	var loginForm2 = $("#loginForm2")		// form element
	
	subBtn.on("click", function(){
		var id = $("#id2").val();
		var pw = $("#pw2").val();
		
		for(var i = 0; i < id.length; i++) {
			var ch = id.charAt(i);
			
			
			if(!(ch >= 'a' && ch <= 'z')) {
				alert("아이디는 영문 소문자로만 입력 가능합니다!");
				form.id.select(); // id입력란 포커스 이동
				return false;
			}
		}
		
		if(isNaN(pw)){
			alert("비밀번호는 숫자로만 입력 가능합니다.");
			$("#pw2").select();
			return false;
		}
		
		// 서버전송
		loginForm2.submit();
		
	});
	
});
</script>
</html>
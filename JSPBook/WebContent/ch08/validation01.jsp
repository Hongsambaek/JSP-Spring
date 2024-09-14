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
                  <form action="validaion01_process.jsp" method="post" name="loginForm" id="loginForm" 
                        onsubmit="return submitEvent()">
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
                  <form action="validaion01_process.jsp" method="post" id="loginForm2">
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
function CheckLogin(){
   var form = document.loginForm; // form element 요소 얻어오기
   
   // 입력한 아이디 값의 길이를 이용해 특정 법위내에서만 입력 할 수 있도록 제한
   if(form.id.value.length < 4 || form.id.value.length > 12){
      alert("아이디는 4자 ~ 12자 이내로 입력 가능합니다!")
      form.id.select(); // id 입력란으로 focus 이동
      return false;
   }
   
   // 입력한 비밀번호 값의 길이를 이용해 특정 범위내에서만 입력 할 수 있도록 제한
   if(form.pw.value.length < 4){
      alert("비밀번호는 4자 이상 입력 가능합니다!")
      form.id.select(); // pw 입력란으로 focus 이동
      return false;
   }
   
   // 정상적으로 데이터가 입력되었다면 서버로 전송
   form.submit();
   
}

$(function(){
   var subBtn = $("#subBtn");            // 버튼 element
   var loginForm2 = $("#loginForm2");      // form element
   
   subBtn.on("click", function(){
      
      var id = $("#id2").val();
      var pw = $("#pw2").val();
      
      // 입력한 아이디 값의 길이를 이용해 특정 범위내ㅐ에서만 입력 할 수 있도록 제한
      if(id.length < 4 || id.length > 12) {
         alert("아이디는 4~12자 이내로 입력 가능합니다.")
         $("#id2").select();
         return false;
      }
      
      // 입력한 비밀번호 값의 길이를 이용해ㅐ 특정 범위내에서만 입력 할 수 있도록 제한
      if(pw.length < 4) {
         alert("비밀번호는 4자 이상 입력 가능합니다.")
         ("#pw2").select();
         return false;
      }
      
      // 데이터가 정상적으로 입력되었다면 서버로 전송
      loginForm2.submit();
      
   });
   
});
</script>

</html>
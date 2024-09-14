<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                  <h1 class="page-title">유효성검사</h1>
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
                  <!-- 
                     문제 풀어보기
                     아래 정규식을 풀어보고 통과 했다면 '통과하였습니다!' 결과를 출력해주세요. 
                     
                     정규식 테스트 URL : https://regexr.com
                  -->
                  <form id="frm" action="./ch08_test_process.jsp" method="post" name="quest">
                     <h5>1) 숫자만 입력하되, 7-12자리까지만 입력 받을 수 있게 설정해주세요.</h5>
                     <input type="text" class="form-control" id="quest1" name="quest1" />
                     <p id="err_quest1"></p>
                     <br />

                     <h5>2) 시작은 영소문자 abc고 영소대문자 8-12자리까지만 입력 받을 수 있게 설정해주세요.</h5>
                     <input type="text" class="form-control" id="quest2" name="quest2" />
                     <p id="err_quest2"></p>
                     <br />

                     <h5>3) 아이디는 영소문자로 시작하고 영소문자,숫자 8~16자로 설정해주세요.</h5>
                     <input type="text" class="form-control" id="mem_id" name="mem_id" />
                     <p id="err_id"></p>
                     <br />

                     <h5>4) 비밀번호는 영대문자로 시작하고 영문 대 소문자, 숫자, 특수문자 8~16자로 설정해주세요.</h5>
                     <input type="text" class="form-control" id="mem_pw" name="mem_pw" />
                     <p id="err_pw"></p>
                     <br />

                     <h5>5) 이름은 한글 2-5글자로 설정해주세요.</h5>
                     <input type="text" class="form-control" id="mem_name" name="mem_name" />
                     <p id="err_name"></p>
                     <br />

                     <h5>
                        6) 핸드폰번호는 아래의 형식에 맞춰 설정해주세요.<br /> 첫번째 자리 : 011,016,017,019,070,010 만 가능하게 해주세요.<br /> 두번째 자리 : 숫자 3자리 또는 숫자 4자리로 설정해주세요.<br /> 세번째 자리 : 숫자 4자리로 설정해주세요.<br /> 예시) 010-1234-1234, 016-123-1234
                     </h5>
                     <input type="text" class="form-control" id="mem_phone" name="mem_phone" />
                     <p id="err_phone"></p>
                     <br />

                     <p id="success"></p>

                     <input type="button" class="btn btn-primary" id="sendBtn" value="전송" onclick="check()" />
                  </form>
               </div>
            </div>
         </div>
      </div>
   </section>
   <%@ include file="/pageModule/footer.jsp"%>

   <%@ include file="/pageModule/footerPart.jsp"%>
   <script type="text/javascript">
      var success1 = false;
      var success2 = false;
      var success3 = false;
      var success4 = false;
      var success5 = false;
      var success6 = false;
   
      $(function() {
         var regExpQ1 = /^\d{7,12}$/;
         var regExpQ2 = /^[a][b][c][a-zA-Z]{5,9}$/;
         var regExpQ3 = /^[a-z][a-z0-9]{7,15}$/;
         var regExpQ4 = /^[A-Z][a-zA-Z0-9-_/.]{7,15}$/;
         var regExpQ5 = /^[가-힣]{2,5}$/;
         var regExpQ6 = /^(010|011|016|017|070|019)-\d{3,4}-\d{4}$/;

         var form = document.quest;
         
         $('#quest1').focusout(function() {
            var q1 = form.quest1.value;
            var err1 = document.querySelector('#err_quest1');
            
            if (!regExpQ1.test(q1)) {
               err1.innerHTML = '숫자만 입력하되, 7-12자리까지만 입력 받을 수 있게 설정해주세요.';
               err1.style.color = 'red';
               success1 = false;
            } else {
               err1.innerHTML = '정상';
               err1.style.color = 'green';
               success1 = true;
            }
         })
         
         $('#quest2').focusout(function() {
            var q2 = form.quest2.value;
            var err2 = document.querySelector('#err_quest2');
            
            if (!regExpQ2.test(q2)) {
               err2.innerHTML = '시작은 영소문자 abc고 영소대문자 8-12자리까지만 입력 받을 수 있게 설정해주세요.';
               err2.style.color = 'red';
               success2 = false;
            } else {
               err2.innerHTML = '정상';
               err2.style.color = 'green';
               success2 = true;
            }
         })
         
         $('#mem_id').focusout(function() {
            var q3 = form.mem_id.value;
            var err3 = document.querySelector('#err_id');
            
            if (!regExpQ3.test(q3)) {
               err3.innerHTML = '아이디는 영소문자로 시작하고 영소문자,숫자  8~16자로 설정해주세요.';
               err3.style.color = 'red';
               success3 = false;
            } else {
               err3.innerHTML = '정상';
               err3.style.color = 'green';
               success3 = true;
            }
         })
         
         $('#mem_pw').focusout(function() {
            var q4 = form.mem_pw.value;
            var err4 = document.querySelector('#err_pw');
            
            if (!regExpQ4.test(q4)) {
               err4.innerHTML = '비밀번호는 영대문자로 시작하고 영문 대 소문자, 숫자, 특수문자  8~16자로 설정해주세요.';
               err4.style.color = 'red';
               success4 = false;
            } else {
               err4.innerHTML = '정상';
               err4.style.color = 'green';
               success4 = true;
            }
         })
         
         $('#mem_name').focusout(function() {
            var q5 = form.mem_name.value;
            var err5 = document.querySelector('#err_name');
            
            if (!regExpQ5.test(q5)) {
               err5.innerHTML = '이름은 한글 2-5글자로 설정해주세요.';
               err5.style.color = 'red';
               success5 = false;
            } else {
               err5.innerHTML = '정상';
               err5.style.color = 'green';
               success5 = true;
            }
         })
         
         $('#mem_phone').focusout(function() {
            var q6 = form.mem_phone.value;
            var err6 = document.querySelector('#err_phone');
            
            if (!regExpQ6.test(q6)) {
               err6.innerHTML = '핸드폰번호 형식에 맞춰 설정해주세요.';
               err6.style.color = 'red';
               success6 = false;
            } else {
               err6.innerHTML = '정상';
               err6.style.color = 'green';
               success6 = true;
            }
         })
      })      

      function check() {
         if (success1 && success2 && success3
               && success4 && success5
               && success6) {
            document.querySelector('#success').innerHTML = '통과하셨습니다';
         } else {
            document.querySelector('#success').innerHTML = '';
         }
      }
   </script>
</body>
</html>
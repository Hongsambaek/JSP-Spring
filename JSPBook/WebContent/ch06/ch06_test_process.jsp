<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
                        <h1 class="page-title">form 태그</h1>
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
						 <!-- 
            	넘겨받은 데이터를 활용해 아래의 문제를 해결해주세요.
            	
            	----------------------------------------------------------
            	1. 출력 결과 상단의 type에 따라 아래와 같이 출력해주세요.
            	
            	# 사용자인 경우,
            	[사용자 '홍길동'님, 환영합니다!]
            	
            	# 관리자인 경우,
            	[관리자 '홍길동'님, 환영합니다!]
            	
            	----------------------------------------------------------
            	2. 나머지 항목의 데이터를 출력해주세요.
            	
            	# 출력 결과
            	아이디		:	a001
            	비밀번호		:	1234
            	이름			:	홍길동
            	핸드폰번호		:	010-1234-1234
            	성별			:	남자
            	취미			:	운동, 영화, 독서, 클라이밍
            	가입인사		:	대덕인재개발원 306호 홍길동입니다!
            					잘부탁드립니다! 열심히 해볼게요!
            					아자아자아자아자아자아자아자!!!
            	
            	----------------------------------------------------------
            	3. 출력의 형태를 selectbox를 통해 각 선택에 따른 출력으로 만들어주세요.
            	
            	# 출력 결과
            	[	--출력 형태 선택--	]
            	[	스크립틀릿으로 출력 	]
            	[		JSTL로 출력 	] 
            	
            	각 선택에 따른 출력 형태로 1,2번 문제에 나오는 출력 결과를 출력해주세요! 
             -->
						<%
							request.setCharacterEncoding("UTF-8");
						
							String type = request.getParameter("type");
							String id = request.getParameter("id");
							String pw = request.getParameter("pw");
							String name = request.getParameter("name");
							String phone1 = request.getParameter("phone1");
							String phone2 = request.getParameter("phone2");
							String phone3 = request.getParameter("phone3");
							String gender = request.getParameter("gender");
							String[] hobby = request.getParameterValues("hobby");							
							String comment = request.getParameter("comment");
							
						%>
						<p>[<%=type %> <%=name %>님, 환영합니다!] </p>
						<select class="select">
	 						<option value="">-출력선택-</option>
	 						<option value="1">스크립틀릿으로 출력</option>
	 						<option value="2">JSTL로 출력</option>
	 					</select>
	 					<br>
	 					<p>#출력결과</p>
						<div class="jstl">
						<c:set value="<%=id %>" var="id"/>
						 <c:set value="<%=pw %>" var="pw"/>
						 <c:set value="<%=name %>" var="name"/>
						 <c:set value="<%=gender %>" var="gender"/>
						 <c:set value="<%=phone1 %>" var="phone1"/>
						 <c:set value="<%=phone2 %>" var="phone2"/>
						 <c:set value="<%=phone3 %>" var="phone3"/>
						 <c:set value="<%=gender %>" var="gender"/>
						 <c:set value="<%=hobby %>" var="hobby"/>
						 <c:set value="<%=comment %>" var="comment"/>
						 아이디 	: <c:out value="${id }" /><br/>
						 비밀번호 	: <c:out value="${pw }" /><br/>
						 이름 	: <c:out value="${name }" /><br/>
						 핸드폰번호 : <c:out value="${phone1} - ${phone2} - ${phone3}" /><br/>
						 성별 	: <c:out value="${gender }" /><br/>
						 취미 	: <c:forEach items="${hobby}" var="hobby">
						 				<c:out value="${hobby }" /> 
						 			</c:forEach><br/>
						 가입인사 	: <c:out value="${comment }" /><br/>
												 
					
					
					
					
						</div>
						<div class="scriptlet">
						
						<p>아이디 : <%=id %></p>
						<p>비밀번호 : <%=pw %></p>
						<p>이름 : <%=name %></p>
						<p>핸드폰번호 : <%=phone1 %>-<%=phone2 %>-<%=phone3 %></p>
						<p>성별 : <%=gender %></p>
						<p>취미 : 
								<%
									if(hobby != null){
										for(int i=0; i<hobby.length;i++){
											out.print(" "+hobby[i]);
										}
									}
								
								%>

						</p>
						<!-- 
							브라우저 스펙에 따라서 wrap="hard" 속성에 따른 출력이 제대로 적용되지 않을 수 있다.
							그래서 CSS를 설정해준다. (white-space : pre-wrap;)
						 -->
					<p style="white-space: pre-wrap;">가입인사 : <c:out value="<%=comment %>"/></p>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function() {
 
    document.querySelectorAll('.jstl').forEach(function(element) {
        element.style.display = 'none';
    });
    document.querySelectorAll('.scriptlet').forEach(function(element) {
        element.style.display = 'none';
    });


    document.querySelector('.select').addEventListener('change', function() {
        var value = this.value;
        if (value == 1) {
            document.querySelectorAll('.scriptlet').forEach(function(element) {
                element.style.display = 'block';
            });
            document.querySelectorAll('.jstl').forEach(function(element) {
                element.style.display = 'none';
            });
        } else if (value == 2) {
            document.querySelectorAll('.scriptlet').forEach(function(element) {
                element.style.display = 'none';
            });
            document.querySelectorAll('.jstl').forEach(function(element) {
                element.style.display = 'block';
            });
        } else {
            document.querySelectorAll('.scriptlet').forEach(function(element) {
                element.style.display = 'none';
            });
            document.querySelectorAll('.jstl').forEach(function(element) {
                element.style.display = 'none';
            });
        }
    });
});

</script>
</html>
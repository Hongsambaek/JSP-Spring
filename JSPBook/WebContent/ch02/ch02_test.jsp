<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		[문제] 구구단 1~9단 까지 출력해주세요.
		[옵션] 
			- 짝수단 일 경우에는 빨간색으로 출력
			- 출력 기준을 2가지(가로로출력, 세로로출력)를 가진 selectbox를 제공하고 제공된 출력에 따라 결과를 출력.
				> 스크립트를 활용.
				> 구구단 알고리즘은 스크립트가 아닌 스크립틀릿 안에서만 진행.
				> 가로로출력 / 세로로출력을 선택할 시, 해당 출력 방식에 따른 출력 결과가 나타날 수 있도록 하기..
				
			- 스크립트는 자바스크립트/제이쿼리 본인이 편한 방식으로 진행!	
	 -->
	 <select>
	 	<option>-출력선택-</option>
	 	<option>가로로출력</option>
	 	<option>세로로출력</option>
	 </select>
	 <div id="length" style="display: none">
	 	<table border="1">
	 	
	 	<%
	 		for(int i = 1; i<=9; i++) {
	 	%>	
	 	<tr>
	 	<%	 	
	 			for(int j = 1; j<=9; j++) {		 					 						 				
	 	%>
	 	
	 	<th <%if(j % 2 ==0){ %> style="color:red" <%} %>>
	 	<%=j %>x<%=i %>=<%=i*j %>	
	 	 	
	 	</th>	
	 	<%	 					 						 				
	 			}
	 	%>
	 	</tr>
	 	<% 	 		
	 		}
	 	%>
	 	</table>
	 </div>
	 
	 
	 <div id="width" style="display: none">
	 	<table border="1">
	 		 	
	 	<%
	 		for(int i = 1; i<=9; i++) {
	 	%>	
	 	<tr>
	 	<%
	 	
	 			for(int j = 1; j<=9; j++) {	
	 				
	 					
	 				
	 	%>
	 	<th <%if(i % 2 ==0){ %> style="color:red" <%} %>>
	 	<%=i %>x<%=j %>=<%=i*j %>
	 	</th>	
	 	
	 	<% 						 				
	 			}
	 	%>
	 	
	 	</tr>
	 	<% 	 		
	 		}
	 	%>
	 	</table>
	 </div>	 
<script> 
	
	document.querySelector('select').addEventListener('change', function(){
		
		if(document.querySelector('select').value == '가로로출력') {
		   document.querySelector('#width').style.display = "";
		   document.querySelector('#length').style.display = "none";
		}
		
		if(document.querySelector('select').value == '세로로출력') {
		   document.querySelector('#width').style.display = "none";
		   document.querySelector('#length').style.display = "";
		}		
	});
</script>
</body>
</html>
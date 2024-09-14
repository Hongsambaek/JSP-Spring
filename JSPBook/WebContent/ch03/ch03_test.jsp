<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		*** JSTL을 활용하여 아래 문제를 작성해주세요.
		1) 306호 반 학생 이름 모두를 Core 태그 set에 저장한 후, 전체를 출력해주세요.
		2) 학생 4명씩 끊어서 출력해주세요.
			이름 이름 이름 이름
			이름 이름 이름 이름
			이름 이름 이름 이름
			이름 이름 이름 이름
			
		3) 4명씩 끊어서 출력할 때, 본인의 이름은 '본인'으로 출력해주세요.
			> 이때, 본인 글자를 출력 시 굵은 글씨이면서 녹색으로 출력해주세요.
	 -->
	 	  
	 <% 
	 	List<String> list = new ArrayList<String>();
		list.add("강성연");
		list.add("김필거");
		list.add("김수연");
		list.add("이영준");
		
		list.add("이건우");
		list.add("이은재");
		list.add("김연희");
		list.add("김예지");
		
		list.add("박병준");
		list.add("이현수");
		list.add("윤다빈");
		list.add("김민강");
		
		list.add("임효정");
		list.add("정문성");
		list.add("김은태");
		list.add("정현영");
		
		list.add("최동재");
		list.add("나성훈");
		list.add("황현준");
		list.add("김선영");
		
		list.add("권기혁");
		list.add("박범진");
		list.add("박민수");
		list.add("이동형");
		
		list.add("문형석");
		list.add("박현진");
		list.add("김용주");
	 %>
	 
	 <h1>306호 전체 인원(27명)</h1>
	 <table border="1">
	 <c:set value="<%=list %>" var="listItem"></c:set>
	 <c:forEach items="${listItem }" var="item" varStatus="stat">
	 	<c:if test="${stat.count % 4 == 1}">
	 		<tr>
	 	</c:if>
	 	
	 	<c:if test="${item != '김은태' }">
	 		<td>${item }</td>
	 		
	 	</c:if>
	 	
	 	<c:if test="${item == '김은태' }">
	 		<td style="color:green; font-weight: bolder;">
	 		<c:out value="김은태"></c:out></td>
	 	</c:if>
	 	
	 	<c:if test="${stat.count % 4 == 0 }">
	 		
	 	</c:if>	
	 </c:forEach>
	 </tr>
	 </table>
	 	 
</body>
</html>
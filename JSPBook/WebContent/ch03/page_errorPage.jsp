<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="page_errorPage_error.jsp" %>
    <!-- 현재 JSP 페이지에서 오류가 발생하면 오류 페이지로 이동하기 위해 Page 딜렉티브 태그의 errorPage 속성을 작성 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 부트스트랩을 이용하다 보면 브라우저에러가 발생하는 경우가 있습니다.
		// 서버에러로 인한 500코드, NullPointerException(Exception!)이 발생하여 브라우저 화면상에 500에러 페이지가 나타나야 하는데
		// out.println(str.toString); 에서 발생한 애러를 브라우저에서 제대로된 소스로 인식하지 않고 완전하지 않은 소스라고 분류하여
		// 에러가 난 시점에서 브라우저상의 화면 그리기를 멈추고 아래와 같은 에러를 발생시킬 수 있다.
		// "to load resource" : net::ERR_INCOMPLETE_CHUNKED_ENCODING"
		// - 여러가지 상황에 의해 발생할 수 있는 에러로, 페이지를 그려낼 때 완전하지 못한 소스가 존재할 경우 발생합니다.
		
		//[에러 해결 방법]
		// 1. 현재의 레이아웃 형태를 점검한다.(include)된 레이아웃의 구조가 이상이 없는지 확인
		// 2. JSP페이지의 오타!(분명 오타가 있을 수 있습니다.)
		// 3. 브라우저 설정 확인 및 변경(브라우저의 정책이 강화되고 있어서 프론트 영역의 에러를 잡는데 제약이 많아지고 있습니다... 걍 초기화..)
		String str = null;
		out.println(str.toString());
		
	%>
</body>
</html>
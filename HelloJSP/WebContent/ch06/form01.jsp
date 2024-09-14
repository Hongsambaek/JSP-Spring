<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
     <!-- 내용 입력 -->
     <form action="form01_process.jsp" name="member" method="post">
	       이름 : <input type="text" name="name" id="name"><br><br>
                주소 : <input type="text" 
                name="addr" id="addr"><br><br>
                이메일 : <input type="email" name="email" id="email"><br><br>
                전송 : <input type="submit" value="전송">
     </form>
</body>
</html>
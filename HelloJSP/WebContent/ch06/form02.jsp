<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Tag</title>
</head>
<body>
	<form action="form02_process.jsp" name="member" method="post">
	       이름 : <input type="text" name="name" id="name"><br><br>
                주소 : <input type="text" name="addr" id="addr"><br><br>
                이메일 : <input type="email" name="email" id="email"><br><br>
                전송 : <input type="submit" value="전송">                
    </form>
</body>
</html>
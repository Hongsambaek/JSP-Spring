<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Tag</title>
</head>
<body>
	<form action="form03_process.jsp" name="member" method="post">
		오렌지<input type="checkbox" name="name" value="Orange">
		사과<input type="checkbox" name="name" value="Apple">
		바나나<input type="checkbox" name="name" value="Banana"><br><br>
		전송 : <input type="submit" value="전송">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
	<form action="sessionLogin2.jsp" method="post">
		<div>
			<label for="id">아이디 :</label>
			<input type="text" id="id" name="id">
		</div>
		
		<div>
			<label for="passw">비밀번호 :</label>
			<input type="password" id="passw" name="passw">
		</div>
		
		<div>
			<input type="submit" value="전송">
		</div>
	</form>
</section>
</body>
</html>
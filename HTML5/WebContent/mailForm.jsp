<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="mailSend" method="post">
	<h1>메일보내기</h1>
	<div>
		<label>보내는 사람</label>
		<input type="text" name="sender">
	</div>
	
	<div>
		<label>받는사람</label>
		<input type="email" name="receiver">
	</div>
	
	<div>
		<label>제목</label>
		<input type="text" name="subject">
	</div>
	
	<div>
		<label>내용</label>
		<textarea name="content" rows="20" cols="40"></textarea>
	</div>
	
	<div>
		<input type="submit" value="보냄">
	</div>
</form>
</body>
</html>
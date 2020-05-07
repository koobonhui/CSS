<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>포워드 액션 테스트</h2>
<form action="forwardTest1.jsp" method="post">
<input type="hidden" value="forwardTest2.jsp" name="ft">
	<div>
		<label>이름 : </label><input type="text" name="name" />
		<label>나이 : </label><input type="number" name="age" />
		<label>주소 : </label><input type="text" name="addr" />
	</div>
	<button type="submit">전송</button>
</form>
</body>
</html>
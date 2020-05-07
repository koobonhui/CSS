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
<jsp:forward page='<%=request.getParameter("ft") %>'>
	<jsp:param value="01000000000" name="tel"/>
</jsp:forward>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	pageContext.include("pageContextTest3.jsp");
	out.println(request.getAttribute("data").toString());
// 	out.println(pageContext.getAttribute("page").toString());	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>2페이지임</h2>
</body>
</html>
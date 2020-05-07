<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setAttribute("data", "데이터");
	pageContext.setAttribute("page", "페이지");
	pageContext.forward("pageContextTest2.jsp");
	// pageContext 허용범위(scope)는 자신의 페이지 까지임
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
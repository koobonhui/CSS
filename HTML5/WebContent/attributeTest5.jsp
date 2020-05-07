<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>결과보기</h3>
<hr />
pageValue = <%=pageContext.getAttribute("pageScope") %> <hr />
reValue = <%=request.getAttribute("requestScope") %>
</body>
</html>
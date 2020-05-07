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
<h2>포워드 된 페이지</h2>
<div>
	<h3>이름 : <%=request.getParameter("name") %></h3>
</div>

<div>
	<h3>나이 : <%=request.getParameter("age") %></h3>
</div>

<div>
	<h3>주소 : <%=request.getParameter("addr") %></h3>
</div>

<div>
	<h3>전화 : <%=request.getParameter("tel") %></h3>
</div>
</body>
</html>
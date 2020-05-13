<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = null;

	if(session.getAttribute("id") != null) {
		id = (String)session.getAttribute("id");
	} else {
		out.println("<script>");
		out.println("location.href = 'loginForm.jsp'");
		out.println("</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리</title>
</head>
<body>
<h3><%=id %>로 로그인</h3>
<%
	if(id.equals("admin")) {
%>
<a href = "member_list.jsp">관리자모드 접속</a>
<%
	} 
%>
</body>
</html>
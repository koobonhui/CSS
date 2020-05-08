<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = "";
	String value = "";
	String cookie = request.getHeader("Cookie");
	Cookie cookies[] = request.getCookies();
	
	if(cookie != null) {	
		for(int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("name")) {
				name = cookies[i].getName();
				value = cookies[i].getValue();
			}
		}
	}
	cookies[0].setMaxAge(0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>쿠키 이름 = <%=name %></h2>
<h2>쿠키 값 = <%=value %></h2>
<a href="cookieTest3.jsp">쿠키 삭제</a>
</body>
</html>
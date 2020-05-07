<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration<String> names = request.getHeaderNames();
	while(names.hasMoreElements()) {
		String name = names.nextElement();
		Enumeration<String> enu = request.getHeaders(name);
		while(enu.hasMoreElements()) {
			String header = enu.nextElement();
			out.println("<h3>" + name + " : " + header + "</h3><hr />");
		}
	}
%>
</body>
</html>
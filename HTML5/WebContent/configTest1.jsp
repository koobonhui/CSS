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
<h2>Config Test</h2>
<%
	out.println(config.getServletName());
	out.println("<hr />");
	Enumeration<String> enu = config.getInitParameterNames();
	while(enu.hasMoreElements()) {
		String name = enu.nextElement();
		out.println(name + " : " + config.getInitParameter(name));
		out.println("<hr />");
	}
%>
</body>
</html>
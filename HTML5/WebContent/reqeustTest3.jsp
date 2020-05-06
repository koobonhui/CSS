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
	Cookie[] cookie = request.getCookies();
	if(cookie != null) {
		for(Cookie ck : cookie) {
			out.println(ck.toString() + "<br />");
		}
	} 
	out.println("<hr />");
	out.println("서버의 도메인 명 : " + request.getServerName());
	out.println("<hr />");
	out.println("서버의 포트번호 : " + request.getServerPort());
	out.println("<hr />");
	out.println("서버의 요청 URL : " + request.getRequestURL().toString());
	out.println("<hr />");
	out.println("서버의 요청 URI : " + request.getRequestURI());
	out.println("<hr />");
	out.println("서버의 컨텍스트 경로 : " + request.getContextPath());
	out.println("<hr />");
%>
</body>
</html>
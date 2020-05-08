<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String lang = "korea";
	String cookie = request.getHeader("Cookie");
	
	if(cookie != null) {
		Cookie cookies[] = request.getCookies();
		
		for(int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("lang")) {
				lang = cookies[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(lang.equals("korea")) {
		out.println("<h3>쿠키 예제</h3>");
	} else {
		out.println("<h3>Cookie Example</h3>");
	}
%>
<form action="cookieEx2.jsp" method="post">
	<input type="radio" name="lang" value="korea" <% if(lang.equals("korea")) {%> checked="checked"<%} %>>
	<label>한국어</label>
	<input type="radio" name="lang" value="english" <% if(lang.equals("english")) {%> checked="checked"<%} %>>
	<label>영어</label>
	<input type="submit" value="설정">
</form>
</body>
</html>
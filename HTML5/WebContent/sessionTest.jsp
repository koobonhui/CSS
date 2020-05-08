<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%
	String name;
	if(session.getAttribute("name") != null) {
		name = (String)session.getAttribute("name");
	} else {
		name = "값 없음";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>세션 테스트</h2>
<input type="button" onclick="location.href='sessionSet.jsp'" value="세션값 저장">
<input type="button" onclick="location.href='sessionDel.jsp'" value="세션값 삭제">
<input type="button" onclick="location.href='sessionInv.jsp'" value="세션 초기화">
<h3><%=name %></h3>
<hr />
<h3><%=session.isNew() %></h3>
<%
	if(session.getAttribute("list") != null) {
		List<String> list = (List)session.getAttribute("list");
		for(int i = 0; i < list.size(); i++) {
%>
	<h4><%=list.get(i) %></h4><br /> 
	<%--자바코드가 아니지만 영향을 받는다 사이에 있으면 --%>
<% 				
		}
	}
%>
</body>
</html>
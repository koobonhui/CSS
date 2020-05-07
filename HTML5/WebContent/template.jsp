<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String pagefile = request.getParameter("page");
	if(pagefile == null) {
		pagefile = "newitem";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	margin: auto;
	width: 960px;
	color: gray;
	border: 1px solid gray;
}
</style>
</head>
<body>
<table>
	<tr>
		<td height="43px" colspan="3" align="left"><jsp:include page="temp-top.jsp"></jsp:include></td>
	</tr>
	
	<tr>
		<td width="15%" align="right" valign="top"><jsp:include page="temp-left.jsp"></jsp:include></td>
		<td colspan="2" align="center"><jsp:include page='<%="temp-" + pagefile + ".jsp"%>'></jsp:include></td>
	</tr>
	
	<tr>
		<td width="100%" colspan="3" height="40px"><jsp:include page="temp-bottom.jsp"></jsp:include></td>
	</tr>
</table>
</body>
</html>
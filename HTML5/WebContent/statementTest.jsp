<%@page import="members.dao.MembersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, javax.sql.*, javax.naming.*"%>
<%
	MembersDAO dao = new MembersDAO();
	Connection conn = dao.getConn(); 
	Statement stmt = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try {
	stmt = conn.createStatement();
	String sql = "insert into members values('java', 'java', '홍길동', 20, '남', 'ja@test.com')";
	stmt.executeUpdate(sql);
	out.println("<h3>성공</h3>");
} catch(Exception e) {
	e.printStackTrace();
	out.println("<h3>실패</h3>");
} finally {
	try {
		if(stmt != null) {
			stmt.close();
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		dao.membersClose();
	}
}
%>
</body>
</html>
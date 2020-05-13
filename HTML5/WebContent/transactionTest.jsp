<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*, javax.sql.*, javax.naming.*"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "insert into members values('aaa', 'aaa', '오정원', 50, '남자', 'df@df.com')";
	String sql2 = "select * from members where age > 30";
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
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/members");
	conn = ds.getConnection();
	conn.setAutoCommit(false);
	
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	
	pstmt = conn.prepareStatement(sql2);
	rs = pstmt.executeQuery();
	
	if(!rs.next()) {
		conn.rollback();
		out.println("롤백");
	} else {
		conn.commit();
		out.println("커밋");
	}
	conn.setAutoCommit(true);
} catch(Exception e) {
	e.printStackTrace();
} finally {
	try {
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	} catch(Exception e) {
		e.printStackTrace();
	}
}
%>
</body>
</html>
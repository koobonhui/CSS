<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
	Connection conn = null;

	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/testDB?useUnicode=true&serverTimezone=Asia/Seoul";


	
	boolean connect = false;
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "root", "yt1234");
		connect = true;
		conn.close();
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>
<%
	if(connect == true) {
		out.println("연결");
	} else {
		out.println("실패");
	}
%>
</h3>
</body>
</html>
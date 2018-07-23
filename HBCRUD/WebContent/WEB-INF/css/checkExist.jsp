<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
		  .getConnection(
				"jdbc:mysql://localhost:3306/hbcrud?autoReconnect=true&useSSL=false",
					"root", "root");
		String uname=request.getParameter("uname");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt
				.executeQuery("Select userName from register where userName='"+uname+"'");
		if(rs.next()) {
			out.println("<font color=red>User already exists</font>");
		}
		else{out.println("<font color=green>valid</font>");}
		

%>
</body>
</html>
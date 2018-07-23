<%@page import="java.sql.*"%>
<%
	String state = request.getParameter("count");
	String buffer = "<select name='City'><option value='-1'>Select</option>";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
				.getConnection(
						"jdbc:mysql://localhost:3306/hbcrud?autoReconnect=true&useSSL=false",
						"root", "root");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt
				.executeQuery("Select * from city where state_id='"
						+ state + "' ");
		while (rs.next()) {
			buffer = buffer + "<option value='" + rs.getString(1)+ "'> </option>";
		}
		buffer = buffer + "</select>";
		response.getWriter().println(buffer);
	} catch (Exception e) {
		System.out.println(e);
	}
%>
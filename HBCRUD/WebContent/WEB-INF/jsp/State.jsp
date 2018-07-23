<%@page import="java.sql.*"%>
<%
	String country = request.getParameter("count");
	String buffer = 
			"<select name='State' onchange='showCity(this.value);'><option value='-1'>Select</option>";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
		  .getConnection(
				"jdbc:mysql://localhost:3306/hbcrud?autoReconnect=true&useSSL=false",
					"root", "root");
		
		Statement stmt = con.createStatement();
		ResultSet rs = stmt
				.executeQuery("Select * from state where country_id='"
						+ country + "' ");
		while (rs.next()) {
			buffer = buffer + "<option value='" + rs.getString(1)
					+ "'>" + rs.getString(2) + "</option>";
		}
		buffer = buffer + "</select>";
		response.getWriter().println(buffer);
	} catch (Exception e) {
		System.out.println(e);
	}
%>
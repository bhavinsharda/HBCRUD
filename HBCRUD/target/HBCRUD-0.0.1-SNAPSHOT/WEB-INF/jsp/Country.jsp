<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springform"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type='text/css'>
<%@include file ="../css/bootstrap.min.css"%>
<%@include file="../css/style5.css"%>
</style>

<script language="javascript" type="text/javascript">
	
<%@include file="../js/jquery.min.js" %>
	
<%@include file="../js/bootstrap.min.js" %>
	
<%@include file="../js/general.js" %>
	
<%@include file="../js/country.js" %>
	/* var xmlHttp
	var xmlHttp
	function showState(str) {
		if (typeof XMLHttpRequest != "undefined") {
			xmlHttp = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		if (xmlHttp == null) {
			alert("Browser does not support XMLHTTP Request")
			return;
		}
		var url = "state.jsp";
		url += "?count=" + str;
		xmlHttp.onreadystatechange = stateChange;
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
	}

	function stateChange() {
		if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
			document.getElementById("state").innerHTML = xmlHttp.responseText
			removeErrorClass(document.getElementById("country"));
		      document.getElementById("country").nextElementSibling.style.display = "none";
		}
	}

	function showCity(str) {
		if (typeof XMLHttpRequest != "undefined") {
			xmlHttp = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		if (xmlHttp == null) {
			alert("Browser does not support XMLHTTP Request")
			return;
		}
		var url = "city.jsp";
		url += "?count=" + str;
		xmlHttp.onreadystatechange = stateChange1;
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
	}
	function stateChange1() {
		if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
			document.getElementById("city").innerHTML = xmlHttp.responseText
			removeErrorClass(document.getElementById("state"));
		      document.getElementById("state").nextElementSibling.style.display = "none";
			
		}
	} */
</script>
</head>
<body>

	<div class="form-group">
	<springform:label path="countrybean" class="col-sm-3">Country:</springform:label>

		<div class="col-sm-2">
			<%
				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection con = DriverManager
						.getConnection(
								"jdbc:mysql://localhost:3306/hbcrud?autoReconnect=true&useSSL=false",
								"root", "root");
				Statement st = con.createStatement();
				ResultSet rs;
				rs = st.executeQuery(" select * from country");
			%>
		<springform:select class="form-control" id="Country" name="Country"
				onchange="showState(this.value)" path="countrybean">
				<springform:option value="-1">Select</springform:option>
				<%
					while (rs.next()) {
				%>
				<springform:option value="<%=rs.getString(1)%>"></springform:option>
				<%
					}
				%>
			</springform:select>
		<!-- 	<div class="errorDiv">select valid country</div> -->
	<div class="errorCountry"></div>
		</div>
		<springform:label path="statebean" class="control-label col-sm-2">State:</springform:label>
		
		<div class="col-sm-2">
		<springform:select class="form-control" id="State" name="State"
				onchange="showCity(this.value)" path="statebean">
			</springform:select>
			<!-- <div class="errorDiv">select valid state</div> -->
			<div class="errorState"></div>
		</div>
		<springform:label path="citybean" class="control-label col-sm-1">City:</springform:label>
		
		<div class="col-sm-2">
			<springform:select class="form-control" id="City" name="City" path="citybean">
			</springform:select>
			<!-- <div class="errorDiv">Enter valid City</div> -->
			<div class="errorCity"></div>
		</div>
	</div>
</body>
</html>
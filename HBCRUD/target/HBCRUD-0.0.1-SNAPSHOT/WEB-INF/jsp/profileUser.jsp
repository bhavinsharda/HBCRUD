<%@page import="java.sql.*"%>
<%@page import ="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>

 <style type="text/css">
    <%@include file="../css/bootstrap.min.css" %>
    <%@include file="../css/style5.css" %>
  </style>

<script type="text/javascript">
	  <%@include file="../js/jquery.min.js" %>
	  <%@include file="../js/bootstrap.min.js" %>
</script>

</head>
<body>
	<div class="container">

		<form:form action="logout" method="post">
			<input type="submit" value="Logout" name="flag"
				class="right btn btn-info">
		</form:form>
		<hr style="clear: right">

		<h1 align="center">Profile</h1>

		<table class="table table-bordered">

			<tr>
				<td>FirstName</td>
				<td>${user.emp.firstName}</td>
			</tr>
			<tr>
				<td>LastName</td>
				<td>${user.emp.lastName}</td>
			</tr>
			<tr>
				<td>Phone NO</td>
				<td>${user.emp.phoneNo}</td>
			</tr>
			<tr>
				<td>Gender</td>
				<td>${user.emp.sex}</td>
			</tr>
			<tr>
				<td>Salary</td>
				<td>${user.emp.salary}</td>
			</tr>
			<tr>
				<td>Designation</td>
				<td>${user.emp.designation}</td>
			</tr>


			<tr>
				<td></td>
				<td><a href="editprofile/${user.id}">Edit</a></td>
			</tr>
		</table>

	</div>
</body>
</html>
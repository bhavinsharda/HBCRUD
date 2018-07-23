
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springform"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 
			Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    <%@include file="../css/bootstrap.min.css" %>
    <%@include file="../css/dataTables.bootstrap.min.css" %>
    <%@include file="../css/style5.css" %>
  </style>

<script>
   <%@include file="../js/jquery.min.js" %>
   <%@include file="../js/bootstrap.min.js" %>
   <%@include file="../js/jquery.dataTables.min.js" %>
   <%@include file="../js/dataTables.bootstrap.min.js" %>
   $(document).ready(function() {
	      $('#userData').DataTable({"ordering":false});
	  } );
</script>

</head>
<body class="container">
	<!-- <h2 class="left">
		<a href="addUser">Fill User Detail</a>
	</h2> -->
	<br>
	<br>
	<springform:form action="logout" method="post">

		<input type="submit" value="Logout" class="right btn btn-info">
	</springform:form>
	<h1>List of Users</h1>
	<table id="userData"
		class="table table-bordered table-striped dt-responsive nowrap"
		cellspacing="5">
		<thead>
			<tr>
				<th>Employee Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Phone No</th>
				<th>Gender</th>
				<th>Salary</th>
				<th>Designation</th>
				<th>Edit</th>
				<th>Delete</th>

			</tr>
		</thead>
		<tbody>
			<c:if test="${!empty emplist}">
				<c:forEach items="${emplist}" var="emp">
					<tr>
						<td>${emp.emp.emp_id}</td>
						<td><c:out value="${emp.emp.firstName}"></c:out></td>
						<td><c:out value="${emp.emp.lastName}"></c:out></td>
						<td><c:out value="${emp.emp.phoneNo}"></c:out></td>
						<td><c:out value="${emp.emp.sex}"></c:out></td>
						<td><c:out value="${emp.emp.salary}"></c:out></td>
						<td><c:out value="${emp.emp.designation}"></c:out></td>
						<td><a href="editemp/${emp.id}">Edit</a></td>
						<td><a href="deleteemp/${emp.id}">Delete</a></td>


					</tr>
				</c:forEach>

			</c:if>
		</tbody>
	</table>


</body>
</html>
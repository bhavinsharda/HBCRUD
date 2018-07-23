<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@page import="java.sql.*"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springform"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type='text/css'>
<%@include file ="../css/bootstrap.min.css"%>
<%@include file="../css/style5.css"%>
</style>

<script>
<%@include file="../js/jquery.min.js" %>
<%@include file="../js/bootstrap.min.js" %>
<%@include file="../js/general.js" %> 
</script>

<body>
	<div class="container">

		<h3>Edit Employee</h3>
		<springform:form action="/Hibernate_Crud/editsave1" method="post"
			class="form-horizontal">



			<%-- <springform:hidden path="addressbean.address_id" /> --%>

			<div class="form-group">
				<springform:label path="emp.firstName" class="col-sm-3">First Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="firstName" placeholder="Enter First Name" id="fname"
						path="emp.firstName" />
					<div class="errorFname"></div>
				</div>
			</div>

			<div class="form-group">
				<springform:label path="emp.lastName" class="col-sm-3">Last Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="lastName" placeholder="Enter last Name" id="lname"
						path="emp.lastName" />
					<div class="errorLname"></div>
					<!-- 	<div class="errorDiv">Enter valid last Name</div> -->
				</div>
			</div>
			<div class="form-group">
				<springform:label path="emp.phoneNo" class="col-sm-3">Phone No:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="phoneNo" placeholder="+91 222-222-2222" id="phone"
						path="emp.phoneNo" />
					<div class="errorMobile"></div>
					<!-- <div class="errorDiv">Enter valid Phone No.</div> -->
				</div>
			</div>

			<div class="form-group">
				<springform:label path="emp.sex" class="col-sm-3">Gender:</springform:label>
				<springform:radiobutton name="sex" path="emp.sex" value="male"
					checked="checked" />
				Male
				<springform:radiobutton name="sex" value="female" path="emp.sex" />
				Female
			</div>

			<div class="form-group">
				<springform:label path="emp.salary" class="col-sm-3">Salary:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="salary" placeholder="Enter amount of salary" id="salary"
						path="emp.salary" />
					<div class="errorSalary"></div>
					<!-- <div class="errorDiv">Enter valid Phone No.</div> -->
				</div>
			</div>

			<div class="form-group">
				<springform:label path="emp.designation" class="col-sm-3">Designation:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="designation" placeholder="Enter Designation"
						id="designation" path="emp.designation" />
					<div class="errorDesignation"></div>
					<!-- <div class="errorDiv">Enter valid Phone No.</div> -->
				</div>
			</div>
			<springform:hidden path="id" />
			<springform:hidden path="userName" />
			<springform:hidden path="password" />
			<springform:hidden path="email" />
			<springform:hidden path="role.role_id" />
			<springform:hidden path="emp.emp_id" />
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-9">
					<input type="submit" class="btn btn-default submit" value="SAVE"
						id="submit" /> <input type="reset" class="btn btn-default"
						value="Reset" />

				</div>
			</div>

		</springform:form>


	</div>

</body>
</html>

		
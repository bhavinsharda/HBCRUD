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

<script type="text/javascript">
<%@include file="../js/jquery.min.js" %>
<%@include file="../js/bootstrap.min.js" %>
 <%@include file="../js/general.js" %> 


</script>

</head>
<body>
<div class="container">
	<h1 align="center">Fill Your detail</h1>
		<springform:form action="adduser" method="post"
			class="form-horizontal">


			<div class="form-group">
				<springform:label path="firstName" class="col-sm-3">First Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="firstName" placeholder="Enter First Name" id="fname"
						path="firstName" />
					<div class="errorFname"></div>
				</div>
			</div>

			<div class="form-group">
				<springform:label path="lastName" class="col-sm-3">Last Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="lastName" placeholder="Enter last Name" id="lname"
						path="lastName" />
					<div class="errorLname"></div>
					<!-- 	<div class="errorDiv">Enter valid last Name</div> -->
				</div>
			</div>
			<div class="form-group">
				<springform:label path="phoneNo" class="col-sm-3">Phone No:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="phoneNo" placeholder="+91 222-222-2222" id="phone"
						path="phoneNo" />
					<div class="errorMobile"></div>
					<!-- <div class="errorDiv">Enter valid Phone No.</div> -->
				</div>
			</div>

			<div class="form-group">
				<springform:label path="sex" class="col-sm-3">Gender:</springform:label>
				<springform:radiobutton name="sex" path="sex" value="male"
					checked="checked" />
				Male
				<springform:radiobutton name="sex" value="female" path="sex" />
				Female
			</div>

			<div class="form-group">
				<springform:label path="salary" class="col-sm-3">Salary:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="salary" placeholder="Enter amount of salary" id="salary"
						path="salary" />
					<div class="errorSalary"></div>
					<!-- <div class="errorDiv">Enter valid Phone No.</div> -->
				</div>
			</div>

			<div class="form-group">
				<springform:label path="designation" class="col-sm-3">Designation:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="designation" placeholder="Enter Designation"
						id="designation" path="designation" />
					<div class="errorDesignation"></div>
					<!-- <div class="errorDiv">Enter valid Phone No.</div> -->
				</div>
			</div>


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


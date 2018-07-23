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
	<h1 align="center">Add New User</h1>
	<springform:form action="addAddress" method="post" class="form-horizontal">
	
					<div class="form-group">
			<springform:label path="street" class="col-sm-3">Street Name:</springform:label>
			<div class="col-sm-5">
			<springform:input type="text" class="form-control input-sm" name="street"
						placeholder="Enter Street Name" id="street" path="street"/>
						 <div class="errorStreet"></div> 			
				</div>
				</div>

			<div class="form-group">
				<springform:label path="city" class="col-sm-3">City Name:</springform:label>
	            <div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="city"
						placeholder="Enter City Name" id="city" path="city"/>
						 <div class="errorCity"></div> 
				<!-- 	<div class="errorDiv">Enter valid last Name</div> -->
				</div>
			</div>
					<div class="form-group">
				<springform:label path="state" class="col-sm-3">State Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="state"
						placeholder="Enter State Name" id="state" path="state"/>
						<div class="errorState"></div>
						
				</div>
				</div>
			
			
			<div class="form-group">
				<springform:label path="country" class="col-sm-3">Country Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="country"
						placeholder="Enter Country Name" id="country" path="country"/>
					<div class="errorCountry"></div>
					<!-- <div class="errorDiv">Enter valid Phone No.</div> -->
				</div>
				</div>
			

			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-9">
					<input type="submit" class="btn btn-default submit"  value="SAVE" id="submit" />
					 <input type="reset" class="btn btn-default" value="Reset" />
				
				</div>
				</div>
		
</springform:form>

	</div>
</body>
</html>
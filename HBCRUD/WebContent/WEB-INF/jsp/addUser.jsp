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

<div class="container-fluid">
   <div class="row">
         <div class="left-container col-sm-6">
           <h1>Your Personal Details</h1><hr>
	      <springform:form action="adduser" method="post"
			class="form-horizontal">
	
			<div class="form-group">
				<springform:label path="firstName" class="col-sm-3">First and Last Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="firstName" placeholder="Enter First and Last Name" id="fname"
						path="firstName" />
					<div class="errorFname"></div>
				</div>
			</div>

			<div class="form-group">
				<springform:label path="empId" class="col-sm-3">Employee Id:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="empId" placeholder="Enter Your Employee Id" id="empId"
						path="empId" />
					<div class="errorEmpId"></div>
					<!-- 	<div class="errorDiv">Enter valid last Name</div> -->
				</div>
			</div>
			
			
			
			
			<div class="form-group">
				<springform:label path="emailId" class="col-sm-3">Email Address:</springform:label>
				<div class="col-sm-5">
					<springform:input type="email" class="form-control input-sm"
						name="emailId" placeholder="Enter Your Email Address" id="emailId"
						path="emailId" />
					<div class="errorEmailId"></div>
					<!-- 	<div class="errorDiv">Enter valid last Name</div> -->
				</div>
			</div>
			
			<hr></hr>
			
			<div class="form-group">
				<springform:label path="sex" class="col-sm-3">Gender:</springform:label>
				<springform:radiobutton name="sex" path="sex" value="male" checked="checked" />
				 Male
				<springform:radiobutton name="sex" value="female" path="sex" />
				 Female
			</div>
			
			<hr></hr>
			
			<div class="form-group">
				<springform:label path="sex" class="col-sm-3">Your Vertical</springform:label>
				<springform:radiobutton name="vertical" path="vertical" value="Purchasing Operations" checked="checked" />
				 Purchasing Operations
				<springform:radiobutton name="vertical"  path="vertical" value="MDM"/>
				 MDM
				 <springform:radiobutton name="vertical" path="vertical" value="SCM Analytics" />
				 SCM Analytics
				<springform:radiobutton name="vertical"  path="vertical" value="Contract Management"/>
				 Contract Management
				 <springform:radiobutton name="vertical" path="vertical" value="Programs & Tools and Delivery" />
				 Programs & Tools and Delivery
				<springform:radiobutton name="vertical"  path="vertical" value="Strategic Supply Management"/>
				 Strategic Supply Management
			</div>
			
			
			
			<div class="form-group">
				<springform:label path="sex" class="col-sm-3">Global Standard Category-If in doubt ask your Line Manager </springform:label>
				<springform:radiobutton name="standard" path="standard" value="Purchasing Operations" checked="checked" />
				 Purchasing Operations
			    <springform:radiobutton name="standard" path="standard" value="Contract Management"/>
				 Contract Management
				 <springform:radiobutton name="standard" path="standard" value="Programs & Tools" />
				 Programs & Tools
				<springform:radiobutton name="standard"  path="standard" value="Supplier Management"/>
				 Supplier Management
				 <springform:radiobutton name="standard" path="standard" value="Master Data" />
				 Master Data
				<springform:radiobutton name="standard"  path="standard" value="Delivery"/>
				 Delivery
				 <springform:radiobutton name="standard" path="standard" value="Management" />
				 Management
				<springform:radiobutton name="standard"  path="standard" value="TST"/>
				 TST
				 <springform:radiobutton name="standard"  path="standard" value="Others"/>
				 Others
			</div>
			
			<div class="form-group">
				<label class="col-sm-3">Which Process You Belong to :</label>
				<div class="col-sm-2">
					<select name="process" class="form-control input-sm">

						<option>India</option>
						<option>China</option>
						<option>United States</option>
					</select>
				</div>
			</div>
			
			
			
			<div class="form-group">
				<springform:label path="sex" class="col-sm-3">Support Type</springform:label>
				<springform:radiobutton name="support" path="support" value="International" checked="checked" />
				 International
				<springform:radiobutton name="support" value="Domestic" path="support" />
				 Domestic
			</div>
			
			
			  <h3>Joining Details</h3>
			
			
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
</div>
	</div>
</body>
</html>


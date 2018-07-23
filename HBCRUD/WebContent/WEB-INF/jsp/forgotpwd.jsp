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
<%@include file="../js/newregister.js" %>   
</script>
<!-- <script type='text/javascript' src='../js/jquery.min.js'></script>
<script type='text/javascript' src='../js/bootstrap.min.js'></script>
<script type='text/javascript' src='../js/newregister.js'></script> -->

</head>
<!--  <body onload="registerEvents();">  -->
<body>
<div class="container">
	
	<springform:form action="forgotpwd" method="post"
			class="form-horizontal">
				<springform:label path="email" class="col-sm-3">email:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm"
						name="email" placeholder="Enter Email Address" id="email" path="email" />
					<%-- <input type="email" class="form-control input-sm" name="email"
						placeholder="Enter Email Address" value="${user.email }" id="email"> --%>
					<!-- 	 <div class="errorDiv">Enter valid Email</div>  -->
					<div class="errorEmail"></div>
				</div>
			
		<div class="form-group">
				<div class="col-sm-offset-3 col-sm-9">
					<input type="submit" class="btn btn-default" value="Submit" id="save" />
				

				</div>
	</div>
	</springform:form>
	</div>
	</body>
	</html>
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
<title>login here</title>
<style type='text/css'>
<%@include file ="../css/bootstrap.min.css"%>
<%@include file="../css/style5.css"%>
</style>

<script>
<%@include file="../js/jquery.min.js" %>
<%@include file="../js/bootstrap.min.js" %>
 <%@include file="../js/login.js" %> 
	

  </script>
</head>
<body>
	<div class="container">

<!-- for invalid username or password or submit without any username or password -->
		<p style="text-align: center; color: red">${msg}</p>
		<c:remove var="msg" scope="session" />
		
<!-- for logout from system -->
		<p style="text-align: center; color: red">${msg1}</p>
		<c:remove var="msg1" scope="session" />
		
		<div class="row">
			<div class="col-xs-12">
				<h2 class="title">Login Here</h2>

				<div class="register">
					New User? <a href="register">Register Here</a>
				</div>
			</div>
		</div>
<springform:form action="login" method="post" class="form-horizontal">
		<%-- <form class="form-horizontal" name="login"
			action="<%=request.getContextPath()%>/LoginUserServlet" method="post"> --%>
			<%-- <form class="form-horizontal" 
			action="<%=request.getContextPath()%>/LoginUserServlet" method="post">
 --%>
			<div class="form-group">
			<springform:label path="userName" class="col-sm-3">User Name:</springform:label>
				<div class="col-sm-9">
				<springform:input type="text" class="form-control input-sm" name="userName"
						placeholder="Enter User Name" id="userName" path="userName"/>
					<!-- <div class="errorDiv">Enter User Name</div> -->
					<div class="errorUserName"></div> 
					
				</div>
		</div>
			
			<div class="form-group">
				<springform:label path="password" class="col-sm-3">Password:</springform:label>
				<div class="col-sm-9">
			<springform:input type="password" class="form-control input-sm" name="password"
						placeholder="Enter Password" id="password" path="password"/>
					<%-- <input type="password" class="form-control input-sm"
						name="password" id="password" placeholder="Enter Password"  value="${user.password}"> --%>
				<div class="errorPassowrd"></div> 
				<!--  <div class="errorDiv">Enter valid Password</div>  -->
				</div>
			</div>
			<%-- 
				 <div class="form-group">
				<springform:label path="role" class="col-sm-3">Login as:</springform:label>
				 <springform:radiobutton name="role" path="role" value="admin" checked="checked" /> Admin
					<springform:radiobutton name="role" value="user" path="role"/> User
			</div> --%>
	
			
					
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-9">
					<input type="submit" class="btn btn-default" value="Login" id="login" />
					 <input type="reset" class="btn btn-default" value="Reset" />
				</div>
			</div>
		
			
		</springform:form>
			<a href="forgotpwd">Forgot Password</a>
		
	</div>
</body>
</html>
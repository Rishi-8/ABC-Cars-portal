<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Your Profile</title>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!--  Access the Static Resources without using spring URL -->
<link href="/ABC_Car/css/style.css" rel="stylesheet" />
</head>
<body>

<%@ include file="header.jsp"%>
	
	<!-- ui start -->
	
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Your profile details</h3>
	
		<!-- User profile -->
		<div class="user-profile">
			<div class="profile-img">
				<img src="/ABC_Car/images/profile.jpg" class="profile-img"/>
			</div>
			<div class="profile-details">
				<form>
					<div>
						<label>ID: </label>
						<label>${user.id}</label>
					</div>
					<div>
						<label>User name: </label>
						<label>${user.userName}</label>
					</div>
					<div>
						<label>Name: </label>
						<label>${user.name}</label>
					</div>
					<div>
						<label>Password: </label>
						<label>${user.password}</label>
					</div>
				</form>
			</div>
			<a href="editprofile" >
				<button class="btn btn-primary profile-btn">Edit Profile</button>
			</a>
		</div>
		<!-- User profile end -->
	
	</div>
	
	<!-- ui end -->

	<!--  <div align="center">
<h1><a href="dash">ABC Cars</a></h1>
	<h2>Your profile</h2>
<table border="1" cellpadding="5">
		<tr>
			<th>ID</th>
			<th>Username</th>
			<th>Name</th>
			<th>Email</th>
			<th>Edit</th>
		</tr>
	
		<tr>
			<td>$(user.id)</td>
			<td>${user.userName}</td>
			<td>${user.name}</td>
			<td>${user.password}</td>
			<td><a href="editprofile" >Edit Profile</a></td>
		</tr>
	
	</table>
</div> -->
<%@ include file="footer.jsp"%>
</body>
</html>
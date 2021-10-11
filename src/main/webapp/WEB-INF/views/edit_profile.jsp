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
<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Change your profile details</h3>


<form:form modelAttribute="user" action="saveprofile" method="post">

<div class="row" style="color:black;">

<div class="col-sm-6 profile-label">
<label>ID: </label>
</div>
<div class="col-sm-6 profile-input">
<form:input type="text" placeholder="id" name="id" path="id"></form:input><br><br>
</div>
<div class="col-sm-6 profile-label">
<label>User name: </label>
</div>
<div class="col-sm-6 profile-input">
<form:input type="text" placeholder="Username" name="userName" path="userName"></form:input><br><br>
</div>
<div class="col-sm-6 profile-label">
<label>Name: </label>
</div>
<div class="col-sm-6 profile-input">
<form:input type="text" placeholder="Name" name="name" path="name"></form:input><br><br>
</div>
<div class="col-sm-6 profile-label">
<label>Password: </label>
</div>
<div class="col-sm-6 profile-input">
<form:input type="text" placeholder="Password" name="password" path="password"></form:input><br><br>
</div>
<input type="submit" value="submit"/>	

</div>

</form:form>
</div>
	<!-- ui start -->
	
 <!--   <div class="container-fluid bg-1 text-center">
		<h3 class="margin">Your profile details</h3>
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

	</div> -->
	<%@ include file="footer.jsp"%>
</body>
</html>
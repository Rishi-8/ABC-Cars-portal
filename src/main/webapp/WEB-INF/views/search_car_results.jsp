<%@ page contentType="text/html; charset=US-ASCII"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

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


	<!-- First Container -->
	<div class="container-fluid bg-1">
		<div>
			<h2 class="text-center">Search Car Results</h2>

			<!--  Search Car Lists  -->
			
			<div class="row">
				<div class="col-md-12">
				<c:url var="get_search_url" value="search"/>
				<form action="${get_search_url}" id="myform" method="get" class="form-inline text-right" style="padding:20px;">
					<input class="form-control mr-sm-2" type="search" placeholder="Search" value="${keyword}" name="keyword" />
						<input type="submit" value="Search" class="btn btn-info"/>

				</form>

				</div>
			</div>

			<div class="row">

				<div class="col-md-12">
				
					<c:if test="${empty search_cars}">
						<div>
							<h4 class="text-danger text-center"> No Matching Item Found. </h4>	
							<h5 class="text-danger text-center"> Please try with another keyword.</h5>	
						</div>	
					</c:if>
					
					<c:if test="${not empty search_cars}">
					
					<!-- Car List -->
					<div class="list-cars">
						<c:forEach var="car" items="${search_cars}">
							<div class="car-item">
								<div class="car-image">
									<img src="/ABC_Car/images/default-car.png" width="100%" height="100%">
								</div>
								<div class="car-details">
									<p>${car.id}</p>
									<p>${car.make}</p>
									<p>${car.model}</p>
									<p>${car.registeration}</p>
									<p>${car.price}</p>
								</div>
								<div class="car-action">
									<div class="buttons">
									<sec:authorize access="hasRole('Administrator')">
										<a href="edit?id=${car.id}">
											<button class="btn btn-info">Update</button>
										</a>
										<a href="delete?id=${car.id}">
											<button class="btn btn-danger">Delete</button>
										</a>
									</sec:authorize>
									<a href="car_detail?id=${car.id}">
									<button class="btn btn-info">View </button>
									</a>
									</div>
								</div>
							</div>	
						</c:forEach>
					</div>
					<!-- End car list -->
					
					<!-- <table class="table table-striped table-bordered">

						<thead>
							<tr>
								<th>No.</th>
								<th>Car ID</th>
								<th>Car Make</th>
								<th>Model</th>
								<th>Reg No.</th>
								<th>Price</th>
								<th>Actions</th>
							</tr>
						</thead>
						
						<tbody>
						
						<% int i=1; %>
						<c:forEach var="car" items="${search_cars}">
						
							<tr>
								<td><%=i %></td>
								<td>${car.id}</td>
								<td>${car.make}</td>
								<td>${car.model}</td>
								<td>${car.registeration}</td>
								<td>${car.price} </td>

								<td>
									<a href="car_detail?id=${car.id}">
									<button class="btn btn-info">View </button>
									</a>
								</td>
							</tr>
							<% i++; %>
						</c:forEach>

						</tbody>
					</table> -->
					
					</c:if>
					
				</div>
			</div>
			
			<!--  End Car Lists  -->

		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>
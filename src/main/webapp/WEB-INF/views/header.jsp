<!-- Navbar -->
<nav class="navbar navbar-primary">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="login">
			<!--  <img src="/ABC_Car/images/used-car-logo.png" width="120px"/> -->
			<span Style="color:crimson">ABC</span> Cars</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">

				<sec:authorize access="!isAuthenticated()">
					<li><a href="login">Login</a></li>
					<li><a href="new">Register</a></li>
					<li><a href="about">About Us</a></li>
					<li><a href="contact">Contact Us</a></li>
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Users')">
					 <li><a href="cars">Used Cars</a></li>
					 <li><a href="new_car">Sell Your Car</a></li>
				</sec:authorize>
				
				<sec:authorize access="hasRole('Administrator')">
					 <li><a href="cars">Car Management </a></li>
					 <li><a href="users">User Management</a></li>	 
				</sec:authorize>
					<li><a href="viewprofile" >Profile</a></li>
					
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li>
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit"
							name="Logout" value="Logout" class="btn btn-primary"></input>
					</form>
					</li>
				</sec:authorize>
				



			</ul>
		</div>
	</div>
</nav>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>
					<!-- Sucessfully inserted -->
					<%
					String regMsg = (String) session.getAttribute("reg-sucess");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert">User Registered
						Successfully!<a href="login.jsp">Login</a></div>
					<%
					session.removeAttribute("reg-sucess");
					}
					%>
					<!-- Failed inserted -->
					<%
					String failMsg = (String) session.getAttribute("failed-reg");
					if (failMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">Something went wrong. Try again.</div>
					<%
					session.removeAttribute("failed-reg");
					}
					%>
					<div class="card-body">
						<form action="UserServlet" method="post">
							<label>Enter Full Name</label>
							<div class="form-group">
								<input type="text" name="fname" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="" required="required">

							</div>
							<label> Enter Email</label>
							<div class="form-group">
								<input type="email" name="uemail" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="" required="required">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" name="upassword" class="form-control"
									id="exampleInputPassword1" placeholder="" required="required">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>
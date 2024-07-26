<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/333.jpg");
	width: 100%;
	height: 93vh;
	background-repeat: no-repeat;
}
</style>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-sign-in fa-3x" aria-hidden="true"></i>
						<h4>Login</h4>
					</div>						
						<%
						String invalid=(String)session.getAttribute("login-failed");
						if(invalid!=null){%>
							<div class="alert alert-danger" role="alert">Login failed</div>
						<%
						session.removeAttribute("login-failed");
						}
						%>
						<%
						String withoutLogin=(String)session.getAttribute("Login-error");
						if(withoutLogin!=null){%>
						
						<div class="alert alert-danger" role="alert">Please login first.</div>
							
						<%
						session.removeAttribute("Login-error");
						}
						%>
						<%
						String lgMsg=(String)session.getAttribute("logoutMsg");
						if(lgMsg!=null){%>
						<div class="alert alert-success" role="alert"><%=lgMsg %></div>	
						<%
						session.removeAttribute("logoutMsg");
						}
						%>
						<div class="card-body">
						<form action="loginServlet" method="post">
							<label> Enter Email</label>
							<div class="form-group">
								<input type="email" name="uemail" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="" required>

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" name="upassword" class="form-control"
									id="exampleInputPassword1" placeholder="" required>
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>
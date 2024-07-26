<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import='java.sql.*'%>
<%@page import="com.Db.* " %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
background:url("img/333.jpg");
width:100%;
height:93vh;	
background-repeat: no-repeat;
background-size: cover;
}
</style>

<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<%
	Connection conn=DBConnect.getConn();
	System.out.print(conn);
	
	%>
	<div class="container-fluid back-img">
	<br>
		<div class="text-center">
			<h1 class="text-white"> <i class="fa fa-graduation-cap" aria-hidden="true"></i>
			ENotes-Save your notes</h1><br>
			<a href="login.jsp" class="btn btn-light"><i class="fa fa-sign-in" aria-hidden="true"></i>
			Login</a>
			<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>
			Register</a>
	
		 </div>
	
	</div>


<%@include file="all_component/footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%
UserDetails user2 = (UserDetails) session.getAttribute("userD");
if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error","Please login.");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ENotes | Dashboard</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>

<div class="container-fluid">
<%@include file="all_component/navbar.jsp" %>
<div class="card py-5">
<div class="card-body text-center">
<img alt="" src="img/pen1.jpg" class="img-fluid mx-auto" >
<h1>START TAKING YOUR NOTES</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start Now</a>
</div>
</div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>
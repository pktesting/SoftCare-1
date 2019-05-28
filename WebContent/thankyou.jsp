<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
	if(session.getAttribute("patientLogin")==null || session.getAttribute("patientLogin")==" ")
	{
		response.sendRedirect("login.jsp");
	}
		
 %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Feedback</title>
<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;}
	.custom {
	font-family: Courier;
	color: red;
	font-size:20px;
}

h1{
color: white;}
</style>

</head>
<body>
<br>
<br>
<br>
<br>
<br>

<br>
<br>

<br>
<br>
<center>
<h1> THANK YOU FOR YOUR FEEDBACK </h1>
<form action="index1.jsp" method="post">
<input type="submit" value="HOME">
</form>

</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("patientLogin")==null)
		{
			response.sendRedirect("login.jsp");
		}
		
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Consultation Info</title>
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

td{
color: white;}
</style>

</head>
<body>
<center>
		<table>
			<tr>
				<td><h1>Daily Entry Records</h1>
				<br><br><br>
				</td>
			</tr>
		</table>
		<form action="ConInfoDisplayController"
			 method="post">
			<table>
				<tr>
					<td><b>Opno:</b></td>
					<td><input type="text" name="Opno" id="opno"></td>
				</tr>

			</table>
			<table>

				<tr>
					<td><input type="submit" value="Search"
						style="width: 100px; height: 50px; color: blue"></td>
				</tr>

			</table>
		</form>
		<center> <form action="index1.jsp" method="post">
<input type="submit" value="HOME">
</form>
</center>
</body>
</html>
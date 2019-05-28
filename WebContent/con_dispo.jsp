<%@page import="com.cts.bean.ConInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultation Info</title>
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
color: white;
}
</style>

</head>



<center>
	<body>
	<br>
		<br>
		<br>
		<br>
		<br>
		<table border="2" bordercolor="white">
			<tr bordercolor="white">
				<h3>Consultation Information</h3>
			</tr>
			<tr bordercolor="white">
				<th>Consultation Id</th>
				<th>Doctor ID</th>
				<th>Patient Name</th>
				<th>OPNO</th>
				<th>Consultation Date</th>
			</tr>

         <%
            ConInfo c;
         	c = (ConInfo) request.getAttribute("dispo");
         %>
         <tr bordercolor="white">
           <td><%= c.getCon_id() %></td>
           <td><%= c.getDoc_id() %></td>
           <td><%= c.getName() %></td>
           <td><%= c.getOpno() %></td>
           <td><%= c.getCon_date() %></td>
         </tr>
         
		</table>
		<br>
		<br>
		<br>
		<br>
		<br>
		
<form action="index1.jsp" method="post">
<input type="submit" value="Home">
</form>
	</body>
</center>

</html>
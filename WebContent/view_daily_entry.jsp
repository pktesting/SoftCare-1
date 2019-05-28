<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.cts.bean.DailyEntry"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("adminLogin")==null)
		{
			response.sendRedirect("login.jsp");
		}
		
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Daily Entry Details</title>

<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body {
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
}
tr{
color:white;
}
</style>
</head>
<body>
	<center>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
		<table border="2">
		
		
			<h3>Daily Entry Details</h3>
			<tr>
				<td>Opno</td>
				<td>Patient Type</td>
				<td>Date</td>
				<td>Drug1</td>
				<td>No of Drug1</td>
				<td>Drug2</td>
				<td>No of Drug2</td>

			</tr>
			<% 
DailyEntry x=(DailyEntry)request.getAttribute("daentry");
%>

			<tr>
				<td><%=x.getOpno() %></td>
				<td><%=x.getPatient_type() %></td>
				<td><%=x.getDate()%></td>
				<td><%= x.getDrug1()%></td>
				<td><%=x.getNo_of_drug1() %></td>
				<td><%= x.getDrug2()%></td>
				<td><%=x.getNo_of_drug2() %></td>

			</tr>

		</table>
	</center>
	<br>
	<br><br>
	<br>
	<center> <form action="index.jsp" method="post">
<input type="submit" value="HOME">
</form>
</center>
</body>
</html>

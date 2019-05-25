<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Daily Entries</title>

<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/pharmacy.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
</style>
</head>
<body>
	<center>
		<table>
			<tr>
				<h1>Pharmacy Daily Entries</h1>
			</tr>
		</table>
		<form action="" method="post">
		<table>
		<tr>
		<td><b>Date:</b></td>
		<td><input type="date" id="date" name="date" style="width: 300px; height: 45px;"></td>
		</tr>
		<tr>
		<td><b>Drug Name:</b></td>
		<td><input type="text" id="dname" name="dname"></td>
		</tr>
		<tr>
		<td><b>No. Of Drugs:</b></td>
		<td><input type="text" id="noOfdrug" name="noOfdrug"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="submit" style="width: 100px; height: 50px; color: blue"></td>
			
			<td><a href="daily_entries.jsp"><b><center>Back</center></b></a></td>
		</tr>
		</table>
		</form>
	</center>

</body>
</html>
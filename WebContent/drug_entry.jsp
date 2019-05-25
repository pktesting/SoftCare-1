<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Drug Details</title>
<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/drugentry.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
	}
</style>
</head>
<body>
<center>
	<table>
			<tr>
				<h1>Drug Entry</h1>
			</tr>
		</table>
		<form action="">
			<table>
				<tr>
					<td><b>Drug Name:</b></td>
					<td><input type="text" name="dname" placeholder="Enter Drug Name"></td>
				</tr>
				<tr>
					<td><b>In Stock:</b></td>
					<td><input type="text" name="stock" placeholder="Number of drugs in stock"></td>
				</tr>
				
				<tr>
					<td><b>Expiry Date1:</b></td>
					<td><input type="text" name="edate1" placeholder="eg. mm/YYYY"></td>
				</tr>
				<tr>
					<td><b>Expiry Date2:</b></td>
					<td><input type="text" name="edate2" placeholder="eg. mm/YYYY"></td>
				</tr>
				
				</table>
				<table>
				<col width="0">
			    <col width="200">
				<center>
				<tr>
					<td><input type="submit" name="submit" value="Submit" style="width: 100px; height: 50px; color: blue"></td>
					<!--<td><a href="login.jsp"><b>Back</b></a></td> --->
					
				</tr>
				
				</center>
			</table>
		</form>
	</center>
</body>
</html>
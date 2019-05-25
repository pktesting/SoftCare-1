<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock Details</title>
</head>
<body>
<center>
<form action="DrugStoreDisplayController">
		<table>
		<tr>
		<td>
		<h3>Stock Details</h3>
		</td>
		</tr>
			<tr>
				<td><b>Enter Drug Name:</b><input type="text" name="drug_name">
				</td>
			</tr>
			<tr>
			<td><input type="submit" value="Search"></td>
			</tr>
		</table>
	</form>
	</center>
</body>
</html>
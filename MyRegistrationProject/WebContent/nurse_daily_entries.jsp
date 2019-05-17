<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nurse Daily Entries</title>
</head>
<body>
	<center>
		<table>
			<tr>
				<h1>Nurse Daily Entries</h1>
			</tr>
		</table>
		<form action="" method="post">
		<table>
		<tr>
		<td><b>OpNo.:</b></td>
		<td><input type="text" id="opno" name="opno"></td>
		</tr>
		<tr>
		<td><b>Date:</b></td>
		<td><input type="text" id="date" name="date"></td>
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
		<td><input type="submit" value="submit"></td>
		<td><a href="daily_entries.jsp">Back</td>
		</tr>
		</table>
		</form>

	</center>

</body>
</html>
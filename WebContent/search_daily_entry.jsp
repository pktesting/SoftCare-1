<!DOCTYPE html>
<html>
<head>
<%
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("adminLogin")==null)
		{
			response.sendRedirect("login.jsp");
		}
		
%>
<meta charset="ISO-8859-1">
<title>Daily Entry Records</title>

<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body {
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
}
</style>
<script>
	function validate() {
		var opno = document.getElementById("opno").value;
		if (opno == "") {
			alert("OPNO is blank");
			return false;
		}
		if (opno.match(/[A-Z]{1}[A-Za-z0-9]*/) == null) {
			alert("OPNO should start with a CAPITAL LETTER followed by ALPHANUMERIC CHARACTERS");
			return false;
		} else {
			return true;
		}
	}
</script>
</head>
<center>
	<body>
		<table>
			<tr>
				<td><h1>Daily Entry Records</h1>
				<br><br><br>
				</td>
			</tr>
		</table>
		<form action="DailyEntryDisplayController"
			onsubmit="return validate()" method="post">
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
</center>
</html>
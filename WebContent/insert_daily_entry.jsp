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
</head>

<center>
	<body>
		<form action="DailyEntryController" onsubmit="return validate()"
			method="post">
			<table>

				<tr>

					<td><h1>Daily Entry Records</h1>
					<br><br><br>
					</td>
					

				</tr>

				<tr>

					<td><b>Opno:</b></td>
					<td><input type="text" name="Opno" id="opno"></td>
				</tr>
				<tr>
					<td><b>Patient Type:</b></td>
					<td><select name="Patient_type"
						style="width: 300px; height: 45px;">
							<option value="select">Select</option>
							<option id="patient_type" value="Student">Student</option>
							<option id="patient_type" value="Beneficiary">Beneficiary</option>
					</select></td>
				</tr>
				<tr>
					<td><b>Date:</b></td>
					<td><input type="date" name="date" id="date"
						style="width: 300px; height: 45px;"></td>
				</tr>
				<tr>
					<td><b>Drug1:</b></td>
					<td><input type="text" name="Drug1" id="Drug1"></td>
				</tr>
				<tr>
					<td><b>No of Drug1:</b></td>
					<td><input type="text" name="No_of_drug1" id="No_of_drug1"></td>
				</tr>
				<tr>
					<td><b>Drug2:</b></td>
					<td><input type="text" name="Drug2" id="Drug2"></td>
				</tr>
				<tr>
					<td><b>No of Drug2<b></td>
					<td><input type="text" name="No_of_drug2" id="No_of_drug2"></td>
				</tr>

			</table>
			<table>

				<tr>
					<td><input type="submit" value="Add"
						style="width: 100px; height: 50px; color: blue"></td>
				</tr>

			</table>
		</form>

	</body>
</center>
</html>

<script>
	function validate() {
		var opno = document.getElementById("opno").value;
		var drug1 = document.getElementById("Drug1").value;
		var noofdrug1 = document.getElementById("No_of_drug1").value;
		var drug2 = document.getElementById("Drug2").value;
		var noofdrug2 = document.getElementById("No_of_drug2").value;
		var patient_type = document.getElementById("patient_type").value;
		if (patient_type == "") {
			alert("Please select any option from drop down");
			return false;
		}
		if (opno == "") {
			alert("Op No is blank");
			return false;
		}
		if (opno.match(/[A-Z]{1}[A-Za-z0-9]*/) == null) {
			alert("Op No should start with a CAPITAL LETTER followed by ALPHANUMERIC CHARACTERS");
			return false;
		}
		if (drug1 == "") {
			alert("Drug Name1 is blank");
			return false;
		}
		if (drug1.match(/[A-Z]{1}[A-Za-z0-9]*/) == null) {
			alert("Drug Name1 should start with a CAPITAL LETTER followed by ALPHANUMERIC CHARACTERS");
			return false;
		}
		if (noofdrug1 == "") {
			alert("Number of drugs cannot be blank");
			return false;
		}
		if (noofdrug1 <= 0) {
			alert("Number of drugs has to be positive");
			return false;
		}

		if (drug2 == "") {
			alert("Drug Name2 is blank");
			return false;
		}
		if (drug2.match(/[A-Z]{1}[A-Za-z0-9]*/) == null) {
			alert("Drug Name2 should start with a CAPITAL LETTER followed by ALPHANUMERIC CHARACTERS");
			return false;
		}
		if (noofdrug2 == "") {
			alert("Number of drugs cannot be blank");
			return false;
		}
		if (noofdrug2 <= 0) {
			alert("Number of drugs has to be positive");
			return false;
		}
	}
</script>




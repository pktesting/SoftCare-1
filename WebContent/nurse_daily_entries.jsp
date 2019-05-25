<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nurse Daily Entries</title>

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
				<h1>Nurse Daily Entries</h1>
			</tr>
		</table>
		<form action="DailyEntryController" onsubmit="return validate()" method="post" >
				<table>
		<tr>
		<td><h1>Daily Entry Records</h1></td>
		</tr>
			<tr>
				<td>Opno:</td>
				<td><input type="text" name="Opno" id="opno"></td>
			</tr>
			<tr>
				<td>Patient Type:</td>
				<td>
				<select name="Patient_type">
					<option id="Patient_Type" value="Student">Student</option>
					<option id="Patient_Type" value="Beneficiary">Beneficiary</option>
				</select>
				
				</td>
			</tr>
			<tr>
				<td>Date: </td>
				<td>
					<script type="text/javascript">
					var today = new Date();
					var dd = String(today.getDate()).padStart(2, '0');
					var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
					var yyyy = today.getFullYear();

					today = mm + '/' + dd + '/' + yyyy;
					document.write(today);
					
					</script>
				
				</td>
			</tr>
			<tr>
				<td>Drug1:</td>
				<td><input type="text" name="Drug1" id="Drug1"></td>
			</tr>
			<tr>
				<td>No of Drug1:</td>
				<td><input type="text" name="No_of_drug1" id="No_of_drug1"></td>
			</tr>
			<tr>
				<td>Drug2:</td>
				<td><input type="text" name="Drug2" id="Drug2"></td>
			</tr>
			<tr>
				<td>No of Drug2</td>
				<td><input type="text" name="No_of_drug2" id="No_of_drug2"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Add"></td>
			</tr>
		</table>
		</form>

	</center>
	<script>
	function validate(){
	var opno = document.getElementById("opno").value;
	var drug1=document.getElementById("Drug1").value;
	var noofdrug1=document.getElementById("No_of_drug1").value;
	var drug2=document.getElementById("Drug2").value;
	var noofdrug2=document.getElementById("No_of_drug2").value;
	if(opno==""){
		alert("OPNO is blank");
		return false;
	}
	if(opno.match(/[A-Z]{1}[A-Za-z0-9]*/)==null)
	{
		alert("OPNO should start with a CAPITAL LETTER followed by ALPHANUMERIC CHARACTERS");
		return false;
	}
	if(drug1==""){
		alert("Drug Name is blank");
		return false;
	}
	if(drug1.match(/[A-Z]{1}[A-Za-z0-9]*/)==null)
	{
		alert("Drug Name should start with a CAPITAL LETTER followed by ALPHANUMERIC CHARACTERS");
		return false;
	}
	if(noofdrug1==""){
		alert("Number of drugs cannot be blank");
		return false;
	}
	if(noofdrug1<=0){
		alert("Number of drugs has to be positive");
		return false;
	}
	
	if(drug2==""){
		alert("Drug Name is blank");
		return false;
	}
	if(drug2.match(/[A-Z]{1}[A-Za-z0-9]*/)==null)
	{
		alert("Drug Name should start with a CAPITAL LETTER followed by ALPHANUMERIC CHARACTERS");
		return false;
	}
	if(noofdrug2==""){
		alert("Number of drugs cannot be blank");
		return false;
	}
	if(noofdrug2<=0){
		alert("Number of drugs has to be positive");
		return false;
	}
	}
	
	</script>

</body>
</html>
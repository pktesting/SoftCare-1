<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Records</title>

<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/patient.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
	margin:0 auto;
</style>
</head>
<body>
<table>
			<tr>
				<h1>In - Patient Records</h1>
			</tr>
		</table>

		<form action="InPatientController" onsubmit="return validate()" method="post">
			<table>
				<tr>
					<td><b>Name:</b></td>
					<td>
						<input type="text" name="patient_name" id="patient_name" placeholder="Enter Patient Name">
					</td>
					
					<td><b>Age:</b></td>
					<td>
					<input type="text" name="patient_age" id="patient_age" placeholder="Enter Patient Age">
					</td>
					
					<td><b>Patient Type:</b></td>
					<td>
						<select name="patientType">
							<option value="student">Student</option>
							<option value="beneficiary">Beneficiary</option>
						</select>
					</td>	
				
				</tr>
				</table>
				<br>
				<table>
				<tr>
					<td><b>Gender:</b></td>
					<td>
						<select  name="gender">
      						<option id="gender" value="Male">Male</option>
      						<option id="gender" value="Female">Female</option>
      						<option id="gender" value="Others">Others</option>
    					</select>
					</td>
				</tr>
				</table>
				<table>
				<br>
					<tr>
						<td><b>Op No:</b></td>
						<td><input type="text" name="opno" id="opno"></td>
					
						<td><b>Date of Admission:</b></td>
						<td><input type="date" name="date_of_admission" id="date_of_admission"></td>
					
						<td><b>Date of Discharge:</b></td>
						<td><input type="date" name="date_of_discharge" id="date_of_discharge"></td>
					</tr>
				</table>
				<br><br>
				<table>
					<tr>
						<td><b>Diagnosis:</b></td>
					</tr>
					<tr>
						<td>
								<textarea name="paragraph_text" cols="40" rows="5"></textarea>
						</td>
					</tr>
				</table>
				<br>
				<table>
				<tr>
					<td><b>Disease Severeness:</b></td>
					<td><input type="radio" id="ward1" name="ward" value="1" onclick="ShowHideDiv()">Yes</td>
					<td><input type="radio" id="ward2" name="ward" value="0" onclick="ShowHideDiv()">No</td>
				</tr>
				
				<tr>
				<td>
				<div id="dv" style="display: none;">
				<table>
				<tr>
				<td><b>Isolation Ward No:</b></td>
				<td><input type="text" id="ward" name="ward"></td>
				</tr>
				</table>
				<br>
				</div>
				
				<tr>
					<td>
						<input type="submit" value="Submit">
					</td>
					
					<td><a href="patient_records.jsp"><b>Back</b></a></td>

				</tr>


			</table>
</body>
<script>
	function ShowHideDiv() {
		var chkEmp = document.getElementById("ward1");
		var dv= document.getElementById("dv");
		dv.style.display = chkEmp.checked ? "block" : "none";
	}
	
	function validate() 
	{
		var name = document.getElementById("patient_name").value;
		var age = document.getElementById("patient_age").value;
		var opno = document.getElementById("opno").value;	
		var date_of_admission = document.getElementById("date_of_admission").value;
		var date_of_discharge = document.getElementById("date_of_discharge").value;
		if(name=="")
		{
			alert("Don't leave the NAME field empty!");
			return false;
		}
		if(!name.match(/[A-Za-z]{3,}[\\s]*[A-Za-z]*/)==null)
		{
			alert("Enter only Alphabets for the NAME field");
			return false;
		}
		
		if(age=="") 
		{
			alert("Don't leave the AGE field empty!");
			return false;
		} 
		//if (age.value<0)
		if (isNaN(age)||age<1)
		{
			alert("Time travel has not been inventerd yet. Enter a positive number for AGE");
			return false;
		}
		if (opno=="") 
		{
			alert("Don't leave the OPNO field empty!");
			return false;
		}
		if(opno.match(/[A-Z]{1}[A-Za-z0-9]*/)==null)
		{
			alert("The OPNO should start with a Capital Letter followed by ALPHANUMERIC CHARACTERS");
			return false;
		}
		if(date_of_discharge=="")
		{
			alert("Don't leave the Date field empty!");
			return false;
		} 
		if(date_of_admission=="")
		{
			alert("Don't leave the Date field empty!");
			return false;
		}
		if(date_of_admission>date_of_discharge)
		{
			alert("Date of Admission should be BEFORE Date of Discharge. Please use your COMMON SENSE");	
			return false;
		}
	}
</script>
</html>
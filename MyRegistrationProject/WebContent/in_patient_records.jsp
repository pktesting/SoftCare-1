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
<div id ="wrap">
	<table>
			<tr>
				<center><h1>In - Patient Records</h1></center>
			</tr>
	</table>

		<form action="InPatientController">
			<table>
			<col width="650">
			<col width="200">
				<tr>
					<td><b>Name:</b></td>
					<td>
						<input type="text" name="patient_name" placeholder="Enter Patient Name">
					</td>
					<br>
					<table>
					   <col width="650">
			           <col width="200">
					<td><b>Age:</b></td>
					<td>
					<input type="text" name="patient_age" placeholder="Enter Patient Age">
					</td>
			</table>
			<table>
			<col width="650">
			<col width="200">
					<td><b>Patient Type:</b></td>
					<td>
						<select name="patientType" style="width: 300px; height: 45px;">
							<option value="student">Student</option>
							<option value="beneficiary">Beneficiary</option>
						</select>
					</td>
			</table>	
				
				</tr>
				<br>
			<table>
			<col width="650">
			<col width="200">
				<tr>
					<td><b>Gender:</b></td>
					<td>
					
						<label class="radio-inline" >
      						<input type="radio" name="gender" value="Male">Male
    					</label>
    					<label class="radio-inline">
      						<input type="radio" name="gender" value="Female">Female
    					</label>
    					<label class="radio-inline">
      						<input type="radio" name="gender" value="Others">Others
    					</label>
					</td>
				</tr>
			</table>
			<table>
			<col width="650">
			<col width="200">
				
					<tr>
						<td><b>Op No:</b></td>
						<td><input type="text" name="opno"></td>
			</table>
			<table>
			<col width="650">
			<col width="200">
					
						<td><b>Date of Admission:</b></td>
						<td><input type="date" name="date_of_admission" style="width: 300px; height: 45px;"></td>
			</table>
			<table>
			<col width="650">
			<col width="200">
					
						<td><b>Date of Discharge:</b></td>
						<td><input type="date" name="date_of_discharge" style="width: 300px; height: 45px;"></td>
					</tr>
			</table>
			
			<table>
			<col width="650">
			<col width="200">
					<tr>
						<td><b>Diagnosis:</b></td>
					</tr>
					<tr>
						<td>
						
								<textarea name="paragraph_text" cols="40" rows="5"></textarea>
						</td>
					</tr>
			</table>
				
			<table>
			<col width="650">
			<col width="200">
				<tr>
					<td><b>Disease Severeness:</b></td>
					<td><input type="radio" id="ward1" name="ward" value="1" onclick="ShowHideDiv()">Yes</td>
					<td><input type="radio" id="ward2" name="ward" value="0" onclick="ShowHideDiv()">No</td>
				</tr>
				
				<tr>
				<td>
			</td>
			</tr>
			</table>
			<div id="dv" style="display: none;">
				<table>
				<col width="650">
			    <col width="200">
				<tr>
				<td><b>Isolation Ward No:</b></td>
				<td><input type="text" id="ward" name="ward"></td>
				</tr>
				</table>
				<br>
			</div>
				
				<tr>
					<td>
						<input type="submit" name="submit" value="Submit" style="width: 100px; height: 50px; color: blue">
					</td>
					
					<td><a href="patient_records.jsp"><b>Back</b></a></td>

				</tr>


			</table>
		</form>
	</div>
</body>
<script>
	function ShowHideDiv() {
		var chkEmp = document.getElementById("ward1");
		var dv= document.getElementById("dv");
		dv.style.display = chkEmp.checked ? "block" : "none";
	}
</script>
</html>
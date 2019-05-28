<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("adminLogin")==null && session.getAttribute("doctorLogin")==null)
		{
			response.sendRedirect("login.jsp");
		}
		
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Records</title>

<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/main.jpg');
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

		<form action="InPatientController" onsubmit="return validate()">
			<table>
			<col width="650">
			<col width="200">
				<tr>
					<td><center><b>Name:</b></center></td>
					<td>
						<input type="text" name="patient_name" id="patient_name" placeholder="Enter Patient Name">
					</td>
					<br>
					<table>
					   <col width="650">
			           <col width="200">
					<td><center><b>Age:</b></center></td>
					<td>
					<input type="text" name="patient_age" id="patient_age" placeholder="Enter Patient Age">
					</td>
			</table>
			<table>
			<col width="650">
			<col width="200">
					<td><center><b>Patient Type:</b></center>></td>
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
					<td><center><b>Gender:</b></center></td>
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
						<td><center><b>Op No:</b></center></td>
						<td><input type="text" name="opno" id="opno"></td>
			</table>
			<table>
			<col width="650">
			<col width="200">
					
						<td><center><b>Date of Admission:</b></center></td>
						<td><input type="date" name="date_of_admission" id="date_of_admission" style="width: 300px; height: 45px;"></td>
			</table>
			<table>
			<col width="650">
			<col width="200">
					
						<td><center><b>Date of Discharge:</b></center></td>
						<td><input type="date" name="date_of_discharge" id="date_of_discharge" style="width: 300px; height: 45px;"></td>
					</tr>
			</table>
			
			<table>
			<col width="650">
			
			
			
					<tr>
						<td><center><b>Diagnosis:</b></center></td>
	<td>
							<center>
								<textarea name="paragraph_text" cols="40" rows="5"></textarea>
							</center>
						</td>
					</tr>
				
			</table>
				
			
				<br>
			</div>
				</table>
				
				
				<center>
				<tr>
				
					<td>
						<input type="submit" name="submit" value="Submit" align="center" style="width: 100px; height: 50px; color: blue ">
					</td>
					
	

				</tr>
                </center>
             
			
		</form>
	</div>
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
		if(name.match(/[A-Za-z]{3,}[\\s]*[A-Za-z]*/)==null)
		{
			alert("Enter only Alphabets for the NAME field");
			return false;
		}
		
		if(age=="") 
		{
			alert("Don't leave the AGE field empty!");
			return false;
		}
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
			alert("Date of Admission should be BEFORE Date of Discharge.");	
			return false;
		}
	}
</script>
</html>
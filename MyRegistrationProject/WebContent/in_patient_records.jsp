<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Records</title>
</head><%--
<body>
<center>
	<table>
			<tr>
				<h1>Patient Records</h1>
			</tr>
		</table>
		<table>
		<tr>
		<td><a href="student_record.jsp">Student</td>
		<td>||</td>
		<td><a href="employee_record.jsp">Employee</td>
		<td>||</td>
		<td><a href="beneficiarie_record.jsp">Beneficiarie</td>
		
		</tr>
		</table>
	</center>
</body>
<body>--%>

	<table>
			<tr>
				<h1>In - Patient Records</h1>
			</tr>
		</table>
		<%--<table>
		<tr>
		<td><a href="student_record.jsp">Student</td>
		<td>||</td>
		<td><a href="employee_record.jsp">Employee</td>
		<td>||</td>
		<td><a href="beneficiarie_record.jsp">Beneficiarie</td>
		
		</tr>
	</table> --%>

		<form action="InPatientController">
			<table>
				<tr>
					<td><b>Name:</b></td>
					<td>
						<input type="text" name="patient_name" placeholder="Enter Patient Name">
					</td>
					
					<td><b>Age:</b></td>
					<td>
					<input type="text" name="patient_age" placeholder="Enter Patient Age">
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
				<br>
					<tr>
						<td><b>Op No:</b></td>
						<td><input type="text" name="opno"></td>
					
						<td><b>Date of Admission:</b></td>
						<td><input type="" name="date_of_admission"></td>
					
						<td><b>Date of Discharge:</b></td>
						<td><input type="date" name="date_of_discharge"></td>
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
						<input type="submit" name="submit" value="Submit">
					</td>
					
					<td><a href="patient_records.jsp"><b>Back</b></a></td>

				</tr>


			</table>
		</form>
	
</body>
<script>
	function ShowHideDiv() {
		var chkEmp = document.getElementById("ward1");
		var dv= document.getElementById("dv");
		dv.style.display = chkEmp.checked ? "block" : "none";
	}
</script>
</html>
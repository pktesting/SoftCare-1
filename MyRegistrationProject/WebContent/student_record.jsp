<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Information(Student)</title>
</head>
<body>
<center>
	<table>
		<tr>
			<h1>Student Information</h1>
		</tr>
	</table>
	
		<form action="">
			<table>
				<tr>
					<td><b>Name:</b></td>
					<td><input type="text" name="same"
						placeholder="Enter Patient Name"></td>
				</tr>
				<tr>
				<td><b>Bed Charges:</b></td>
				<td><input type="text" id="bed" name="bed" value="0" readonly disabled></td>
				</tr>
				<tr>
				<td><b>Scanning Charges:</b></td>
				<td><input type="text" id="scan" name="scan" value="0" readonly disabled></td>
				</tr>
				<tr>
				<td><b>X-Ray Charges:</b></td>
				<td><input type="text" id="x" name="x" value="0" readonly disabled></td>
				</tr>
				<tr>
				<td><b>Medicine Charges:</b></td>
				<td><input type="text" id="medicine" name="medicine" value="0" readonly disabled></td>
				</tr>
				<tr>
				<td><b>Cause Of The Disease:</b></td>
				<td><textarea type="text" id="cause" name="cause"></textarea></td>
				</tr>
				<tr>
				<td><b>Precautions:</b></td>
				<td><textarea type="text" id="precautions" name="precautions"></textarea></td>
				</tr>
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
				</div>
				
				<tr>
					<td><input type="submit" name="submit" value="Submit"></td>
					<td><a href="patient_records.jsp"><b>Back</b></a></td>

				</tr>


			</table>
		</form>
	</center>
</body>
<script>
	function ShowHideDiv() {
		var chkEmp = document.getElementById("ward1");
		var dv= document.getElementById("dv");
		dv.style.display = chkEmp.checked ? "block" : "none";
	}
</script>
</html>
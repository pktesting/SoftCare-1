<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function validate(){
	
	var did = document.getElementById("doctorID").value;
	var dname = document.getElementById("doctorName").value;
	var pnum = document.getElementById("phoneNumber").value;
	var demail = document.getElementById("doctorEmail").value;
	
	if(did=="")
		{
		alert("Don't leave the ID field empty");
		return false;
		}
	if(isNaN(did))
		{
		alert("ID should be a 3-digit positive number");
		return false;
		}
	if(did<=99)
		{
		alert("ID should be a 3-digit positive number");
		return false;
		}
	if(dname=="")
		{
		alert("Don't leave the NAME field empty");
		return false;
		}
	if(dname.match(/[A-Za-z]+/)==null)
		{
		alert("Only Alphabets are allowed in NAME field");
		return false;
		}
	if(pnum=="" || pnum<999999999 || pnum.length>10)
		{
		alert("Please enter a 10 digit Phone Number");
		return false;
		}
	if(demail=="")
		{
		alert("Don't Leave the EMAIL field empty");
		return false;
		}
	if(demail.match(/[A-Za-z0-9_.]+[@]{1}[A-Za-z]*.com/)==null)
		{
		alert("Please enter a proper EMAIL ID");
		return false;
		}

}

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Information</title>
<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
</style>

</head>
<body>
	<center>
		<form action="DoctorRegistrationController" onsubmit="return validate()">
			<table>
				<tr><h1>Doctor Information</h1>
				<br><br><br>
				</tr>
				<tr>
					<td><b>Doctor ID:</b></td>
					<td><input type="text" name="doctorID" id="doctorID"></td>
				</tr>
				<tr>
					<td><b>Doctor Name:</b></td>
					<td><input type="text" name="doctorName" id="doctorName" placeholder="Enter your name"></td>
				</tr>
				<tr>
					<td><b>Specialization</b></td>
					<td>
						<select name="doctorSpecs" style="width: 300px; height: 45px;">
							<option value="General">General Physician</option>
							<option value="Gynaecologist">Gynaecologist</option>
							<option value="Orthopedist">Orthopedist</option>
							<option value="Dentist">Dentist</option>
							<option value="Surgeon">Surgeon</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><b>Phone Number:</b></td>
					<td><input type="text" name="phoneNumber" id="phoneNumber" placeholder="Enter your 10 digit phone number"></td>
				</tr>
				<tr>
					<td><b>Email:</b></td>
					<td><input type="text" name="doctorEmail" id="doctorEmail" placeholder="Enter your email"></td>
				</tr>
				<tr>
					<td><b>Enter Password:</b></td>
					<td><input type="password" name="doctorPass"></td>
				</tr>
				<tr>
					<td><b>Re-Type Password:</b></td>
					<td><input type="password" name="doctorRePass"></td>
				</tr>
			</table>
			<br>
			<center><input type="submit" onclick="registered()" value="Register" style="width: 100px; height: 50px; color: blue"></center>
		</form>
	</center>

</body>
</html>
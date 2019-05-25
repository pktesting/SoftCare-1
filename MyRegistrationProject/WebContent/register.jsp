<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>

<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/front1.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
</style>

</head>
<body>
	<center>
		
			<tr>
				<h1>Registration</h1>
				
			</tr>
		
		<form action="RegistrationController" method="post">
			<input type="hidden" name="source" value="addCustomer" />
			<table>
				<tr>
					<td><b>Name:</b></td>
					<td><input type="text" name="name"
						placeholder="Enter Your Name"></td>
				</tr>
				<tr>
					<td><b>Age:</b></td>
					<td><input type="text" name="age"
						placeholder="Enter Your Age e.g 23"></td>
				</tr>
				<tr>
					<td><b>Sex:</b></td>
					<td><input type="radio" name="sex" value="Male">Male</td>
					<td><input type="radio" name="sex" value="Female">Female</td>
				</tr>
				<br>
				<tr>
					<td><b>Phone Number:</b></td>
					<td><select>
							<option value="+91">+91</option>
					</select> <input type="text" name="number"
						placeholder="Enter your 10 digit mobile number"></td>
				</tr>
				<br>
				<tr>
				<div>
					<td><b>Address:</b></td>
					<td><textarea name="address" placeholder="Enter your address" rows="4" cols="50"></textarea></td>
					</div>
				</tr>
				<br>
				<tr>
					<td><b>Departments:</b></td>
					<td><input type="radio" name="dept" value="emergency">Emergency</td>
					<td><input type="radio" name="dept" value="normal">Normal</td>
					
				</tr>
				
				<tr>
					<td><b>Patient As:</b></td>
					<td><input type="radio" name="patient" id="stu" value="0"
						onclick="ShowHideDiv()">Student</td>
					<td><input type="radio" name="patient" id="emp" value="1"
						onclick="ShowHideDiv()">Employee</td>
				</tr>
				
				<tr>
					<td><b>Password:</b></td>
					<td><input type="password" name="pass"></td>
				</tr>

				<tr>
					<td><b>ReType Password:</b></td>
					<td><input type="password" name="retype"></td>
				</tr>
				<tr>
					<td><input type="submit" name="submit" value="Register" style="width: 100px; height: 50px; color: blue"></td>
					<td><strong>Already Registered?</strong><a href="login.jsp"><strong><font color="red">
					Click here to login</font></strong></a></td>

				</tr>


			</table>
		</form>
	</center>
</body>
</html>

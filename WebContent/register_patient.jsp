<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>

<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<center>

		<form action="RegistrationController" method="post"
			onsubmit="return validate();">
			<table>
				<tr>
					<h1>Registration</h1>

				</tr>
				<tr>
					<td><b>OPNO:</b></td>
					<td><input type="text" name="opno" id="opno"
						placeholder="Enter The OPNO"></td>
				</tr>
				<tr>
					<td><b>Name:</b></td>
					<td><input type="text" name="name" id="name"
						placeholder="Enter Your Name"></td>
				</tr>
				<tr>
					<td><b>Age:</b></td>
					<td><input type="text" name="age" id="age"
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
					<td><input type="text" name="number" id="number"
						placeholder="Enter your 10 digit mobile number"></td>
				</tr>
				<br>
				<tr>
					<div>
						<td><b>Address:</b></td>
						<td><textarea name="address" id="address"
								placeholder="Enter your address"></textarea></td>
					</div>
				</tr>
				<br>
				<tr>
					<td><b>Departments:</b></td>
					<td><input type="radio" name="dept" value="emergency">Emergency</td>
					<td><input type="radio" name="dept" value="normal">Normal</td>
					<br>
					<br>
				</tr>

				<tr>
					<td><b>Patient As:</b></td>
					<td><input type="radio" name="patient" id="stu" value="0">Student</td>
					<td><input type="radio" name="patient" id="emp" value="1">Employee</td>
				</tr>
				<br>
				<tr>
					<td><b>Password:</b></td>
					<td><input type="password" name="pass" id="pass"></td>
				</tr>

				<tr>
					<td><b>ReType Password:</b></td>
					<td><input type="password" name="retype" id="repass"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Register"></td>
					<td><a href="login.jsp"><b>Back</b></a></td>

				</tr>


			</table>
		</form>
	</center>
</body>
</html>
<script>
	function validate() {
		var opno = document.getElementById("opno").value;
		var name = document.getElementById("name").value;
		var number = document.getElementById("number").value;
		var address = document.getelementById("address").value;
		var pass = document.getElementById("pass").value;
		var retypepass = document.getElementById("retype").value;
		var age = document.getElementById("age");
		
		
		if (age.value.length <= 0) {
			alert("Don't leave the field empty!");
			return false;
		} else if (!isNaN(age.value)) {
			alert("Enter a number");
			return false;
		} else if (opno.length <= 0) {
			alert("Don't leave the field empty!");
		} else if(number.length<=0){
			alert("Don't leave the field empty!");
		}else if(!isNaN(number)){
			alert("Enter a number");
		}else if(address.length<=0){
			alert("Don't leave the field empty!");
		}else {
			return true;
		}
	}
</script>

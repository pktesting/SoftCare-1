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
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
</style>


</head>
<body>
	<center>

		<form action="RegistrationController" method="post" onsubmit="return validate()">
			<table>
				<tr>
					<h1>Patient Registration</h1>
				</tr>
				<tr>
					<td><b>OPNO:</b></td>
					<td><input type="text" name="opno" id="opno" placeholder="Enter The OPNO" ></td>
				</tr>
				<tr>
					<td><b>Name:</b></td>
					<td><input type="text" name="name" id="name" placeholder="Enter Your Name"></td>
				</tr>
				<tr>
					<td><b>Age:</b></td>
					<td><input type="text" name="age" id="age" placeholder="Enter Your Age e.g 23"></td>
				</tr>
				<tr>
					<td><b>Sex:</b></td>
					<td><input type="radio" name="sex" value="Male">Male</td>
					<td><input type="radio" name="sex" value="Female">Female</td>
				</tr>
				
				<tr>
					<td><b>Phone Number:</b></td>
					<td><input type="text" name="number" id="number" placeholder="Enter your 10 digit mobile number"></td>
				</tr>
				
				<tr>
					<div>
						<td><b>Address:</b></td>
						<td><textarea name="address" id="address" placeholder="Enter your address" style="width: 300px; height: 45px;"></textarea></td>
					</div>
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
				</table>
				<table>
				<tr>
					<td><input type="submit" value="Register" style="width: 100px; height: 50px; color: blue"></td>
					<td><strong>Already Registered?</strong><a href="login.jsp"><strong><font color="red">
					Click here to login</font></strong></a></td>

				</tr>

			</table>

		</form>
	</center>
</body>
<script>
	function validate()
	{
		var opno = document.getElementById("opno").value;
		var name = document.getElementById("name").value;
		var age  = document.getElementById("age").value;
		var pnum = document.getElementById("number").value; 
		var add  = document.getElementById("address").value;
		var pass = document.getElementById("pass").value;
		var rpass = document.getElementById("repass").value;
		
		if(opno=="") 
		{
			alert("Don't leave the OPNO field empty!");
			return false;
		}
		if(opno.match(/[A-Z]{1}[A-Za-z0-9]*/)==null)
		{
			alert("The OPNO should start with a Capital Letter followed by ALPHANUMERIC CHARACTERS");
			return false;
		}
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
		if(age=="" || age<1)
		{
			alert("Please ENTER a POSITIVE NUMBER for age!");
			return false;
		}
		if(pnum=="" || pnum<999999999 || pnum.length>10)
		{
			alert("Please ENTER a 10 DIGIT NUMBER for PHONE NUMBER!");
			return false;
		}
		if(add=="")
		{
			alert("Please fill only ALPHANUMERIC characters in the ADDRESS field");
			return false;
		}
		if(add.match(/[A-Za-z0-9,]*/)==null)
		{
			alert("Please fill only ALPHANUMERIC characters in the ADDRESS field");
			return false;
		}
		if(pass == "" || rpass == "")
		{
			alert("Please enter PASSWORD and RETYPE PASSWORD");
			return false;
		}
	}
</script>
</html>
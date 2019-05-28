<!DOCTYPE html>
<html>
<title>Registration Type</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
</style>
	
	

<body background="front_img.jpg">
<center>
<h1>Registration</h1>
<br><br><br><br><br>

<h2>Select Registration Type<h2>
<br>

<form action="Registration Type">
  <select name="select-registration" onchange="location = this.value;" style="width: 200px; height: 50px;">
<option value="">Registration Type</option>

 <option value="register_patient.jsp">Patient Registration</option>
 <option value="register_doctor.jsp">Doctor Registration</option>

</form>
</center>

</body>
</html>
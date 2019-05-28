<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
if(session.getAttribute("patientLogin")==null)
		{
			response.sendRedirect("login.jsp");
		}
		
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Feedback</title>
<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;}
	.custom {
	font-family: Courier;
	color: red;
	font-size:20px;
}
</style>
</head>
<body>
	<center>
		<form action="DoctorFeedbackController" method="post"
			onsubmit="return validate()">
			<table>
				<tr>

					<h1>Doctor Feedback</h1>
					<br><br>
				</tr>
				<tr>
					<td><b>Doctor Id:</b></td>
					<td><input type="text" id="did" name="did"></td>
				</tr>
				<tr>
					<td><b>Feedback:</b></td>
					<td><textarea name="feedback" id="feedback" style="width: 300px; height: 45px;"></textarea></td>
				</tr>
				</table>
				<table>
				<center>
				<tr>
					<td><input type="submit" value="submit" style="width: 100px; height: 50px; color: blue"></td>
				</tr>
</center>
			</table>
		</form>
	</center>
</body>
</html>
<script>
	function validate() {
		var did = document.getElementById("did").value;
		var feedback = document.getElementById("feedback").value;
		
		if(did==null || did==""){
			alert("This field shoule be filled out");
			return false;
		}else if(did<=0){
			alert("Enter positive number");
			return false;
		}else if(feedback==""){
			alert("This field shoule be filled out");
			return false;
		}
		if(isNaN(did))
			{
			alert("Please enter ONLY your doctor's number");
			return false;
			}
		else{
			return true;
		}
	}
</script>
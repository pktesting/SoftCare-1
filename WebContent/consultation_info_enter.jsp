<%@page import="com.cts.bean.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%

		Login log = null;
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("adminLogin")==null && session.getAttribute("doctorLogin")==null)
		{
			response.sendRedirect("login.jsp");
		}
		if(session.getAttribute("doctorLogin")!=null)
		{
			log = (Login) session.getAttribute("doctorLogin");
		}
		
		
%>
<script type="text/javascript">

function validate() {
 var docid = document.getElementById("docId").value;
 var opno  = document.getElementById("opno").value;
 var pname  = document.getElementById("pname").value;
 var date = document.getElementById("cDate").value;
 
 if(docid=="")
	 {
	 alert("Don't leave DOCTOR ID field empty");
	 return false;
	 }
 if(isNaN(docid))
	 {
	 alert("Please Enter only number for DOCTOR ID");
	 return false;
	 }
 if(docid<=0)
	 {
	 alert("Please Enter only POSITIVE number for DOCTOR ID");
	 return false;
	 
	 }
 if(opno=="")
 {
 alert("Don't leave OPNO field empty");
 return false;
 }
 if(opno.match(/[A-Z]{1}[A-Za-z0-9]*/)==null)
	{
		alert("The OPNO should start with a Capital Letter followed by ALPHANUMERIC CHARACTERS");
		return false;
	}
 
 if(pname=="")
 {
 alert("Don't leave PATIENT NAME field empty");
 return false;
 }
 if(!pname.match(/[A-Za-z]{3,}[\\s]*[A-Za-z]*/)==null)
	{
		alert("Enter only Alphabets for the NAME field");
		return false;
	}
 if(date=="")
 {
 alert("Don't leave DATE field empty");
 return false;
 }
if(Date.parse(date)>Date.parse(new Date()))
{

	 alert("Please enter a Date BEFORE or ON TODAY");
	 return false;
}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Consultation Info</title>
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

td{
color: white;}
</style>
</head>

<body>

<form action="ConInfoController" method="post" onsubmit="return validate()">
	<center>
		<table>
			<tr>
				<center><h1>Enter Consultation Information</h1></center>
			</tr>
			<tr>
				<td><b>Doctor Name:</b></td>
				<td><h2><%=log.getName() %></h2></td>
			</tr>
			<tr>
				<td><b>OPNO:</b></td>
				<td><input type="text" name="opno" id="opno"></td>
			</tr>
			<tr>
				<td><b>Patient Name:</b></td>
				<td><input type="text" name="pname" id="pname"></td>
			</tr>
			<tr>
				<td><b>Consultation Date:</b></td>
				<td><input type="date" name="cDate" id="cDate"></td>
			</tr>
			<br>
			<tr>
				<td><input type="submit" value="Register"></td>
				<td><a href="index2.jsp"><b>HOME</b></a></td>
			</tr>
		</table>
	</center>
</form>
</body>
</html>
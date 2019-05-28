<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("adminLogin")==null)
		{
			response.sendRedirect("login.jsp");
		}
		
%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Drug Details</title>

<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
</style>
<script>
	function validate() {
		var dname = document.getElementById("dname").value;
		   var stock = document.getElementById("stock").value;
		  var date1 = document.getElementById("edate1").value;
			var date2 = document.getElementById("edate2").value;
			
			var today = new Date();
		
	 if(dname=="")
	  {
		  alert("Drug_Name must be filled out");
		  return false;
	  }
	  if(dname.match(/[A-Z]{1}[a-z0-9]*/)==null)
	  {
		  alert("Start With Capital Alphabet");
		  return false;
	  }
	  
	   if(stock=="")
		  {
		  alert("In_Stock must be filled out");
		  return false;
		  }
	   if(stock<1)
	  {
		  alert("Stock cannot be less than 1. Please enter the stock you wish to add.");
		  return false;
	  }
		if(date1=="" || date2=="")
		{
			alert("Please fill in the DATE FIELDS");
			return false;
		}
	   if(Date.parse(date1)<Date.parse(today))
		{		
		  alert("exp_date1  SHOULD NOT BE BEFORE today's date");
		  return false;
		}
	   if(Date.parse(date2)<Date.parse(today))
		{		
		  alert("exp_date2  SHOULD NOT BE BEFORE today's date");
		  return false;
		}	
		  
}
</script>

</head>
<body>
<a href="index.jsp">HOME</a>
	<center>
		<table>
			<tr>
				<h1>Drug Entry</h1>
				<br><br><br>
			</tr>
		</table>
		<form action="DrugStoreController" method="post"
			onsubmit="return validate()">
			<table>
				<tr>
					<td><b>Drug Name:</b></td>
					<td><input type="text" name="dname" id="dname"
						placeholder="Enter Drug Name"></td>
				</tr>
				<tr>
					<td><b>In Stock:</b></td>
					<td><input type="text" name="stock" id="stock"
						placeholder="Number of drugs in stock" ></td>
				</tr>

				<tr>
					<td><b>Expiry Date1:</b></td>
					<td><input type="date" name="edate1" id="edate1"
						placeholder="eg. dd-mm-yyyy" style="width: 300px; height: 45px;">
						</td>
				</tr>
				<tr>
					<td><b>Expiry Date2:</b></td>
					<td><input type="date" name="edate2" id="edate2"
						placeholder="eg. dd-mm-yyyy" style="width: 300px; height: 45px;">						
					</td>
				</tr>
</table>
<table>
<center>

				<tr>
					<td><input type="submit" name="submit" value="Submit" style="width: 100px; height: 50px; color: blue"></td>
					<!--<td><a href="login.jsp"><b>Back</b></a></td> --->

				</tr>
</center>

			</table>
		</form>
	</center>
</body>
</html>

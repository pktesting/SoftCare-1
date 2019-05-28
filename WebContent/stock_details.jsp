<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock Details</title>
<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
</style>

	<script type="text/javascript">
	function validate() {
		var drug_name = document.getElementById("drug_name").value;
		 var valid="[A-Z]{1}[a-z 0-9 -]*";
		 if(drug_name=="")
		  {
			  alert("Drug_Name must be filled out");
			  return false;
		  }
		  else if(!drug_name.match(valid))
		  {
			  alert("Start With Capital Alphabet");
			  return false;
		  }	 
		  else
			  {
			  return true;
			  }
		  }
		  </script>
		  	  
</head>

<body>
<center>
<form action="DrugStoreDisplayController" method="post"
			onsubmit="return validate()">
		<table>
		<tr>
		<td>
		<center>
		<h1>Stock Details</h1>
		<br><br><br>
		</center>
		<center>
		</td>
		
		</tr>
		
			<tr>
			
				<td><b>Enter Drug Name:</b><input type="text" name="drug_name" id="drug_name">
				     				</td>
			</tr>
			</table>
			<table>
			<center>
			<tr>
			<td><input type="submit" value="Search" style="width: 100px; height: 50px; color: blue"></td>
			</tr>
			</center>
		</table>
	</form>
	
</body>
</center>
</html>

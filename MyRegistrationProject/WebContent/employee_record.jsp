<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Information(Employee)</title>

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
		<table>
			<tr>
				<h1>Employee Information</h1>
			</tr>
		</table>

		<form action="">
			<table>
				<tr>
					<td><b>Name:</b></td>
					<td><input type="text" name="eame"
						placeholder="Enter Patient Name"></td>
				</tr>
				<tr>
					<td><b>Bed Charges:</b></td>
					<td><input type="text" id="bed" name="bed"></td>
				</tr>
				<tr>
					<td><b>Scanning Charges:</b></td>
					<td><input type="text" id="scan" name="scan"></td>
				</tr>
				<tr>
					<td><b>X-Ray Charges:</b></td>
					<td><input type="text" id="x" name="x"></td>
				</tr>
				<tr>
					<td><b>Medicine Charges:</b></td>
					<td><input type="text" id="medicine" name="medicine" value="0"
						readonly disabled></td>
				</tr>
				<tr>
					<td><b>Cause Of The Disease:</b></td>
					<td><textarea type="text" id="cause" name="cause" style="width: 300px; height: 45px;"></textarea></td>
				</tr>
				<tr>
					<td><b>Precautions:</b></td>
					<td><textarea type="text" id="precautions" name="precautions" style="width: 300px; height: 45px;"></textarea></td>
				</tr>
				<tr>
					<td><b>Disease Severeness:</b></td>
					<td><input type="radio" id="ward1" name="ward" value="1"
						onclick="ShowHideDiv()">Yes</td>
					<td><input type="radio" id="ward2" name="ward" value="0"
						onclick="ShowHideDiv()">No</td>
				</tr>
				<tr>
					<td>
						<div id="dv" style="display: none;">
							<table>
								<tr>
									<td><b>Extra Medicine Charges:</b></td>
									<td><input type="text" id="emedicine" name="emedicine" onclick="TotalCharge()"></td>
								</tr>
							</table>
						</div>
						</td>
						</tr>
						<table>
						<tr>
						<td><b>Total:</b></td>
						<td><input type="text" id="total" disabled style="width: 160px; height: 20px;">
						<td><input type="button" value="Total"  onclick="TotalCharge()" style="width: 100px; height: 50px; color: blue" >
						</td>
						</tr>
						</table>
				<tr>
					<td><input type="submit" name="submit" value="Submit" style="width: 100px; height: 50px; color: blue"></td>
					<td><a href="patient_records.jsp"><b><center>Back</center></b></a></td>

				</tr>


			</table>
		</form>
	</center>

</body>
</html>
<script>
	function ShowHideDiv() {
		var chkEmp = document.getElementById("ward1");
		var dv= document.getElementById("dv");
		dv.style.display = chkEmp.checked ? "block" : "none";
	}
	function TotalCharge(){
		var medicine=0;
		var bed=document.getElementById("bed").value;
		var scan=document.getElementById("scan").value;
		var x=document.getElementById("x").value;
		if(document.getElementById("ward1").checked){
			var medicine=parseInt(document.getElementById("x").value);
		}
		var total=parseInt(bed)+parseInt(scan)+parseInt(x)+medicine;
		document.getElementById("total").value=total;
	}
</script>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Information</title>
</head>
<body>
	<center>
		<form action="DoctorRegistrationController">
			<table>
				<tr><h1>Doctor Information</h1></tr>
				<tr>
					<td><b>Doctor ID:</b></td>
					<td><input type="text" name="doctorID"></td>
				</tr>
				<tr>
					<td><b>Doctor Name:</b></td>
					<td><input type="text" name="doctorName" placeholder="Enter your name"></td>
				</tr>
				<tr>
					<td><b>Specialization</b></td>
					<td>
						<select name="doctorSpecs">
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
					<td><input type="text" name="phoneNumber" placeholder="Enter your 10 digit phone number"></td>
				</tr>
				<tr>
					<td><b>Email:</b></td>
					<td><input type="text" name="doctorEmail" placeholder="Enter your email"></td>
				</tr>
				<tr>
					<td><b>Enter Password:</b></td>
					<td><input type="text" name="doctorPass"></td>
				</tr>
				<tr>
					<td><b>Re-Type Password:</b></td>
					<td><input type="text" name="doctorRePass"></td>
				</tr>
			</table>
			<br>
			<center><input type="submit" value="Submit"></center>
		</form>
	</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.cts.bean.InPatient"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("adminLogin")==null && session.getAttribute("doctorLogin")==null)
		{
			response.sendRedirect("login.jsp");
		}
		


%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>InPatient Records</title>

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
<a href="index.jsp">HOME</a>
	<center>
		<table border="2">

			<h3>Student In-Patient Records</h3>
			<tr>
				<td>opno</td>
				<td>Patient Name</td>
				<td>Patient Type</td>
				<td>Age</td>
				<td>Gender</td>
				<td>Date of Admission</td>
				<td>Date of Discharge</td>
				<td>Diagnosis</td>

			</tr>
			<%
				List<InPatient> al ;
				al = (List<InPatient>) request.getAttribute("InPatientDisplay");
				for (InPatient i : al) {
				
					
			%>
			<tr>
				<td><%=i.getOpno()%></td>
				<td><%=i.getPatient_name()%></td>
				<td><%=i.getPatient_type()%></td>
				<td><%=i.getAge()%></td>
				<td><%=i.getGender()%></td>
				<td><%=i.getDate_of_admission()%></td>
				<td><%=i.getDate_of_discharge()%></td>
				<td><%=i.getDiagnosis()%></td>
				<%
			}
				%>
			</tr>

		</table>
	</center>
</body>
</html>
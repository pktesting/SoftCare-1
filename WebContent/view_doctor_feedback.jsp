<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.cts.bean.DoctorFeedback" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
		
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("doctorLogin")==null && session.getAttribute("adminLogin")==null)
		{
			response.sendRedirect("login.jsp");
		}
		
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Doctor Feedback</title>

<link rel="stylesheet" type="text/css" href="css/style1.css">
<style>
body{
	background-image: url('images/main.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
	}
	td{
		color: white;
	}
	tr{
		color: white;
	}
</style>
</head>
<center>
<br><br><br><br><br><br>
	<body>
		<table border="2" bordercolor="white">
			<tr bordercolor="white">
				<h3>View Doctor Feedback</h3>
			</tr>
			<tr bordercolor="white">
				<th>Doctor Id</th>
				<th>Doctor Feedback</th>
			</tr>

         <%
            DoctorFeedback dfeed;
         dfeed=( DoctorFeedback)request.getAttribute("doctorid");           
         
         %>
         <tr bordercolor="white">
           <td><%=dfeed.getDid() %></td>
           <td><%=dfeed.getFeedback() %></td>
         </tr>
         
		</table>

	</body>
	<br><br>
	<form action="index2.jsp" method="post">
	<input type="submit" value="HOME">
	</form>
</center>
</html>
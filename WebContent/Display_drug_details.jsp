<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.cts.bean.DrugStore"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
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
	}
	table{
	color:white;
	}
</style>
</head>
<body>
	<center>
		<br><br><br><br><br><br><br><br><table border="2">

			<h3>Stock Details</h3>
			<tr>
				<td>Drug Name</td>
				<td>In Stock</td>
				<td>Expiry Date1</td>
				<td>Expiry Date2</td>

			</tr>
			<%
				List<DrugStore> al ;
				al = (List<DrugStore>) request.getAttribute("drug");
				for (int i = 0; i < al.size(); i++) {
				
					
			%>
			<tr>
				<td><%=al.get(i).getDrugname()%></td>
				<td><%=al.get(i).getIn_stock()%></td>
				<td><%=al.get(i).getExp_date1()%></td>
				<td><%=al.get(i).getExp_date2()%></td>
				<%
			}
				%>
			</tr>

		</table>
		<br><br>
		<center> <form action="index.jsp" method="post">
<input type="submit" value="HOME">
</form>
</center>
	</center>
</body>
</html>
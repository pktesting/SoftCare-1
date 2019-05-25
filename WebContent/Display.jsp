<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.cts.bean.DrugStore"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<table border="2">

			<h3>Stock Details</h3>
			<tr>
				<td>Drug Name</td>
				<td>In Stock</td>
				<td>Mfg Date</td>
				<td>Expiry Date</td>

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
	</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect_db.jsp" %>
<center>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<br><br><br>
		<form action="index.jsp" method="POST">
			Enter student roll no = <input type="text" name="rolname" onchange="this.form.submit();">
			<input type="submit" value="search">
		</form>
	
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Name</th>
				<th>Father's name</th>
				<th>Roll</th>
				<th>Address</th>
				<th>Gender</th>
				<th>Phno</th>
			</tr>
		</thead>
			<%
				String de=request.getParameter("rolname");
				PreparedStatement pst = con.prepareStatement("select * from exam04 where roll=?");
				pst.setString(1,de);
				ResultSet rs=pst.executeQuery();
				while(rs.next()){
					%>
						<tr>
							<td><%=rs.getString("name")%></td>
							<td><%=rs.getString("fname")%></td>
							<td><%=rs.getString("roll")%></td>
							<td><%=rs.getString("address")%></td>
							<td><%=rs.getString("gender")%></td>
							<td><%=rs.getString("ph")%></td>
						</tr>
					<%
				}
				con.close();
			%>
		<tbody>
		</tbody>
	</table>
	</div>
</body>
</html>
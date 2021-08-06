<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect_db.jsp" %>
<center>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>details of doctor</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Click Doctor's department and choose the department and see doctor details</h1>
		<div class="col-sm-5">
			<form action="dd.jsp" method="POST">
				<select class="form-control" name="ds" onchange="this.form.submit();">
					<option value="0">Select Department</option>
					<option value="dentist">dentist</option>
					<option value="Orthopedic">Orthopedic</option>
					<option value="surgical">surgical</option>
				</select>
			</form>
		</div><br><br><br><br>
				<table class="table table-bordered">
				<thead>
					<tr>
						<th>Name</th>
						<th>Phno</th>
					</tr>
				</thead>
				<tbody>
					<%
							String dss=request.getParameter("ds");
							PreparedStatement pst = con.prepareStatement("select * from p_jsp_ex where dd=?");
							pst.setString(1,dss);
							ResultSet rs=pst.executeQuery();
							while(rs.next()){
								%>
									<tr>
										<td><%=rs.getString("name")%></td>
										<td><%=rs.getString("ph")%></td>
									</tr>
								<%
							}
							con.close();
					%>
				</tbody>
				</table>
	</div>
</body>
</html>
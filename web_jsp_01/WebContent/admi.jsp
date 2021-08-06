<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		<div class="row">
			<div class="col-sm">
				<form action="s_admi.jsp" method="POST">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="2">Enter student details</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Enter student name</td>
								<td><input type="text" name="name" placeholder="Enter student name"></td>
							</tr>
							<tr>
								<td>Father's name</td>
								<td><input type="text" name="fname" placeholder="enter father's name"></td>
							</tr>
							<tr>
								<td>Gender</td>
								<td><input type="radio" name="gender" value="male">Male
								<input type="radio" name="gender" value="female">Female</td>
							</tr>
							<tr>
								<td>phno</td>
								<td><input type="text" name="phno" placeholder="phno"></td>
							</tr>
							<tr>
								<td>Address</td>
								<td><textarea name="add" rows="" cols=""></textarea></td>
							</tr>
							<tr>
								<td>Previous exam %</td>
								<td><input type="text" name="pe" placeholder="Previous exam %"></td>
							</tr>
							<tr>
								<td>Enter subject want to study</td>
								<td><input type="text" name="sub_s" placeholder="Enter subject want to study"></td>
							</tr>
							<tr><td colspan="2" align="center" ><input type="submit" value="Register"></td></tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
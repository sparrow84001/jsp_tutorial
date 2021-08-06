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
			<form action="login_v.jsp" method="POST" >
				<table class="table table-bordered">
					<thead>
						<thead>
							<tr>
								<th colspan="2">Login</th>
							</tr>
					</thead>
					<tbody>
							<tr>
							<td>Enter your id</td>
							<td><input type="text" placeholder="enter your id" name="uid"></td>
						</tr>
						<tr>
							<td>Enter password</td>
							<td><input type="password" placeholder="enter your password" name="pass"></td>
						</tr>
						<tr><td colspan="2"><input type="submit" value="Login"></td></tr>
					</tbody>
				</table>
			</form>
		</div>
</body>
</html>
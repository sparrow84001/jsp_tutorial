<center>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body align="center">
	<div class="container" align="center">
		<div class="row" align="center">
			<div class="col-sm-4" align="center">
				<form method="POST" action="member_s.jsp" align="center" >
					<table class="table table-bordered" align="center">
					<thead>
      						<tr>
        						<th colspan="2">Log in</th>
      						</tr>
    				</thead>
    				<tbody>
						<tr>
							<td>Enter your ph</td>
							<td><input type="text" placeholder="enter your ph" name="ph"></td>
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
		</div>
	</div>

</body>
</html>
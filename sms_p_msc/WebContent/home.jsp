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
<title>Reg</title>
<script type="text/javascript">
	function f_v() {
 		var uname=document.getElementById("un");
 		var ph=document.getElementById("ph");
 		var pass=document.getElementById("pass");
		 if(uname.value == "" || ph.value == "" || pass.value == "") {
	            alert( "Please provide your name ph pass!" );
			return false;
		}
		
	}
</script>
</head>
<body align="center">
	<div class="container" align="center">
		<div class="row" align="center">
			<div class="col-sm-" align="center">
				<form method="POST" action="reg_f.jsp" onsubmit="return f_v()" align="center">
					<table class="table table-bordered" align="center">
					<thead>
      						<tr>
        						<th colspan="2">Register</th>
      						</tr>
    				</thead>
    				<tbody>
						<tr>
							<td>Enter your name</td>
							<td><input type="text" id="un" placeholder="enter your name" name="uname"></td>
						</tr>
						<tr>
							<td>Enter your ph no</td>
							<td><input type="text" id="ph" placeholder="enter your ph" name="phno"></td>
						</tr>
						<tr>
							<td>Enter password</td>
							<td><input type="password"  id="pass" placeholder="enter your password" name="pass"></td>
						</tr>
						<tr><td colspan="2"><input type="submit" value="Register"></td></tr>
					</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
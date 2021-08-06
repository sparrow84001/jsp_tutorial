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
<script type="text/javascript">
			function f_d_reg() {
		 		var name=document.getElementById("ename");
		 		var ph=document.getElementById("dphno");
		 		var dept=document.getElementById("ddept");
				 if(name.value == "" || ph.value == "" || dept.value == "") {
			            alert( "Please fillup all thing!" );
					return false;
				}
				
			}
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm">
				<form action="d_reg.jsp" method="POST" onsubmit="return f_d_reg()">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="2">Enter doctor details</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Enter doctor name</td>
								<td><input type="text" id="ename" name="dname" placeholder="Enter doctor name"></td>
							</tr>
							<tr>
								<td>Doctor phno</td>
								<td><input type="text" id="dphno" name="ddphno" placeholder="enter doctor ph no"></td>
							</tr>
							<tr>
								<td>Doctor's department</td>
								<td><input type="text" id="ddept" name="dddept" placeholder="enter department"><strong>you can add this 3 department like dentist , Orthopedic , surgical</strong></td>
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
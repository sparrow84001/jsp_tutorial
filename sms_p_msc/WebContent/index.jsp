<center>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body class="body">
<div class="container">
			<p><h1 class="title">Welcome to my sms system</h1>
			<input type="submit" value="Regester" onclick="window.location.href = 'home.jsp';" ><br><br>
			<input type="submit" value="login" onclick="window.location.href = 'login.jsp';"></p>
			
			<%
				try{
					String msg=session.getAttribute("msg").toString();
					out.print(msg);
					session.removeAttribute("msg");
				}catch(Exception e){
					
				}
			%>
</div>	
</body>
</html>
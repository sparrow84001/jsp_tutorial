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
		<p><h1 class="title">Welcome to abc college</h1><br>
		<input type="submit" value="Admission" onclick="window.location.href = 'admi.jsp';">
		</p>
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
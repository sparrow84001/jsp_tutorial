<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	int no1=Integer.parseInt(request.getParameter("a_value"));
	session.setAttribute("no1", no1);
%>
<html>
<head></head>
<body>
	<form action="cal_gcd.jsp" method="POST">
		enter 2nd value <input type="text" name="b_value">
		<input type="submit">
	</form>
</body>
</html>
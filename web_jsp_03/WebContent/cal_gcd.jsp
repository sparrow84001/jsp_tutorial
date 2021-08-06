<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%!
public int gcd(int a ,int b){
	 if (b == 0)
	        return a;
	      return gcd(b, a % b);
}
%>
<%
     int no2=Integer.parseInt(request.getParameter("b_value"));
	 int no1=(int)session.getAttribute("no1");
	 int cal=gcd(no1,no2);
	 out.print("GCD of " + no1 +" and " + no2 + " is = " + cal);
%>


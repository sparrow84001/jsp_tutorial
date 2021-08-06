<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect_db.jsp" %>
<%
	try{
		String name=request.getParameter("uname");
		String ph=request.getParameter("phno");
		String pass=request.getParameter("pass");
		PreparedStatement pst=con.prepareStatement("insert into user_sms values(?,?,?)");
			pst.setString(1,name);
			pst.setString(2,ph);
			pst.setString(3,pass);
			int x=pst.executeUpdate();
			if (x!=0){
				response.sendRedirect("index.jsp");
			}
			else{
%>
				<script type="text/javascript">
						alert("something wrong try again !");
				</script>
<%
			}
		con.close();
	}
	catch(Exception e){
		out.println(e);
	}
%>
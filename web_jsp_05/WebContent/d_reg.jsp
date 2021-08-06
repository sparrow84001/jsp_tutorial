<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect_db.jsp" %>
<%
	try{
		String name=request.getParameter("dname");
		String ph=request.getParameter("ddphno");
		String dd=request.getParameter("dddept");
		PreparedStatement pst=con.prepareStatement("insert into p_jsp_ex values(?,?,?)");
			pst.setString(1,name);
			pst.setString(2,ph);
			pst.setString(3,dd);
			int x=pst.executeUpdate();
			if (x!=0){
				session.setAttribute("msg","<h3>Successfully Register");
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

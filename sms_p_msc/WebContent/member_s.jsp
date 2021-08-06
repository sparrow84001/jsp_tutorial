<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect_db.jsp" %>
<%
		try{
			String ph=request.getParameter("ph");
			String pass=request.getParameter("pass");
			PreparedStatement pst = con.prepareStatement("select * from user_sms where phno=? and pass=?");
				pst.setString(1,ph);
				pst.setString(2,pass);
				ResultSet rs=pst.executeQuery();
				if(rs.next()){
					session.setAttribute("name",rs.getString(1));
					session.setAttribute("phno",rs.getString(2));
					response.sendRedirect("dis_m.jsp");
				}
				else{
%>
					<%@include file="login.jsp" %>
					<script type="text/javascript">
								alert("Invalid userid or password!");
					</script>
					
<%
				}
				con.close();
			
		}
		catch(Exception e){
			out.print(e);
		}
%>
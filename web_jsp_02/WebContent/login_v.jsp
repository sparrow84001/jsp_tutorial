<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect_db.jsp" %>
<%
		try{
			String uid=request.getParameter("uid");
			String pass=request.getParameter("pass");
			PreparedStatement pst = con.prepareStatement("select * from exam02 where uid_u=? and pass=?");
				pst.setString(1,uid);
				pst.setString(2,pass);
				ResultSet rs=pst.executeQuery();
				if(rs.next()){
					out.print("correct");
				}
				else{
						out.print("not correct");
				}
				con.close();
			
		}
		catch(Exception e){
			out.print(e);
		}
%>
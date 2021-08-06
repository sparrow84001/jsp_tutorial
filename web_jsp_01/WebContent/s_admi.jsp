<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect_db.jsp" %>
<%
	try{
		String name=request.getParameter("name");
		String fname=request.getParameter("fname");
		String gender=request.getParameter("gender");
		String ph=request.getParameter("phno");
		String add=request.getParameter("add");
		String pe=request.getParameter("pe");
		String sub_s=request.getParameter("sub_s");
		PreparedStatement pst=con.prepareStatement("insert into exam01 values(?,?,?,?,?,?,?)");
			pst.setString(1,name);
			pst.setString(2,fname);
			pst.setString(3,gender);
			pst.setString(4,ph);
			pst.setString(5,add);
			pst.setString(6,pe);
			pst.setString(7,sub_s);
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

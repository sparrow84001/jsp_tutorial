<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect_db.jsp" %>
<%
try{
	String name=(String)session.getAttribute("name");
	String phno=(String)session.getAttribute("phno");

	String ssf=request.getParameter("ft");
	String st=request.getParameter("sms_txt");
	PreparedStatement pst=con.prepareStatement("insert into all_msg values(?,?,?)");
		pst.setString(1,phno);
		pst.setString(2,ssf);
		pst.setString(3,st);
		int x=pst.executeUpdate();
		if (x!=0){
			response.sendRedirect("dis_m.jsp");
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
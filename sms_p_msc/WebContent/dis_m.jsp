<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect_db.jsp" %>
<center>
<%
	try{
		
	
			String name=(String)session.getAttribute("name");
			String phno=(String)session.getAttribute("phno");
			out.println("<h1>Welcome "+name+"");
			out.print("<br><form action=\"logout.jsp\" method=\"post\">");
    		out.print("<input type=\"submit\" name=\"logout\" value=\"Logout\">");
    		out.print("</form>");
%>
		<html>
		<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<title>
		</title>
		<script type="text/javascript">
			function f_v_ss() {
		 		var ss=document.getElementById("ss");
		 		var ssmg=document.getElementById("ssmg");
				 if(ss.value == "" || ssmg.value == "") {
			            alert( "Please fillup all thing!" );
					return false;
				}
				
			}
		</script>
		</head>
		<body>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
						<form method="POST" action="send_sms.jsp" onsubmit="return f_v_ss()">
							<table class="table table-bordered">
								<thead>
		      						<tr>
		        						<th colspan="2">Send</th>
		      						</tr>
		    					</thead>
		    					<tbody>
									<tr>
										<td>To </td>
										<td><input type="text" id="ss" name="ft" placeholder="enter ph no to sms"></td>
									</tr>
									<tr>
										<td>Enter text</td>
										<td><textarea id="ssmsg" name="sms_txt" placeholder="within 50 char"></textarea></td>
									</tr>
									<tr><td colspan="2" align="center" ><input type="submit" value="send"></td></tr>
								</tbody>
							</table>
						</form>
				</div>
				<div class="col-sm-3">
					<table class="table table-bordered">
						<thead>
		      				<tr>
		        				<th>Outgoing</th>
		      				</tr>
		    			</thead>
		    			<tbody>
		    				<%
			    				PreparedStatement pst1 = con.prepareStatement("select send_fn,msg_t from all_msg where send_f=?");
								pst1.setString(1,phno);
								ResultSet rs1=pst1.executeQuery();
								while(rs1.next()){
		    				%>
		    					<tr>
										<td><%=rs1.getString("send_fn")%>/<%=rs1.getString("msg_t")%></td>
									</tr>	
							<%
								}
								%>
		    			</tbody>
					</table>
				</div>
				<div class="col-sm-3">
					<table class="table table-bordered">
						<thead>
		      				<tr>
		        				<th>Incoming</th>
		      				</tr>
		    			</thead>
		    			<tbody>
						<%
							PreparedStatement pst0 = con.prepareStatement("select send_f,msg_t from all_msg where send_fn=?");
							pst0.setString(1,phno);
							ResultSet rs0=pst0.executeQuery();
							while(rs0.next()){
						%>
									<tr>
										<td><%=rs0.getString("send_f")%>/<%=rs0.getString("msg_t")%></td>
									</tr>		
						<%
							}
						%>
						<tbody>
					</table>
				</div>
				<div class="col-sm-3">
					<table class="table table-bordered">
						<thead>
		      				<tr>
		        				<th>All member's ph no</th>
		      				</tr>
		    			</thead>
		    			<tbody>
						<%
							PreparedStatement pst = con.prepareStatement("select phno from user_sms");
							ResultSet rs=pst.executeQuery();
							while(rs.next()){
								%>
									<tr>
										<td><%=rs.getString("phno")%></td>
									</tr>		
								<%
							}
							con.close();
						%>
						<tbody>
					</table>
				</div>
			</div>
		</div>
		</body>
		</html>
<%
    		
	}
	catch (Exception ex){
		session.invalidate();
		response.sendRedirect("index.jsp");
	}
%>
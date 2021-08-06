<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    try{
    	session.removeAttribute("name");
    	session.removeAttribute("phno");
    	session.setAttribute("msg","<h3>Successfully logout");
    	response.sendRedirect("index.jsp");
    }catch(Exception ex){
    	
    }
    
    %>
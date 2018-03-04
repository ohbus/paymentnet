<%-- 
    Document   : aloginprocess
    Created on : Jan 9, 2018, 6:26:51 PM
    Author     : xen
--%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		
if(request.getParameter("username").equalsIgnoreCase(username)&& request.getParameter("userpass").equalsIgnoreCase(password))
{
    session.setAttribute("islogin","Please, Sign in first");
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
<% 
}

else{
request.setAttribute("Error","Sorry! Username or Password Error. plz Enter Correct Detail");
session.setAttribute("Loginmsg","plz sign in first");
%>
<jsp:forward page="admin.jsp"></jsp:forward>
<% 
}
%>
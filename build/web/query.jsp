<%-- 
    Document   : query
    Created on : Jan 9, 2018, 7:03:28 PM
    Author     : xen
--%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{
String query=request.getParameter("query");
String email=request.getParameter("email");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
PreparedStatement ps=con.prepareStatement("insert into query values(?,?)");
ps.setString(1,query);
ps.setString(2,email);
int s=ps.executeUpdate();
}catch(Exception e){e.printStackTrace();}
%>
<jsp:forward page="contactus.jsp"></jsp:forward>
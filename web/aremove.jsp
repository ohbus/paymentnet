<%-- 
    Document   : aremove
    Created on : Jan 9, 2018, 6:29:44 PM
    Author     : xen
--%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");

PreparedStatement ps=con.prepareStatement("delete from payregister where id ='"+n+"'");
ps.executeUpdate();
con.close();
request.setAttribute("msg","Record Has been Successfully Deleted");
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
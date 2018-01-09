<%-- 
    Document   : logout
    Created on : Jan 9, 2018, 7:01:46 PM
    Author     : xen
--%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<% 
session.invalidate();
%>
<jsp:forward page="index.jsp"></jsp:forward>>
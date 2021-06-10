<%-- 
    Document   : LogoutHandler
    Created on : 8 Jun, 2021, 4:55:14 PM
    Author     : Vedansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  session.invalidate();
  response.sendRedirect("index.jsp");
%>

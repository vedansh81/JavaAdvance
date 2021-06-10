<%-- 
    Document   : LoginHandler
    Created on : 8 Jun, 2021, 4:27:07 PM
    Author     : Vedansh
--%>

<%@page import="storage.DBData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="bean1.SignupBean" scope="session"/>
<jsp:setProperty property="*" name="obj"/>


<%
   String status= DBData.checkLogin(obj);
  
   if(status.equals("true")){
       session.setAttribute("email",obj.getEmail());
       response.sendRedirect("home.jsp");
   }
   else if(status.equals("false")){
        response.sendRedirect("index.jsp?status=false " );
   }
   else if(status.equals("error")){
       response.sendRedirect("index.jsp?status=error " );
   }
   
%>
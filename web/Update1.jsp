<%-- 
    Document   : Update1
    Created on : 9 Jun, 2021, 11:32:32 AM
    Author     : Vedansh
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="config.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  String occup= request.getParameter("occupation");
  String nw= request.getParameter("networth");
  String loca= request.getParameter("location");
  String mob= request.getParameter("mobile");
  String email= (String)session.getAttribute("email");
    try{
        Connection con = DBconnect.getConnection();
        String q="update bidder set occupation='"+occup+"', networth='"+nw+"', location='"+loca+"', mobile='"+mob+"' where email='"+email+"'";
        PreparedStatement ps=con.prepareStatement(q);
        
        int i=ps.executeUpdate();
        out.print(i);
        con.close();
    }
    
    catch(Exception e){
        
    }


%>

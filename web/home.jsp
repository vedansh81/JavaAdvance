<%-- 
    Document   : home
    Created on : 8 Jun, 2021, 4:37:05 PM
    Author     : Vedansh
--%>

<%@page import="bean1.SignupBean"%>
<%@page import="storage.DBData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="config.DBconnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="BootStrapeCDN.jsp"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          String email = (String)session.getAttribute("email");
         
            if(email!=null){
                 String bname= DBData.getBname(email);
          int b_id= DBData.getB_id(email);
          
         
        %>
        <div class="container">
            <div class="row">
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                      <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">AuctionBuddy</a>
                      </div>
                      <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                       
                      </ul>
                        
                            <button class="btn btn-primary navbar-btn" onclick="window.location.href='product_form.jsp?id= <%= b_id %> '">Create Auction</button>
                            <ul class="nav navbar-nav navbar-right ">
                                <button class="btn btn-danger navbar-btn" onclick="window.location.href='LogoutHandler.jsp'">Logout</button>
                            </ul>
                    </div>
                  </nav>
            </div>
            <div class="row">
                <div class="col-md-6">
                    
                    
                </div>
                <div class="col-md-6">
                    <h3>Welcome <%= bname %> !!</h3>
                </div>
            </div>
                <div class="row">
                    <!-- live Auction-->
                </div
            <div class="row">
                <!-- -->
                <div class="col-md-4">
                    <!-- bidder info-->
                    <table class="table">  
                   <%
                      try{
                          Connection con=DBconnect.getConnection();
                          String q="select * from bidder where email=?";
                          PreparedStatement ps=con.prepareStatement(q);
                          ps.setString(1,email);
                          ResultSet rs = ps.executeQuery();
                          
                          while(rs.next()){
                              out.println("<tr><th>Name:</th><td>"+rs.getString("name")+"</td></tr>");
                              out.println("<tr><th>Email:</th><td>"+rs.getString("email")+"</td></tr>");
                              out.println("<tr><th>Occupation:</th><td>"+rs.getString("occupation")+"</td></tr>");
                              out.println("<tr><th>Networth:</th><td>"+rs.getString("networth")+"</td></tr>");
                              out.println("<tr><th>Location:</th><td>"+rs.getString("location")+"</td></tr>");
                              out.println("<tr><th>Mobile:</th><td>"+rs.getString("mobile")+"</td></tr>");
                              
                          }
                      }
                      catch(Exception e){
                          
                      }
                   %>
                   <tr><td><button class="btn btn-primary" onclick="window.location.href='Update.jsp?email1=email'">Edit</button></td></tr>
                  </table>
                </div>
                <div class="col-md-6"></div>
            </div>
            
        </div>
        <%}
            else {
                   response.sendRedirect("index.jsp");
            }
        
        %>
        
        
    </body>
</html>

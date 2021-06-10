<%-- 
    Document   : Update
    Created on : 8 Jun, 2021, 9:20:04 PM
    Author     : Vedansh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="config.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@include file="BootStrapeCDN.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  String email=(String)session.getAttribute("email");
  
  try{
                          Connection con=DBconnect.getConnection();
                          String q="select * from bidder where email=?";
                          PreparedStatement ps=con.prepareStatement(q);
                          ps.setString(1,email);
                          ResultSet rs = ps.executeQuery();
                          
                          while(rs.next()){
                              
                              %>
                             
                              <form action="Update1.jsp" method="get" style="border:1px solid #ccc">
                                <div class="form-group">
                                  <label for="name">Name :</label>
                                  <input type="text" value="<%= rs.getString("name") %>" name="name" /><br/><br/>
                                </div>
                                <div class="form-group">
                                  <label for="email">Email :</label>
                                  <input type="text" value="<%= rs.getString("email") %>" name="email" /><br/><br/>
                                </div>
                                  <div class="form-group">
                                  <label for="email">Occupation :</label>
                                  <input type="text" value="<%= rs.getString("occupation") %>" name="occupation" /><br/><br/>
                                </div>
                                  <div class="form-group">
                                  <label for="email">Net Worth:</label>
                                  <input type="text" value="<%= rs.getString("networth") %>" name="networth" /><br/><br/>
                                </div>
                                  <div class="form-group">
                                  <label for="email">Location :</label>
                                  <input type="text" value="<%= rs.getString("location") %>" name="location" /><br/><br/>
                                </div>
                                  
                                <div class="form-group">
                                  <label for="email">Mobile Number:</label>
                                  <input type="text" value="<%= rs.getString("mobile") %>" name="mobile" /><br/><br/>
                                </div>
                                
                                <button type="submit" class="btn btn-default">Submit</button>
                              </form>
                              
                              
                          <%}
                      }
                      catch(Exception e){
                          
                      }
%>

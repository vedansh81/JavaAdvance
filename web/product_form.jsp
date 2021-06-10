<%-- 
    Document   : product_form
    Created on : 9 Jun, 2021, 4:23:29 PM
    Author     : Vedansh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="BootStrapeCDN.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           int id = Integer.parseInt(request.getParameter("id"));
          out.println(id);
        %>
        
        <div class="container">
            <div class="row"></div>
            <div class="row">
                <div class="col-md-3">
                    
                </div>
                
                <div class="col-md-6">
                    <form action="uploadImg.jsp" method="">
                        <select name="category" class="form-control">
                            <option value="Select Category " disabled selected  >Select Category</option>
                            <option value="Vehicle">Vehicle</option>
                            <option value="Electronic">Electronic</option>
			    <option value="Book">Book</option>
			    <option value="House">House</option>
			    <option value="Artifacts">Artifacts</option>
			    <option value="Furniture">Furniture</option>
			    <option value="Souveniers">Souveniers</option>
                        </select><br/><br/>
                        
                        <textarea name="description" class="form-control" placeholder="Enter Product Description" ></textarea><br/><br/>
                        <input type="text" name="initial price" class="form-control" placeholder="Enter Initial Price of Product"/><br/><br/>
                        <input type="date" name="schedule_date" class="form-control" placeholder="Enter Auction Date"/><br/><br/>
                        <input type="hidden" name="b_id" value="<%=id%>"/><br/><br/>
                        <input type="submit" value="Save" class="btn btn-info btn-block"/><br/><br/>
                    </form>
                </div>
            </div>
            <div class="row"></div>
            
        </div>
    </body>
</html>

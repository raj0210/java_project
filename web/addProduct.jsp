<%-- 
    Document   : addProduct
    Created on : 17-Apr-2015, 5:22:52 PM
    Author     : c0646395
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                        <link rel="stylesheet" type="text/css" href="productDisplay.css">

    </head>
    <body>
         
        <%!
        public class Actor {
            String URL = "jdbc:mysql://localhost/java";
            String USERNAME = "root";
            String PASSWORD = "";
            
            Connection connection = null;
            PreparedStatement insertActors = null;
            ResultSet resultset = null;
            
            public Actor(){
                try {
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    insertActors = connection.prepareStatement(
                    "insert into selling_product (product_name, description, price, contact, city, province)"
                   + "values (?, ?, ?, ?, ?, ?)");
                    
                            
                }
                
                catch (SQLException e){
                    e.printStackTrace();
                }
                }
              public int setActors(String product, String desc, String price, String contact,  String city, String province)
        {
            int result = 0;
            try {
            insertActors.setString (1, product);
            insertActors.setString (2, desc);    
            insertActors.setString (3, price);
           
            insertActors.setString (4, contact);
            insertActors.setString (5, city);
            insertActors.setString (6, province);
            result = insertActors.executeUpdate();
            } catch(SQLException e)
            {
                e.printStackTrace();
            }
            return result;
        }
            }
    
        %>
        
        <%
            int result = 0;
            
            if(request.getParameter("submit") != null){
            String product = new String ();
            String desc = new String();    
            String price = new String();
            
            String contact = new String();
            String city = new String();
            String province = new String();
            
            
            if(request.getParameter("product") != null){
                product = request.getParameter("product");
            }
            if(request.getParameter("desc") != null){
                desc = request.getParameter("desc");
            }
            
            if(request.getParameter("price") != null){
                price = request.getParameter("price");
            }
            
          
            
            if(request.getParameter("contact") != null){
                contact = request.getParameter("contact");
            }
            
            if(request.getParameter("city") != null){
                city = request.getParameter("city");
            }
            
             if(request.getParameter("province") != null){
                province = request.getParameter("province");
            }
            
           Actor actor = new Actor();
            result = actor.setActors(product, desc, price, contact, city, province);
            }
        %>  
        
        <form action="addProduct.jsp" method="POST">
            <table border="0">
                <thead>
                    <tr id="firstrow">
                        <th colspan="2"> Add Product</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Product Name</td>
                        <td><input type="text" name="product" value="" /></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><textarea name="desc" rows="4" cols="22"></textarea></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="text" name="price" value="" /></td>
                    </tr>
                   
                    <tr>
                        <td>Contact</td>
                        <td><input type="text" name="contact" value="" /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="city" value="" /></td>
                    </tr>
                    <tr>
                        <td>Province</td>
                        <td><input type="text" name="province" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Submit" name="submit" />
                        </td>
                    </tr>
                </tbody>
                
            </table>

        </form>
        
    </body>
</html>

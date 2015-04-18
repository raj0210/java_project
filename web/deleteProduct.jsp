<%-- 
    Document   : deleteProduct
    Created on : 18-Apr-2015, 3:34:36 PM
    Author     : c0646395
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="update" action="update.jsp" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Contact</th>
                        <th>City</th>
                        <th>Province</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" name="product" value="" /></td>
                        <td><input type="text" name="desc" value="" /></td>
                        <td><input type="text" name="price" value="" /></td>
                        <td><input type="text" name="contact" value="" /></td>
                        <td><input type="text" name="city" value="" /></td>
                        <td><input type="text" name="province" value="" /></td>
                     
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>

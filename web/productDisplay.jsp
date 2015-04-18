<%-- 
    Document   : productDisplay
    Created on : 18-Apr-2015, 1:54:34 PM
    Author     : c0646395
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
                <link rel="stylesheet" type="text/css" href="productDisplay.css">

    </head>
    <body>
        <h1>Product List</h1>
      <form method="post">

          <table border="2">
<tr id="firstrow">
<th>ID</th>
<th>Product Name</th>
<th>Description</th>
<th>Price</th>
<th>Contact</th>
<th>City</th>
<th>Province</th>
<th>Update</th>
<th>Delete</th>

</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/java";
String username="root";
String password="";
String query="select * from selling_product";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt = conn.prepareStatement(query);
//Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%=rs.getInt("ID") %></td>
    <td><%=rs.getString("product_name") %></td>
    <td><%=rs.getString("description") %></td>
    <td><%=rs.getString("price") %></td>
    <td><%=rs.getString("contact") %></td>
    <td><%=rs.getString("city") %></td>
    <td><%=rs.getString("province") %></td>
    <td><a href="updateProduct.jsp?id=<c:out value="${row.id}"/>">Update</a></td>
    <td><a href="deleteProduct.jsp">Delete</a></td>
    
    </tr>
    
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>
    </body>
</html>

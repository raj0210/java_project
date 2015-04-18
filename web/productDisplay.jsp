<%-- 
    Document   : productDisplay
    Created on : 18-Apr-2015, 1:54:34 PM
    Author     : c0646395
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<th>Name</th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/java";
String username="root";
String password="";
String query="select sp.id, sp.product_name, sp.description, sp.price, sp.contact, sp.city, sp.province, r.first_name from selling_product sp, register r";
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
    <td><%=rs.getString("first_name") %></td></tr>
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

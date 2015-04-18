<%-- 
    Document   : updateProduct
    Created on : 18-Apr-2015, 3:34:24 PM
    Author     : c0646395
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/java"
                           user="root"
                           password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from selling_product where id=?;
            <sql:param value="${param.id}" />
        </sql:query>
        
        <form action="productUpdate.jsp" method="post">
            <table border="1">
                <caption>Update Product</caption>
                <tr>
                    <th>Product Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Contact</th>
                    <th>City</th>
                    <th>Province</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="text" value="${row.product_name}" name="price"/></td>
                        <td><input type="text" value="${row.description}" name="price"/></td>
                        <td><input type="text" value="${row.price}" name="price"/></td>
                        <td><input type="text" value="${row.contact}" name="price"/></td>
                        <td><input type="text" value="${row.city}" name="price"/></td>
                        <td><input type="text" value="${row.state}" name="price"/></td>
                    </tr>
                </c:forEach>
            </table>
            
        </form>
    </body>
</html>

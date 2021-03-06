<%-- 
    Document   : updateForm
    Created on : 18-Apr-2015, 6:53:52 PM
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
                            <link rel="stylesheet" type="text/css" href="productDisplay.css">

    <body>
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/java"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from selling_product where id=?;
            <sql:param value="${param.id}" />
        </sql:query>
        <form action="update.jsp" method="post">
            <table border="0" width="40%">
                <caption>Update Product</caption>
                <tr>
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>description</th>
                    <th>price</th>
                    <th>contact</th>
                    <th>city</th>
                    <th>province</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="text" style="width: 10px" value="${param.id}" name="id" readonly="readonly"/>
                        <td><input type="text" value="${row.product_name}" name="product_name"/></td>
                        <td><input type="text" value="${row.description}" name="description"/></td>
                        <td><input type="text" value="${row.price}" name="price"/></td>
                        <td><input type="text" value="${row.contact}" name="contact"/></td>
                        <td><input type="text" value="${row.city}" name="city"/></td>
                        <td><input type="text" value="${row.province}" name="province"/></td></tr>
                    <tr><td colspan="7"><input type="submit" value="Update"/></td></tr>
                    
                </c:forEach>
            </table>
           
        </form>
    </body>
</html>

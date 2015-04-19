<%-- 
    Document   : deleteProduct
    Created on : 18-Apr-2015, 3:34:36 PM
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
                           user="root"  password=""/>
        <sql:update dataSource="${dbsource}" var="count">
            DELETE FROM selling_product
            WHERE id='${param.id}'
        </sql:update>
        <c:if test="${count>=1}">
            <script>
                
            alert("Data deleted successfully.");
            window.location="productDisplay.jsp";
            </script>
                       
        </c:if>
    </body>
</html>

<%-- 
    Document   : ipdate
    Created on : 18-Apr-2015, 6:55:44 PM
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
            UPDATE selling_product SET product_name = ?, description=?, price=?, contact=?, city=?, province=?
            WHERE id='${param.id}'
            <sql:param value="${param.product_name}" />
            <sql:param value="${param.description}" />
            <sql:param value="${param.price}" />
            <sql:param value="${param.contact}" />
            <sql:param value="${param.city}" />
            <sql:param value="${param.province}" />
        </sql:update>
        <c:if test="${count>=1}">
<!--           <font size="5" color='green'>Data updated successfully.</font>-->
          
                       <script>
                
            alert("Data updated successfully.");
            window.location="productDisplay.jsp";
            </script>
        </c:if>
    </body>
</html>
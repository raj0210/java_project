<%-- 
    Document   : productDisplay
    Created on : 18-Apr-2015, 1:54:34 PM
    Author     : c0646395
--%>


<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>SELECT Operation</title>
        <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
                        <link rel="stylesheet" type="text/css" href="productDisplay.css">
    </head>
     <link rel="stylesheet" href="navigation.css">
         <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <body>
          <%
    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("name")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>
        
         <div id='cssmenu'>
             <ul style="width: 410px">
    <li ><a href='welcome.jsp'><span>Home</span></a></li>
   <li  class='active'><a href='productDisplay.jsp'><span>Products</span></a></li>
   <li><a href='addProduct.jsp'><span>Add Product</span></a></li>
 <li class='last'><a href='#'><span>Contact</span></a></li>
</ul>
</div>
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/java"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from selling_product;
        </sql:query>
    <center>
        <form>
            <h1>Product List
            </h1>
            <table border="1" width="40%">
                
                <tr id="firstrow">
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>description</th>
                    <th>price</th>
                    <th>contact</th>
                    <th>city</th>
                    <th>province</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.id}"/></td>
                        <td><c:out value="${row.product_name}"/></td>
                        <td><c:out value="${row.description}"/></td>
                        <td><c:out value="${row.price}"/></td>
                        <td><c:out value="${row.contact}"/></td>
                        <td><c:out value="${row.city}"/></td>
                        <td><c:out value="${row.province}"/></td>
                        <td><a href="updateForm.jsp?id=<c:out value="${row.id}"/>">Update</a></td>
                        <td><a href="javascript:confirmGo('Are you sure to delete?','deleteProduct.jsp?id=<c:out value="${row.id}"/>')">Delete</a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        
    </center>
</body>
</html>

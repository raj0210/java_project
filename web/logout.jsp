<%-- 
    Document   : logout
    Created on : 18-Apr-2015, 7:32:25 PM
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
       <%
session.setAttribute("name", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
    </body>
</html>

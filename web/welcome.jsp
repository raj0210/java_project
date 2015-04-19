<%-- 
    Document   : welcome
    Created on : 16-Apr-2015, 6:22:04 PM
    Author     : c0646395
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
         <link rel="stylesheet" href="navigation.css">
         <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
                                 

   
    </head>
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
       <ul style="width: 100%">
   <li class='active'><a href='#'><span>Home</span></a></li>
   <li><a href='productDisplay.jsp'><span>Products</span></a></li>
   <li><a href='addProduct.jsp'><span>Add Product</span></a></li>
   <li class='last'><a href='#'><span>Contact</span></a></li>
</ul>
       <img src="ls-03.jpg" style="height: 450px" width="100%">
</div>      
  

        
        
        
     

    </body>
</html>


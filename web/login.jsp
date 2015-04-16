<%-- 
    Document   : login
    Created on : 14-Apr-2015, 7:40:59 PM
    Author     : c0646395
--%>
<%@page import = "java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
        <link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="login.css">
       
        
    </head>
    <body>
              
        <div class="testbox" style="height: 290px">
  <h1>Login</h1>

  <form action="login" method="POST">
      <hr>
  
  <label id="icon" for="username"><i class="icon-user"></i></label>
  <input type="text" name="username" id="username" placeholder="Username" required/>    
  
  <label id="icon" for="password"><i class="icon-shield"></i></label>
  <input type="password" name="password" id="password" placeholder="Password" required/> 
  
   
  <input type="submit" value="Submit" name="submit" class="submit" />
  </form>
</div>
        
    </body>
</html>

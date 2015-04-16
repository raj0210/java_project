<%-- 
    Document   : index
    Created on : 5-Apr-2015, 3:33:21 PM
    Author     : c0646395
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
        <link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="login.css">

    </head>
    <body>
        <h1>Register Page</h1>
        <%!
        public class Actor {
            String URL = "jdbc:mysql://localhost/java";
            String USERNAME = "root";
            String PASSWORD = "";
            
            Connection connection = null;
            PreparedStatement insertActors = null;
            ResultSet resultset = null;
            
            public Actor(){
                try {
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    insertActors = connection.prepareStatement(
                    "insert into register (first_name, last_name, username, email, password)"
                   + "values (?, ?, ?, ?, ?)");
                    
                            
                }
                
                catch (SQLException e){
                    e.printStackTrace();
                }
                }
              public int setActors(String first, String last, String username, String email,  String password)
        {
            int result = 0;
            try {
            insertActors.setString (1, first);
            insertActors.setString (2, last);    
            insertActors.setString (3, username);
            insertActors.setString (4, email);
            insertActors.setString (5, password);
            result = insertActors.executeUpdate();
            } catch(SQLException e)
            {
                e.printStackTrace();
            }
            return result;
        }
            }
    
        %>
        
        <%
            int result = 0;
            
            if(request.getParameter("submit") != null){
            String first = new String ();
            String last = new String();    
            
            String username = new String ();
            String email = new String ();
            String password = new String();
            
            if(request.getParameter("first") != null){
                first = request.getParameter("first");
            }
            if(request.getParameter("last") != null){
                last = request.getParameter("last");
            }
            
            if(request.getParameter("username") != null){
                username = request.getParameter("username");
            }
            
            if(request.getParameter("email") != null){
                email = request.getParameter("email");
            }
            
            if(request.getParameter("password") != null){
                password = request.getParameter("password");
            }
            
           Actor actor = new Actor();
            result = actor.setActors(first, last, username, email, password);
            }
        %>  
        
        
        
        
        <div class="testbox">
  <h1>Registration</h1>

  <form action="register.jsp" method="POST">
      <hr>
  
  <label id="icon" for="fname"><i class="icon-user"></i></label>
  <input type="text" name="first" id="fname" placeholder="FirstName" required/>    
  <label id="icon" for="lname"><i class="icon-user"></i></label>
  <input type="text" name="last" id="lname" placeholder="LastName" required/>
  <label id="icon" for="username"><i class="icon-envelope "></i></label>
  <input type="text" name="username" id="username" placeholder="Username" required/>
  <label id="icon" for="email"><i class="icon-envelope "></i></label>
  <input type="text" name="email" id="email" placeholder="Email" required/> 
  
  
  <label id="icon" for="password"><i class="icon-shield"></i></label>
  <input type="password" name="password" id="password" placeholder="Password" required/> 
  
   <p>By clicking Register, you agree on our <a href="#">terms and condition</a>.</p>
   <input type="submit" value="Submit" name="submit" class="submit" />
  </form>
</div>

    </body>
</html>

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
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
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
                    "insert into user (email,password)"
                   + "values (?, ?)");
                    
                            
                }
                
                catch (SQLException e){
                    e.printStackTrace();
                }
                }
              public int setActors(String email, String password)
        {
            int result = 0;
            try {
            insertActors.setString (1, email);
            insertActors.setString (2, password);
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
            String email = new String ();
            String password = new String();
            
            if(request.getParameter("email") != null){
                email = request.getParameter("email");
            }
            if(request.getParameter("password") != null){
                password = request.getParameter("password");
            }
            
           Actor actor = new Actor();
            result = actor.setActors(email, password);
            }
        %>  
        
        
        
        
        <form name="loginForm" action="index.jsp" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">Enter your login details</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name:</td>
                        <td><input type="text" name="email" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Last Name:</td>
                        <td><input type="password" name="password" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="reset" value="Clear" name="clear" />
                        <input type="submit" value="Submit" name="submit" /></td>
                    </tr>
                </tbody>
            </table>
            
            
            <a href="register.jsp">Register</a>
        </form>

    </body>
</html>

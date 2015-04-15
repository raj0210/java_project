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
       
        
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            session.putValue("username", username);
            String pwd = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/java","root","");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from register where first_name = "+username+"");
            if(rs.next())
            {
                if(rs.getString(5).equals(pwd))
                {
                    out.println("Welcome "+username);
                }
            }
            else
            {
                out.println("Incorrect Password");
            }
            
            %>
        
        <h1>Login Page</h1>
        <form name="login" action="login.jsp" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">Login Page</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" name="login" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
        
    </body>
</html>

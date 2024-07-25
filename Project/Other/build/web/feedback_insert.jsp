<%-- 
    Document   : feedback_insert
    Created on : Mar 1, 2024, 12:24:22 AM
    Author     : shrey
--%>

<%@page import="java.io.File"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="javax.servlet.http.Part"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="xyz.Connect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Feedback</title>
        <style>
            body{
                background: url("Images/background.jpg");
                background-size: cover;
            }
             a { 
            color: #006600;
            font-size: larger;
            text-decoration: none; 
        }
        /* On placing mouse over the link */ 
        a:hover { 
            color: rgb(128, 105, 255); 
            font-size: larger;
            text-decoration: underline; 
        }
        
        </style>
    </head>
    <body>
    <center>
        <br>
        <br>
        <%
   
          String n = request.getParameter("name");
          String e = request.getParameter("email"); 
          String m = request.getParameter("message");
          String r = request.getParameter("rating");
              
    try {
            
            Connection con=new Connect().con;
           
            PreparedStatement ps=con.prepareStatement("insert into Feedback(username, email, message,rating) values(?,?,?,?)");
            ps.setString(1,n);
            ps.setString(2,e);
            ps.setString(3,m);
            ps.setString(4,r);

            if(ps.executeUpdate()>0)
            {
                out.println("Feedback added successfully");
            }
            else
            {
                out.println("Data does not added");
            }
    }
     catch (Exception ex) {

        out.println(ex);

    } 
    
        %>
        <br>
        <br>
        <br>
        <br>
        <a href="index.html"><b>Home Page</b></a>
    </center>   
    </body>
</html>


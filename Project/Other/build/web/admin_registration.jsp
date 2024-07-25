<%-- 
    Document   : admin_registration
    Created on : Feb 17, 2024, 10:06:12 PM
    Author     : shrey
--%>

<%@page import="xyz.Connect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background: url("Images/welcome5.jpg");
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
          String un=request.getParameter("username");
          String up=request.getParameter("password"); 
          String e=request.getParameter("email");
    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("INSERT INTO LoginA(Username,Password,Email) VALUES(?, ?, ?)");
            ps.setString(1,un);
            ps.setString(2,up);
            ps.setString(3,e);
            if(ps.executeUpdate()>0)
            {   
                out.println("You have Registered Successfully!!Please <a href='adminsignin.html'>Login</a> to Continue");
            }

    } catch (Exception ex) {

        out.println(ex);

    } 
        %>
        <br>
        <br>
    </center>
    </body>
</html>


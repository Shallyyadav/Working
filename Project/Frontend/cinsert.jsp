<%-- 
    Document   : cinsert
    Created on : Feb 23, 2024, 11:31:12 PM
    Author     : shrey
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="xyz.Connect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category</title>
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
   
          String ci = request.getParameter("cat_id");
          String cn = request.getParameter("cat_name"); 
          String pi = request.getParameter("p_id");    
    try {
            
            Connection con=new Connect().con;
           
            PreparedStatement ps=con.prepareStatement("insert into Category(cat_id,cat_name,p_id) values(?,?,?)");
            ps.setString(1,ci);
            ps.setString(2,cn);
            ps.setString(3,pi);

            if(ps.executeUpdate()>0)
            {
                out.println("Category data added successfully");
            }
            else
            {
                out.println("Data does not added");
            }
    }
     catch (Exception e) {

        out.println(e);

    } 
    
        %>
        <br>
        <br>
        <br>
        <br>
        <a href="admin_page.html"><b>Admin Panel</b></a>
    </center>
    </body>
</html>

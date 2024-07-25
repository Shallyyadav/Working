<%-- 
    Document   : pupdate
    Created on : Feb 23, 2024, 10:31:53 PM
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
        <title>Update Product</title>
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
          String pi = request.getParameter("p_id");
          String pn = request.getParameter("p_name"); 
          String pc = request.getParameter("p_cost");
          String pcat = request.getParameter("p_category");
          String path= request.getParameter("image_path");
    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("update Product set p_name=?, p_cost=?, p_category=?,image_path=? where p_id=?");
            ps.setString(1,pn);
            ps.setString(2,pc);
            ps.setString(3,pcat);
            ps.setString(4,path);
            ps.setString(5,pi);
            if(ps.executeUpdate()>0)
             
                out.println("Data Updated successfully");
            else
                out.println("Incorrect Product Id");
    } catch (Exception e) {

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

<%-- 
    Document   : product_insert
    Created on : Feb 17, 2024, 11:45:14 PM
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
        <title>Add Product</title>
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
           
            PreparedStatement ps=con.prepareStatement("insert into Product(p_id, p_name, p_cost,p_category,image_path) values(?,?,?,?,?)");
            ps.setString(1,pi);
            ps.setString(2,pn);
            ps.setString(3,pc);
            ps.setString(4,pcat);
            ps.setString(5,path);

            if(ps.executeUpdate()>0)
            {
                out.println("Product data added successfully");
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

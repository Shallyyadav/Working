<%-- 
    Document   : profile_insert
    Created on : Mar 2, 2024, 9:49:10 PM
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
        
        <br<br><br><br><br><br><br><br><br><br><br><br>
        <%
   
          String an = request.getParameter("name");
          String am = request.getParameter("mobile"); 
          String ae = request.getParameter("email");
          String aad1 = request.getParameter("address1");
          String adob= request.getParameter("date");
    try {
            
            Connection con=new Connect().con;
           
            PreparedStatement ps=con.prepareStatement("insert into Admin(username,a_phone,a_email,a_address1,a_dob) values(?,?,?,?,?)");
            ps.setString(1,an);
            ps.setString(2,am);
            ps.setString(3,ae);
            ps.setString(4,aad1);
            ps.setString(5,adob);
            if(ps.executeUpdate()>0)
            {
                out.println("Your Profile is added successfully");
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
        <a href="admin_page.html"><div style="text-align: center;">
        <input type="submit" value="Back to home page">
      </div></a>
    </center>   
    </body>
</html>


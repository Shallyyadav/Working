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
   
          String cn = request.getParameter("name");
          String cm = request.getParameter("mobile"); 
          String ce = request.getParameter("email");
          String cad1 = request.getParameter("address1");
          String cad2= request.getParameter("address2"); 
          String cp= request.getParameter("postcode");
          String cs= request.getParameter("state");
          String cc= request.getParameter("country");
          String cdob= request.getParameter("date");
    try {
            
            Connection con=new Connect().con;
           
            PreparedStatement ps=con.prepareStatement("update Customer set c_phone=?, c_email=?,c_address1=?,c_address2=?,c_pin=?,c_state=?,c_country=?,c_dob=? where username=?");
            ps.setString(1,cm);
            ps.setString(2,ce);
            ps.setString(3,cad1);
            ps.setString(4,cad2);
            ps.setString(5,cp);
            ps.setString(6,cs);
            ps.setString(7,cc);
            ps.setString(8,cdob);
            ps.setString(9,cn);
            if(ps.executeUpdate()>0)
            {
                out.println("Your Profile is update successfully");
            }
            else
            {
                out.println("Data does not updated");
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
        <a href="index.html"><div style="text-align: center;">
        <input type="submit" value="Back to home page">
      </div></a>
    </center>   
    </body>
</html>


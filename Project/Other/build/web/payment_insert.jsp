<%-- 
    Document   : payment_insert
    Created on : Mar 2, 2024, 10:31:02 PM
    Author     : shrey
--%>


<%@ page import="java.sql.*" %>
<%@ page import="xyz.Connect" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
        <style>
            body{
                background: url("Images/background4.jpg");
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
    String un = request.getParameter("name");
    String cp = request.getParameter("mobile");
    String ca1 = request.getParameter("add");
    String ca2 = request.getParameter("add2");
    String cpin = request.getParameter("pin");
    String cs = request.getParameter("state");
    String cc = request.getParameter("country");
    String pm = request.getParameter("method");
    String cn = request.getParameter("card_no"); 
    String em = request.getParameter("exp_month");
    String ey = request.getParameter("exp_year");

    try {
        Connection con = new Connect().con;
        PreparedStatement ps = con.prepareStatement("INSERT INTO ORDER_PURCHASE (USERNAME, C_PHONE, C_ADDRESS1, C_ADDRESS2, C_PIN, C_STATE, C_COUNTRY, PAY_METHOD, CARD_NUMBER, EXP_MONTH, EXP_YEAR) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            ps.setString(1, un);
            ps.setString(2, cp);
            ps.setString(3, ca1);
            ps.setString(4, ca2);
            ps.setString(5, cpin);
            ps.setString(6, cs);
            ps.setString(7, cc);
            ps.setString(8, pm);
            ps.setString(9, cn);
            ps.setString(10, em);
            ps.setString(11, ey);
           

            // Execute the SQL statement
            ps.executeUpdate();
        
        
        out.println("Thank you for your purchase!!!");

    } catch (Exception e) {
        out.println(e);
    }
%>

        <br>
        <br>
        <br>
        <br>
        <a href="index.html"><b>Continue Shopping</b></a>
    </center>   
    </body>
</html>



<%-- 
    Document   : payment
    Created on : Mar 2, 2024, 11:58:10 PM
    Author     : shrey
--%>

<%@page import="java.security.Principal"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="xyz.Connect"%>
<%@page import="java.sql.Connection"%>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="pay_style.css">
        <title>Payment</title>
        <style>
            #cord:checked ~ .cord
            {
                display:block;
            }
        </style>
        <script type="text/javascript">
            function checkLogin() {
            var isLoggedIn = sessionStorage.getItem("isLoggedIn");

            if (!isLoggedIn) {
                // Redirect to the login page if not logged in
                window.location.href = "signin.html";
                
            }
            
            sessionStorage.setItem("isLoggedIn", true);   
            }
            
            function payment_find()
            {
                document.form6.action="payment.jsp";
                document.form6.submit();
            }
            function payment_insert()
            {
                document.form6.action="payment_insert.jsp";
                document.form6.submit();
            }
            function payment_update()
            {
                document.form6.action="payment_update.jsp";
                document.form6.submit();
            }
        </script>
    </head>
    <body>
        
        <header>
            
            <div class="container">
                <div class="left">
                    <h3>Billing Address</h3> 
                    <%
                        
            String cn = request.getParameter("name");
          try {

            Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Customer where username=?");
            ps.setString(1,cn);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            { 
                
               
         %>
                    <form name="form6" method="POST">
                        <label for="name">Name(Username)</label>
                        <input type="text" name="name" placeholder="Enter name" required="" value="<%= rs.getString("username")%>"/>
                        <label for="mobile">Mobile Number</label>
                        <input type="text" name="mobile" placeholder="Enter mobile no." required=""value="<%=rs.getString("c_phone")%>"/>
                        <label for="add">Address1</label>
                        <input type="text" name="add" placeholder="Enter flat,house no., building " required="" value="<%=rs.getString("c_address1")%>"/>
                        <label for="add2">Address2</label>
                        <input type="text" name="add2" placeholder="Enter area,street,sector,village" required="" value="<%=rs.getString("c_address2")%>"/>
                        <label for="pin">Pin Code</label>
                            <input type="number" name="pin" placeholder="Pin Code" required="" value="<%=rs.getString("c_pin")%>"/>
                        <label for="state">State</label><br>
                        <input type="text" name="state" list="l1" placeholder="Enter state" value="<%=rs.getString("c_state")%>"/>
                        <datalist id="l1">
                            <option>Uttar Pradesh</option>
                            <option>Bihar</option>
                            <option>Madhya Pradesh</option>
                            <option>Rajasthan</option>
                            <option>Gujarat</option>
                        </datalist>
                        <label for="country">Country</label>
                        <input type="text" name="country" placeholder="Enter country" required="" value="<%=rs.getString("c_country")%>"/>
                        <input type="button"  value="Details" onclick="payment_find()">
                        <input type="button"  value="Update" onclick="payment_update()">
                    <%  
             
            }
            else
                out.println("Incorrect Username");

    } catch (Exception e) {

        out.println(e);

    } 
          
        %>
                   
                </div>
                <div class="right">
                    <h3>Payment</h3>
                        <label for="method">Payment Method</label><br>
                        <input type="radio" name="method" id="cod" value="Cash on delivery">Cash on delivery
                        <input type="radio" name="method" id="cord" value="Credit or Debit Card">Credit/Debit Card
                        <br>&nbsp;
                        <div class="cord" hidden>
                            <label for="card_no">Credit card Number</label>
                            <input type="number" name="card_no" placeholder="Enter card number" required=""/><br><br>
                            <label for="exp_month">Exp Month</label>
                            <input type="text" name="exp_month" placeholder="Enter month" required=""/><br><br>
                            <label for="exp_year">Exp Year</label>
                            <input type="text" name="exp_year" list="l2" placeholder="Enter year"/><br><br>
                            <datalist id="l2">
                                <option>2022</option>
                                <option>2023</option>
                                <option>2024</option>
                                <option>2025</option>
                                <option>2026</option>
                            </datalist>
                            <label for="cvv">CVV</label>
                            <input type="password" name="cvv" placeholder="CVV" required=""/><br><br>
                            </div>
                        <input type="button" value="Proceed to Checkout" onclick="payment_insert()">
                    </form>
                    
                </div>
            </div>
        </header>
    </body>
</html>


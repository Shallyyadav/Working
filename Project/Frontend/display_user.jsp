<%-- 
    Document   : display_user
    Created on : Feb 24, 2024, 12:01:57 AM
    Author     : shrey
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="xyz.Connect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style_admin.css">
        <title>Display Customers</title>
        <style>
           main{
                background: url("Images/background2.jpg");
                background-size: cover;
            }
            
   </style>
    </head>
    <body>
        <header>
      <h1>View Customers</h1>
  </header>
  
  <div class="container">
    <aside>
      <nav>
        <ul>
          <li><a href="admin_page.html">Home</a></li>
          <li><a href="admin_profile.html">Profile</a></li>
          <li><a href="categories.html">Categories</a></li>
          <li><a href="cdisplay.jsp">View Categories</a></li>
          <li><a href="add_product.html">Add Products</a></li>
          <li><a href="pdisplay.jsp">View Products</a></li>
          <li><a href="display_user.jsp">View User</a></li>
          <li><a href="feedback_display.jsp">View Feedback</a></li>
          <li><a href="index.html">Website</a></li>
          <li><a href="admin_logout.jsp" target=_self>Logout</a></li>
        </ul>
      </nav>
    </aside>
      <main>
          <center>
          <table border="1">
              <tr>
                  <td><b>Username</b></td>
                  <td><b>Phone no.</b></td>
                  <td><b>Email</b></td>
                  <td><b>Address1</b></td>
                  <td><b>Address2</b></td>
                  <td><b>Pin No.</b></td>
                  <td><b>State</b></td>
                  <td><b>Country</b></td>
                  <td><b>D.O.B</b></td>
              </tr>
              <%
    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Customer");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            { 
         %>
              <tr>
                <td><%=rs.getString("username")%></td>
                <td><%=rs.getString("c_phone")%></td>
                <td><%=rs.getString("c_email")%></td>
                <td><%=rs.getString("c_address1")%></td>
                <td><%=rs.getString("c_address2")%></td>
                <td><%=rs.getString("c_pin")%></td>
                <td><%=rs.getString("c_state")%></td>
                <td><%=rs.getString("c_country")%></td>
                <td><%=rs.getString("c_dob")%></td>
              </tr>
            <%     
            }

    } catch (Exception e) {

        out.println(e);

    } 
        %>
          </table>
          </center>
      </main>
  </div>
    </body>
</html>

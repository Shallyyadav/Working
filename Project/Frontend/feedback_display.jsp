<%-- 
    Document   : feedback_display
    Created on : Feb 24, 2024, 11:56:36 PM
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
      <h1>View Feedback</h1>
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
                  <td><b>Email</b></td>
                  <td><b>Message</b></td>
                  <td><b>Rating</b></td>
              </tr>
              <%
    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Feedback");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            { 
         %>
              <tr>
                <td><%=rs.getString("username")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("message")%></td>
                <td><%=rs.getString("rating")%></td>
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


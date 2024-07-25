<%-- 
    Document   : pdisplay
    Created on : Feb 23, 2024, 10:37:22 PM
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
        <title>Product Display</title>
        <style>
             main{
                background: url("Images/background2.jpg");
                background-size: cover;
            }
            
   </style>
    </head>
    <body>
        <header>
      <h1>View Product</h1>
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
                  <td><b>Product Id</b></td>
                  <td><b>Product Name</b></td>
                  <td><b>Cost</b></td>
                  <td><b>Product Category</b></td>
                  <td><b>Product Image Path</b></td>
              </tr>
              <%
          String pi = request.getParameter("p_id");
          String pn = request.getParameter("p_name"); 
          String pc = request.getParameter("p_cost");
          String pcat = request.getParameter("p_category");
          String path= request.getParameter("image_path"); 
    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Product");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            { 
         %>
              <tr>
                 <td><%=rs.getString("p_id")%></td>
                <td><%=rs.getString("p_name")%></td>
                <td><%=rs.getString("p_cost")%></td>
                <td><%=rs.getString("p_category")%></td>
                <td><%=rs.getString("image_path")%></td>
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


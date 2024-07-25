<%-- 
    Document   : cdisplay
    Created on : Feb 23, 2024, 11:32:06 PM
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
      <h1>View Category</h1>
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
                  <td><b>Category Id</b></td>
                  <td><b>Category Name</b></td>
                  <td><b>Product Id</b></td>
              </tr>
              <%
           String ci = request.getParameter("cat_id");
          String cn = request.getParameter("cat_name"); 
          String pi = request.getParameter("p_id");
    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Category");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            { 
         %>
              <tr>
                 <td><%=rs.getString("cat_id")%></td>
                <td><%=rs.getString("cat_name")%></td>
                <td><%=rs.getString("p_id")%></td>
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

<%-- 
    Document   : cfind
    Created on : Feb 23, 2024, 11:31:55 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Category</title>
        <style>
            main{
                background: url("Images/background 2.jpg");
                background-size: cover;
            }
   </style>
   <script type="text/javascript">
            function cfind()
            {
                document.form4.action="cfind.jsp";
                document.form4.submit();
            }
            function cupdate()
            {
                document.form4.action="cupdate.jsp";
                document.form4.submit();
            }
            function cdelete()
            {
                document.form4.action="cdelete.jsp";
                document.form4.submit();
            }
            function cinsert()
            {
                document.form4.action="cinsert.jsp";
                document.form4.submit();
            }
        </script>
    </head>
    <body>
        <header>
      <h1>Categories</h1>
  </header>
  
  <div class="container">
    <aside>
      <nav>
        <ul>
          <li><a href="admin_page.html">Home</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="categories.html">Categories</a></li>
          <li><a href="cdisplay.jsp">View Categories</a></li>
          <li><a href="add_product.html">Add Products</a></li>
          <li><a href="pdisplay.jsp">View Products</a></li>
          <li><a href="display_user.jsp">View user</a></li>
        </ul>
      </nav>
    </aside>
    <main>
      <form name="form4" method="GET" enctype="multipart/form-data" >
          <fieldset>
              <legend><b>Categories</b></legend>
              <%
           String ci = request.getParameter("cat_id");
          String cn = request.getParameter("cat_name"); 
          String pi = request.getParameter("p_id");
    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Category where p_id=?");
            ps.setString(1,pi);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            { 
                
               
         %>   
        <label for="cat_id">Enter Category id:</label>
        <input type="text" id="category-id" name="cat_id" placeholder='category id' class="form-control" required="" value="<%=rs.getString("cat_id")%>" ><br>
        <label for="cat_name">Enter Category name:</label>
        <input type="text" id="category-name" name="cat_name" placeholder='category name'  class="form-control" required="" value="<%=rs.getString("cat_name")%>"><br>
        <label for="p_id">Enter Product Id:</label>
        <input type="text" id="product-id" name="p_id" placeholder='product id'  class="form-control" required="" value="<%=rs.getString("p_id")%>"><br>
            <center>
                <input type="button" value="Add" onclick="cinsert()"/>
                <input type="button" value="Delete" onclick="cdelete()"/>
                <input type="button" value="Update" onclick="cupdate()"/>
                <input type="button" value="Find" onclick="cfind()"/>
            </center>
            <%  
             
            }
            else
                out.println("Incorrect Product Id");

    } catch (Exception e) {

        out.println(e);

    } 
        %>
          </fieldset>
      </form>
    </main>
  </div>

    </body>
</html>

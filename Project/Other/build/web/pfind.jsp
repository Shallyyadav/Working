<%-- 
    Document   : pfind
    Created on : Feb 23, 2024, 10:24:48 PM
    Author     : shrey
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="xyz.Connect"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <title>Find Product</title>
    <link rel="stylesheet" type="text/css" href="style_admin.css">
    <style>
            main{
                background: url("Images/background2.jpg");
                background-size: cover;
            }
    </style>
    <script type="text/javascript">
            function pfind()
            {
                document.form3.action="pfind.jsp";
                document.form3.submit();
            }
            function pupdate()
            {
                document.form3.action="pupdate.jsp";
                document.form3.submit();
            }
            function pdelete()
            {
                document.form3.action="pdelete.jsp";
                document.form3.submit();
            }
            function pinsert()
            {
                document.form3.action="product_insert.jsp";
                document.form3.submit();
            }
        </script>
</head>
<body>
    
  <header>
      <h1>Add Product</h1>
  </header>
  
  <div class="container">
    <aside>
      <nav>
        <ul>
          <li><a href="admin_page.html">Home</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="categories.html">Categories</a></li>
          <li><a href="cdisplay.jsp">Browse Categories</a></li>
          <li><a href="add_product.html">Add Products</a></li>
          <li><a href="pdisplay.jsp">View Products</a></li>
          <li><a href="display_user.jsp">View user</a></li>
        </ul>
      </nav>
    </aside>
    <main>
      <form name="form3" method="GET" enctype="multipart/form-data" >
          <fieldset>
              <legend><b>Add Product</b></legend>
         <%
          String pi = request.getParameter("p_id");
          String pn = request.getParameter("p_name"); 
          String pc = request.getParameter("p_cost");
          String pcat = request.getParameter("p_category");
          String path= request.getParameter("image_path");
    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Product where p_id=?");
            ps.setString(1,pi);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            { 
                
               
         %>     
        <label for="p_id">Enter Product id:</label>
        <input type="text" id="product-id" name="p_id" placeholder='product id' class="form-control" required="" value="<%=rs.getString("p_id")%>" ><br>
        <label for="p_name">Enter Product name:</label>
        <input type="text" id="product-name" name="p_name" placeholder='product name'  class="form-control" required=""  value="<%=rs.getString("p_name")%>"><br>
        <label for="p_cost">Enter Product price:</label>
        <input type="text" id="product-price" name="p_cost" placeholder='price'  class="form-control" required=""  value="<%=rs.getString("p_cost")%>"><br>
        <label for="p_category">Choose a category:</label>
        <input type="text" list="l1" name="p_category"  class="form-control" required="" value="<%=rs.getString("p_category")%>">
        <datalist id="l1">
          <option value="Pen">Pen</option>
          <option value="Book">Book</option>
          <option value="Pencil">Pencil</option>
        </datalist><br>
        <label for="image_path">Enter Product image path:</label>
        <input type="text" class="form-control" id="images_path" name="image_path" placeholder="Your Product Image Path [images/Products/<filename>.<extention>]" required=""  value="<%=rs.getString("image_path")%>">[images/Products/filename.extention]<br>
            <center>
                <input type="button" value="Add" onclick="pinsert()"/>
                <input type="button" value="Delete" onclick="pdelete()"/>
                <input type="button" value="Update" onclick="pupdate()"/>
                <input type="button" value="Find" onclick="pfind()"/>
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


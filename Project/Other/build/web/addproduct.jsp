<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
  <link rel="stylesheet" type="text/css" href="style_admin.css">
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
    <%
	/* Checking the user credentials */
	String userName = (String) session.getAttribute("uname");
	String password = (String) session.getAttribute("pass");

	if (userName == null || password == null) {

		response.sendRedirect("admin_validate.jsp?message=Session Expired, Login Again!!");

	}
    %>
  <header>
      <h1>Add Product</h1>
  </header>
  
  <div class="container">
    <aside>
      <nav>
        <ul>
          <li><a href="#">Profile</a></li>
          <li><a href="#">Categories</a></li>
          <li><a href="#">Browse Categories</a></li>
          <li><a href="addproduct.jsp">Add Products</a></li>
          <li><a href="#">View Products</a></li>
          <li><a href="#">New user requests</a></li>
          <li><a href="#">View user</a></li>
        </ul>
      </nav>
    </aside>
    <main>
      <form name="form3" method="POST" enctype="multipart/form-data" >
          <fieldset>
              <legend><b>Add Product</b></legend>
              
        <label for="p_id">Enter Product id:</label>
        <input type="text" id="product-id" name="p_id" placeholder='product id' class="form-control" ><br>
        <label for="p_name">Enter Product name:</label>
        <input type="text" id="product-name" name="p_name" placeholder='product name'  class="form-control" required=""><br>
        <label for="p_cost">Enter Product price:</label>
        <input type="text" id="product-price" name="p_cost" placeholder='price'  class="form-control" required=""><br>
        <label for="p_category">Choose a category:</label>
        <select id="category" name="p_category"  class="form-control" required="">
          <option value="Pen">Pen</option>
          <option value="Book">Book</option>
          <option value="Pencil">Pencil</option>
        </select><br>
        <label for="image_path">Enter Product image path:</label>
        <input type="text" class="form-control" id="images_path" name="image_path" placeholder="Your Product Image Path [images/Products/<filename>.<extention>]" required="">[images/Products/filename.extention]<br>
            <center>
                <input type="button" value="Add Product" onclick="pinsert()"/>
                <input type="button" value="Delete" onclick="pdelete()"/>
                <input type="button" value="Update" onclick="pupdate()"/>
                <input type="button" value="Find" onclick="pfind()"/>
            </center>
          </fieldset>
      </form>
    </main>
  </div>

    </body>
</html>

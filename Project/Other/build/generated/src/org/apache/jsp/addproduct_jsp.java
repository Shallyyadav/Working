package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"style_admin.css\">\n");
      out.write("  <script type=\"text/javascript\">\n");
      out.write("            function pfind()\n");
      out.write("            {\n");
      out.write("                document.form3.action=\"pfind.jsp\";\n");
      out.write("                document.form3.submit();\n");
      out.write("            }\n");
      out.write("            function pupdate()\n");
      out.write("            {\n");
      out.write("                document.form3.action=\"pupdate.jsp\";\n");
      out.write("                document.form3.submit();\n");
      out.write("            }\n");
      out.write("            function pdelete()\n");
      out.write("            {\n");
      out.write("                document.form3.action=\"pdelete.jsp\";\n");
      out.write("                document.form3.submit();\n");
      out.write("            }\n");
      out.write("            function pinsert()\n");
      out.write("            {\n");
      out.write("                document.form3.action=\"product_insert.jsp\";\n");
      out.write("                document.form3.submit();\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

	/* Checking the user credentials */
	String userName = (String) session.getAttribute("uname");
	String password = (String) session.getAttribute("pass");

	if (userName == null || password == null) {

		response.sendRedirect("admin_validate.jsp?message=Session Expired, Login Again!!");

	}
    
      out.write("\n");
      out.write("  <header>\n");
      out.write("      <h1>Add Product</h1>\n");
      out.write("  </header>\n");
      out.write("  \n");
      out.write("  <div class=\"container\">\n");
      out.write("    <aside>\n");
      out.write("      <nav>\n");
      out.write("        <ul>\n");
      out.write("          <li><a href=\"#\">Profile</a></li>\n");
      out.write("          <li><a href=\"#\">Categories</a></li>\n");
      out.write("          <li><a href=\"#\">Browse Categories</a></li>\n");
      out.write("          <li><a href=\"addproduct.jsp\">Add Products</a></li>\n");
      out.write("          <li><a href=\"#\">View Products</a></li>\n");
      out.write("          <li><a href=\"#\">New user requests</a></li>\n");
      out.write("          <li><a href=\"#\">View user</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("    </aside>\n");
      out.write("    <main>\n");
      out.write("      <form name=\"form3\" method=\"POST\" enctype=\"multipart/form-data\" >\n");
      out.write("          <fieldset>\n");
      out.write("              <legend><b>Add Product</b></legend>\n");
      out.write("              \n");
      out.write("        <label for=\"p_id\">Enter Product id:</label>\n");
      out.write("        <input type=\"text\" id=\"product-id\" name=\"p_id\" placeholder='product id' class=\"form-control\" ><br>\n");
      out.write("        <label for=\"p_name\">Enter Product name:</label>\n");
      out.write("        <input type=\"text\" id=\"product-name\" name=\"p_name\" placeholder='product name'  class=\"form-control\" required=\"\"><br>\n");
      out.write("        <label for=\"p_cost\">Enter Product price:</label>\n");
      out.write("        <input type=\"text\" id=\"product-price\" name=\"p_cost\" placeholder='price'  class=\"form-control\" required=\"\"><br>\n");
      out.write("        <label for=\"p_category\">Choose a category:</label>\n");
      out.write("        <select id=\"category\" name=\"p_category\"  class=\"form-control\" required=\"\">\n");
      out.write("          <option value=\"Pen\">Pen</option>\n");
      out.write("          <option value=\"Book\">Book</option>\n");
      out.write("          <option value=\"Pencil\">Pencil</option>\n");
      out.write("        </select><br>\n");
      out.write("        <label for=\"image_path\">Enter Product image path:</label>\n");
      out.write("        <input type=\"text\" class=\"form-control\" id=\"images_path\" name=\"image_path\" placeholder=\"Your Product Image Path [images/Products/<filename>.<extention>]\" required=\"\">[images/Products/filename.extention]<br>\n");
      out.write("            <center>\n");
      out.write("                <input type=\"button\" value=\"Add Product\" onclick=\"pinsert()\"/>\n");
      out.write("                <input type=\"button\" value=\"Delete\" onclick=\"pdelete()\"/>\n");
      out.write("                <input type=\"button\" value=\"Update\" onclick=\"pupdate()\"/>\n");
      out.write("                <input type=\"button\" value=\"Find\" onclick=\"pfind()\"/>\n");
      out.write("            </center>\n");
      out.write("          </fieldset>\n");
      out.write("      </form>\n");
      out.write("    </main>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

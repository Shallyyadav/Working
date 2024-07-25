package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.File;
import java.nio.file.Files;
import java.io.FileInputStream;
import javax.servlet.http.Part;
import java.io.InputStream;
import java.sql.PreparedStatement;
import xyz.Connect;
import java.sql.Connection;

public final class product_005finsert_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add Product</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background: url(\"Images/background.jpg\");\n");
      out.write("                background-size: cover;\n");
      out.write("            }\n");
      out.write("             a { \n");
      out.write("            color: #006600;\n");
      out.write("            font-size: larger;\n");
      out.write("            text-decoration: none; \n");
      out.write("        }\n");
      out.write("        /* On placing mouse over the link */ \n");
      out.write("        a:hover { \n");
      out.write("            color: rgb(128, 105, 255); \n");
      out.write("            font-size: larger;\n");
      out.write("            text-decoration: underline; \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        ");

   
          String pi = request.getParameter("p_id");
          String pn = request.getParameter("p_name"); 
          String pc = request.getParameter("p_cost");
          String pcat = request.getParameter("p_category");
          String path= request.getParameter("image_path");    
    try {
            
            Connection con=new Connect().con;
           
            PreparedStatement ps=con.prepareStatement("insert into Product(p_id, p_name, p_cost,p_category,image_path) values(?,?,?,?,?)");
            ps.setString(1,pi);
            ps.setString(2,pn);
            ps.setString(3,pc);
            ps.setString(4,pcat);
            ps.setString(5,path);

            if(ps.executeUpdate()>0)
            {
                out.println("Product data added successfully");
            }
            else
            {
                out.println("Data does not added");
            }
    }
     catch (Exception e) {

        out.println(e);

    } 
    
        
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <a href=\"admin_page.html\"><b>Admin Panel</b></a>\n");
      out.write("    </center>   \n");
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

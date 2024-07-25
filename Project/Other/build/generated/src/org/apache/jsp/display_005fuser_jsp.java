package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import xyz.Connect;
import java.sql.Connection;

public final class display_005fuser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style_admin.css\">\n");
      out.write("        <title>Display Customers</title>\n");
      out.write("        <style>\n");
      out.write("           main{\n");
      out.write("                background: url(\"Images/background2.jpg\");\n");
      out.write("                background-size: cover;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("   </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("      <h1>View Customers</h1>\n");
      out.write("  </header>\n");
      out.write("  \n");
      out.write("  <div class=\"container\">\n");
      out.write("    <aside>\n");
      out.write("      <nav>\n");
      out.write("        <ul>\n");
      out.write("          <li><a href=\"admin_page.html\">Home</a></li>\n");
      out.write("          <li><a href=\"#\">Profile</a></li>\n");
      out.write("          <li><a href=\"categories.html\">Categories</a></li>\n");
      out.write("          <li><a href=\"cdisplay.jsp\">View Categories</a></li>\n");
      out.write("          <li><a href=\"add_product.html\">Add Products</a></li>\n");
      out.write("          <li><a href=\"pdisplay.jsp\">View Products</a></li>\n");
      out.write("          <li><a href=\"display_user.jsp\">View User</a></li>\n");
      out.write("          <li><a href=\"feedback_display.jsp\">View Feedback</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("    </aside>\n");
      out.write("      <main>\n");
      out.write("          <center>\n");
      out.write("          <table border=\"1\">\n");
      out.write("              <tr>\n");
      out.write("                  <td><b>Username</b></td>\n");
      out.write("                  <td><b>Phone no.</b></td>\n");
      out.write("                  <td><b>Email</b></td>\n");
      out.write("                  <td><b>Address1</b></td>\n");
      out.write("                  <td><b>Address2</b></td>\n");
      out.write("                  <td><b>Pin No.</b></td>\n");
      out.write("                  <td><b>State</b></td>\n");
      out.write("                  <td><b>Country</b></td>\n");
      out.write("                  <td><b>D.O.B</b></td>\n");
      out.write("              </tr>\n");
      out.write("              ");

    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Customer");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            { 
         
      out.write("\n");
      out.write("              <tr>\n");
      out.write("                <td>");
      out.print(rs.getString("username"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("c_phone"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("c_email"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("c_address1"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("c_address2"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("c_pin"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("c_state"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("c_country"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("c_dob"));
      out.write("</td>\n");
      out.write("              </tr>\n");
      out.write("            ");
     
            }

    } catch (Exception e) {

        out.println(e);

    } 
        
      out.write("\n");
      out.write("          </table>\n");
      out.write("          </center>\n");
      out.write("      </main>\n");
      out.write("  </div>\n");
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

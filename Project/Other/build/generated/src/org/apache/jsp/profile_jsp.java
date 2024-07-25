package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Profile Page</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"prstyle.css\">\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("            function display()\n");
      out.write("            {\n");
      out.write("                document.profilr.action=\"profile_display.jsp\";\n");
      out.write("                document.profilr.submit();\n");
      out.write("            }\n");
      out.write("            function update()\n");
      out.write("            {\n");
      out.write("                document.profilr.action=\"profile_update.jsp\";\n");
      out.write("                document.profilr.submit();\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            input[type=\"button\"] {\n");
      out.write("      background-color: #4CAF50;\n");
      out.write("      color: black;\n");
      out.write("      padding: 10px 20px;\n");
      out.write("      border: none;\n");
      out.write("      border-radius: 5px;\n");
      out.write("      cursor: pointer;\n");
      out.write("      margin-top: 20px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("        </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  ");

          Object s =session.getAttribute("Username");
          if(s!=null){
          
      out.write("\n");
      out.write("    <h1 style=\"color:brown; text-align: center;\">Profile Page</h1>\n");
      out.write("    <form name=\"profilr\" method=\"post\" action=\"profile_insert.jsp\">\n");
      out.write("      <div>\n");
      out.write("          <label for=\"name\"> Full Name:</label>\n");
      out.write("          <input type=\"text\" id=\"name\" name=\"name\" >\n");
      out.write("          <label for=\"mobile\">Mobile Number:</label><br>\n");
      out.write("          <input type=\"tel\" id=\"mobile\" name=\"mobile\"><br>\n");
      out.write("          <label for=\"email\">Email:</label><br>\n");
      out.write("          <input type=\"email\" id=\"email\" name=\"email\"><br>\n");
      out.write("          <label for=\"address1\">Address Line 1:</label><br>\n");
      out.write("          <input type=\"text\" id=\"address1\" name=\"address1\"><br>\n");
      out.write("          <label for=\"address2\">Address Line 2:</label><br>\n");
      out.write("          <input type=\"text\" id=\"address2\" name=\"address2\"><br>\n");
      out.write("          <label for=\"postcode\">PostCode:</label><br>\n");
      out.write("          <input type=\"text\" id=\"postcode\" name=\"postcode\"><br>\n");
      out.write("          <label for=\"state\">State:</label><br>\n");
      out.write("          <input type=\"text\" id=\"state\" name=\"state\"><br>\n");
      out.write("          <label for=\"country\">Country:</label><br>\n");
      out.write("          <input type=\"text\" id=\"country\" name=\"country\"><br>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("        <div>\n");
      out.write("          <label for=\"date\">D.O.B:</label><br>\n");
      out.write("          <input type=\"date\" id=\"date\" name=\"date\"><br>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("        <div style=\"text-align: center;\">\n");
      out.write("          <input type=\"submit\" value=\"Save Profile\">\n");
      out.write("          <input type=\"button\" value=\"View Details\" onclick=\"display()\">\n");
      out.write("          <input type=\"button\" value=\"Update Details\" onclick=\"update()\">\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("      </form>\n");
      out.write("    <a href=\"index.html\"><div style=\"text-align: center;\">\n");
      out.write("          <input type=\"submit\" value=\"Home page\">\n");
      out.write("      </div></a>\n");
      out.write("    ");
}else
            response.sendRedirect("error.html");
               
      out.write("\n");
      out.write("</body>\n");
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

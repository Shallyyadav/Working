package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_005fwelcome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("             body{\n");
      out.write("                background: url(\"Images/adminwel.jpg\");\n");
      out.write("                background-size: cover;\n");
      out.write("            }\n");
      out.write("           .home .content\n");
      out.write("{\n");
      out.write("    border: 0px solid;\n");
      out.write("    text-align: center;\n");
      out.write("    width: 60rem;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".home .content h3{\n");
      out.write("    color:var(--black);\n");
      out.write("    font-size: 3rem;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".home .content h3 span\n");
      out.write("{\n");
      out.write("    color: var(--yellow);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".home .content p\n");
      out.write("{\n");
      out.write("    color: var(--black);\n");
      out.write("    font-size: 1.7rem;\n");
      out.write("    padding: 1rem 0;\n");
      out.write("    line-height: 1.8;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       ");

            Object u=session.getAttribute("username");
            if(u!=null)
        
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>\n");
      out.write("            <h1> Welcome to the Admin Panel!! </h1>\n");
      out.write("                <h2> <a href=\"admin_page.html\" class=\"btn\"><b>Enter Now</b></a></h2>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.lang.System.out;
import java.sql.*;
import xyz.Connect;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public final class payment_005finsert_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                background: url(\"Images/background4.jpg\");\n");
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
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        <br<br><br><br><br><br><br><br><br><br><br><br>\n");
      out.write("        \n");

    String un = request.getParameter("name");
    String cp = request.getParameter("mobile");
    String ca1 = request.getParameter("add");
    String ca2 = request.getParameter("add2");
    String cpin = request.getParameter("pin");
    String cs = request.getParameter("state");
    String cc = request.getParameter("country");
    String pm = request.getParameter("method");
    String cn = request.getParameter("card_no"); 
    String em = request.getParameter("exp_month");
    String ey = request.getParameter("exp_year");

    try {
        Connection con = new Connect().con;
        PreparedStatement ps = con.prepareStatement("INSERT INTO ORDER_PURCHASE (USERNAME, C_PHONE, C_ADDRESS1, C_ADDRESS2, C_PIN, C_STATE, C_COUNTRY, PAY_METHOD, CARD_NUMBER, EXP_MONTH, EXP_YEAR, P_NAME, P_QTY, P_PRICE) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            ps.setString(1, un);
            ps.setString(2, cp);
            ps.setString(3, ca1);
            ps.setString(4, ca2);
            ps.setString(5, cpin);
            ps.setString(6, cs);
            ps.setString(7, cc);
            ps.setString(8, pm);
            ps.setString(9, cn);
            ps.setString(10, em);
            ps.setString(11, ey);
           

            // Execute the SQL statement
            ps.executeUpdate();
        
        
        out.println("Thank you for your purchase!!!");

    } catch (Exception e) {
        out.println(e);
    }

      out.write("\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <a href=\"index.html\"><b>Continue Shopping</b></a>\n");
      out.write("    </center>   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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

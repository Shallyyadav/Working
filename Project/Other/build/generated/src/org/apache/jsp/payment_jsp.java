package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.security.Principal;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import xyz.Connect;
import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public final class payment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"pay_style.css\">\n");
      out.write("        <title>Payment</title>\n");
      out.write("        <style>\n");
      out.write("            #cord:checked ~ .cord\n");
      out.write("            {\n");
      out.write("                display:block;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function checkLogin() {\n");
      out.write("            var isLoggedIn = sessionStorage.getItem(\"isLoggedIn\");\n");
      out.write("\n");
      out.write("            if (!isLoggedIn) {\n");
      out.write("                // Redirect to the login page if not logged in\n");
      out.write("                window.location.href = \"signin.html\";\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            sessionStorage.setItem(\"isLoggedIn\", true);   \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function payment_find()\n");
      out.write("            {\n");
      out.write("                document.form6.action=\"payment.jsp\";\n");
      out.write("                document.form6.submit();\n");
      out.write("            }\n");
      out.write("            function payment_insert()\n");
      out.write("            {\n");
      out.write("                document.form6.action=\"payment_insert.jsp\";\n");
      out.write("                document.form6.submit();\n");
      out.write("            }\n");
      out.write("            function payment_update()\n");
      out.write("            {\n");
      out.write("                document.form6.action=\"payment_update.jsp\";\n");
      out.write("                document.form6.submit();\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <header>\n");
      out.write("            \n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"left\">\n");
      out.write("                    <h3>Billing Address</h3> \n");
      out.write("                    ");

                        
            String cn = request.getParameter("name");
          try {

            Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Customer where username=?");
            ps.setString(1,cn);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            { 
                
               
         
      out.write("\n");
      out.write("                    <form name=\"form6\" method=\"POST\">\n");
      out.write("                        <label for=\"name\">Name(Username)</label>\n");
      out.write("                        <input type=\"text\" name=\"name\" placeholder=\"Enter name\" required=\"\" value=\"");
      out.print( rs.getString("username"));
      out.write("\"/>\n");
      out.write("                        <label for=\"mobile\">Mobile Number</label>\n");
      out.write("                        <input type=\"text\" name=\"mobile\" placeholder=\"Enter mobile no.\" required=\"\"value=\"");
      out.print(rs.getString("c_phone"));
      out.write("\"/>\n");
      out.write("                        <label for=\"add\">Address1</label>\n");
      out.write("                        <input type=\"text\" name=\"add\" placeholder=\"Enter flat,house no., building \" required=\"\" value=\"");
      out.print(rs.getString("c_address1"));
      out.write("\"/>\n");
      out.write("                        <label for=\"add2\">Address2</label>\n");
      out.write("                        <input type=\"text\" name=\"add2\" placeholder=\"Enter area,street,sector,village\" required=\"\" value=\"");
      out.print(rs.getString("c_address2"));
      out.write("\"/>\n");
      out.write("                        <label for=\"pin\">Pin Code</label>\n");
      out.write("                            <input type=\"number\" name=\"pin\" placeholder=\"Pin Code\" required=\"\" value=\"");
      out.print(rs.getString("c_pin"));
      out.write("\"/>\n");
      out.write("                        <label for=\"state\">State</label><br>\n");
      out.write("                        <input type=\"text\" name=\"state\" list=\"l1\" placeholder=\"Enter state\" value=\"");
      out.print(rs.getString("c_state"));
      out.write("\"/>\n");
      out.write("                        <datalist id=\"l1\">\n");
      out.write("                            <option>Uttar Pradesh</option>\n");
      out.write("                            <option>Bihar</option>\n");
      out.write("                            <option>Madhya Pradesh</option>\n");
      out.write("                            <option>Rajasthan</option>\n");
      out.write("                            <option>Gujarat</option>\n");
      out.write("                        </datalist>\n");
      out.write("                        <label for=\"country\">Country</label>\n");
      out.write("                        <input type=\"text\" name=\"country\" placeholder=\"Enter country\" required=\"\" value=\"");
      out.print(rs.getString("c_country"));
      out.write("\"/>\n");
      out.write("                        <input type=\"button\"  value=\"Details\" onclick=\"payment_find()\">\n");
      out.write("                        <input type=\"button\"  value=\"Update\" onclick=\"payment_update()\">\n");
      out.write("                    ");
  
             
            }
            else
                out.println("Incorrect Username");

    } catch (Exception e) {

        out.println(e);

    } 
          
        
      out.write("\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("                <div class=\"right\">\n");
      out.write("                    <h3>Payment</h3>\n");
      out.write("                        <label for=\"method\">Payment Method</label><br>\n");
      out.write("                        <input type=\"radio\" name=\"method\" id=\"cod\" value=\"Cash on delivery\">Cash on delivery\n");
      out.write("                        <input type=\"radio\" name=\"method\" id=\"cord\" value=\"Credit or Debit Card\">Credit/Debit Card\n");
      out.write("                        <br>&nbsp;\n");
      out.write("                        <div class=\"cord\" hidden>\n");
      out.write("                            <label for=\"card_no\">Credit card Number</label>\n");
      out.write("                            <input type=\"number\" name=\"card_no\" placeholder=\"Enter card number\" required=\"\"/><br><br>\n");
      out.write("                            <label for=\"exp_month\">Exp Month</label>\n");
      out.write("                            <input type=\"text\" name=\"exp_month\" placeholder=\"Enter month\" required=\"\"/><br><br>\n");
      out.write("                            <label for=\"exp_year\">Exp Year</label>\n");
      out.write("                            <input type=\"text\" name=\"exp_year\" list=\"l2\" placeholder=\"Enter year\"/><br><br>\n");
      out.write("                            <datalist id=\"l2\">\n");
      out.write("                                <option>2022</option>\n");
      out.write("                                <option>2023</option>\n");
      out.write("                                <option>2024</option>\n");
      out.write("                                <option>2025</option>\n");
      out.write("                                <option>2026</option>\n");
      out.write("                            </datalist>\n");
      out.write("                            <label for=\"cvv\">CVV</label>\n");
      out.write("                            <input type=\"password\" name=\"cvv\" placeholder=\"CVV\" required=\"\"/>\n");
      out.write("                            </div>\n");
      out.write("                        <input type=\"button\" value=\"Proceed to Checkout\" onclick=\"payment_insert()\">\n");
      out.write("                    </form>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
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

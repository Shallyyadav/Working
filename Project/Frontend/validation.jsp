<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="xyz.Connect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection con = new Connect().con;
    String un = request.getParameter("uname");
    String up = request.getParameter("pass");
    PreparedStatement ps = con.prepareStatement("select * from LoginT where Username=? and Password=?");
    ps.setString(1, un);
    ps.setString(2, up);
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {   
        session.setAttribute("Username", rs.getString(1));
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("error.html");
    }
%>

<%-- 
    Document   : A_logout
    Created on : Mar 1, 2024, 12:11:39 AM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("username");
            response.sendRedirect("adminsignin.html");
        %>
    </body>
</html>


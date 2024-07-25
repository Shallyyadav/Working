<%-- 
    Document   : logout
    Created on : Mar 1, 2024, 12:10:31 AM
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
            session.invalidate();
            response.sendRedirect(request.getContextPath() + "/signin.html");
        %>
    </body>
</html>

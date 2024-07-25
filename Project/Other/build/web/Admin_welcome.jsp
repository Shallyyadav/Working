<%-- 
    Document   : Admin_welcome
    Created on : Feb 17, 2024, 10:09:03 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
             body{
                background: url("Images/adminwel.jpg");
                background-size: cover;
            }
           .home .content
{
    border: 0px solid;
    text-align: center;
    width: 60rem;
}

.home .content h3{
    color:var(--black);
    font-size: 3rem;
}

.home .content h3 span
{
    color: var(--yellow);
}

.home .content p
{
    color: var(--black);
    font-size: 1.7rem;
    padding: 1rem 0;
    line-height: 1.8;
}
        </style>
    </head>
    <body>
       <%
            Object u=session.getAttribute("username");
            if(u!=null)
        %>
    <center>
        <div class="content">
            <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
            <h1> Welcome to the Admin Panel!! </h1>
                <h2> <a href="admin_page.html" class="btn"><b>Enter Now</b></a></h2>
        </div>
    </center>
    </body>
</html>


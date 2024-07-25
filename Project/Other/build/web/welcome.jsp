<%-- 
    Document   : welcome.jsp
    Created on : Jan 28, 2024, 10:03:47 AM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
             body{
                background: url("Images/welcomebg.jpg");
                background-size: cover;
            }
           .home .content
{
    border: 0px solid;
    text-align: center;
    width: 60rem;
}

.home .content h3{
    color:  var(--black);
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
                <h1> Write Your Story <br><span>With Our Stationery Glory!</span> </h1>
                <h3><i>Stationary that inspires you to work.</i>
                </h3>
                <!--For button we use anchor tag a-->
                <h2> <a href="index.html" class="btn"><b>Shop Now</b></a></h2>
        </div>
    </center>
    </body>
</html>

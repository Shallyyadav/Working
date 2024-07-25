<%-- 
    Document   : registration
    Created on : Feb 15, 2024, 10:00:59 PM
    Author     : shrey
--%>

<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="xyz.Connect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background: url("Images/welcome5.jpg");
                background-size: cover;
            }
             a { 
            color: #006600;
            font-size: larger;
            text-decoration: none; 
        } 
  
        
  
        /* On placing mouse over the link */ 
        a:hover { 
            color: rgb(128, 105, 255); 
            font-size: larger;
            text-decoration: underline; 
        } 
        
        </style>
    </head>
    <body>
        <center>
        <br>
        <br>
        <%
          String un=request.getParameter("username");
          String up=request.getParameter("password"); 
          String e=request.getParameter("email");
    try {

         Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("INSERT INTO LoginT(Username,Password,Email) VALUES(?, ?, ?)");
            ps.setString(1,un);
            ps.setString(2,up);
            ps.setString(3,e);
            if(ps.executeUpdate()>0)
            {   
                session.setAttribute("username", un);
                out.println("You have Registered Successfully!!Please <a href='signin.html'>Login</a> to Continue");
            }

    } catch (Exception ex) {

        out.println(ex);

    } 
           


// List of recipients
String[] recipients = request.getParameterValues("email");

Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host","smtp.gmail.com" );
props.put("mail.smtp.port", "587");

Session emailsession = Session.getInstance(props,
    new javax.mail.Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication( "penpaper1602@gmail.com","tessalziygcgyswi");
        }
    });

try {
        for (String recipient : recipients) {
        MimeMessage message = new MimeMessage(emailsession);
        message.setFrom(new InternetAddress("shreya28it@gmail.com"));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
        message.setSubject("Confirmation Mail");
        message.setText("Thank you for signing up on Pen&Paper!!");

        Transport.send(message);
    }
    out.println("\n\nEmails sent successfully.");
} catch (MessagingException mex) {
    out.println("Error sending emails: " + mex.getMessage());
}
            
        %>
        <br>
        <br>
        
    </center>
    </body>
</html>

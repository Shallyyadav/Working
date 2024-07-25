<%@page import="java.sql.ResultSet"%>
<%@page import="xyz.Connect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link rel="stylesheet" href="prstyle.css">
     <script type="text/javascript">
            
            function display()
            {
                document.profilr.action="profile_display.jsp";
                document.profilr.submit();
            }
            function update()
            {
                document.profilr.action="profile_update.jsp";
                document.profilr.submit();
            }
        </script>
        <style>
            input[type="button"] {
      background-color: #4CAF50;
      color: black;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 20px;
    }
    
        </style>
</head>
<body>
  
    <h1 style="color:brown; text-align: center;">Profile Page</h1>
    <%
            String cn = request.getParameter("name");
          try {

            Connection con=new Connect().con;
  
            PreparedStatement ps=con.prepareStatement("select * from Customer where username=?");
            ps.setString(1,cn);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            { 
                
               
         %>
        
    <form name="profilr" method="post" action="profile_insert.jsp">
      <div>
          <label for="name"> Full Name:</label>
          <input type="text" id="name" name="name" value="<%=rs.getString("username")%>" >
          <label for="mobile">Mobile Number:</label><br>
          <input type="tel" id="mobile" name="mobile" value="<%=rs.getString("c_phone")%>"><br>
          <label for="email">Email:</label><br>
          <input type="email" id="email" name="email" value="<%=rs.getString("c_email")%>"><br>
          <label for="address1">Address Line 1:</label><br>
          <input type="text" id="address1" name="address1" value="<%=rs.getString("c_address1")%>"><br>
          <label for="address2">Address Line 2:</label><br>
          <input type="text" id="address2" name="address2" value="<%=rs.getString("c_address2")%>"><br>
          <label for="postcode">PostCode:</label><br>
          <input type="text" id="postcode" name="postcode" value="<%=rs.getString("c_pin")%>"><br>
          <label for="state">State:</label><br>
          <input type="text" id="state" name="state" value="<%=rs.getString("c_state")%>"><br>
          <label for="country">Country:</label><br>
          <input type="text" id="country" name="country" value="<%=rs.getString("c_country")%>"><br>
          
        </div>
        <div>
          <label for="date">D.O.B:</label><br>
          <input type="date" id="date" name="date" value="<%=rs.getString("c_dob")%>"><br>
        </div>
       
        <div style="text-align: center;">
          <input type="submit" value="Save Profile">
          <input type="button" value="View Details" onclick="display()">
          <input type="button" value="Update Details" onclick="update()">
        </div>
        <%  
             
            }
            else
                out.println("Incorrect Product Id");

    } catch (Exception e) {

        out.println(e);

    } 
        %>
      </form>
    <a href="index.html"><div style="text-align: center;">
          <input type="submit" value="Home page">
      </div></a>
</body>
</html>
<%-- 
    Document   : New_customer
    Created on : Sep 4, 2017, 9:15:25 AM
    Author     : hscog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>
<html>
    <head>
        <title>Titan Online Banking Application</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="Login.html">Login</a></li>
            <li><a href="New_customer.jsp">New Customer</a></li>
            <li><a href="Account_activity.html">Account Activity</a></li>
        </ul> 
        <div class="form" >
            <div>New Customers please fill out the information:<br></div>
        
            <form action="NewCustomerServlet1"  method="post">
                <br>First name:<br>
                <input type="text" name="firstname"><br>
                <br>Last name:<br>
                <input type="text" name="lastname">
                 <br><br>Phone:<br>
                <input type="text" name="phone"><br>
                <br>Address:<br>
                <input type="text" name="address">
                <br><br>City:<br>
                <input type="text" name="city"><br>
                <br>State:<br>
                <input type="text" name="state">
                <br><br>Zip code:<br>
                <input type="text" name="zipcode"><br>
                <br>Email:<br>
                <input type="email" name="email">
                <input type="submit"  name="submit" value="Submit">
             </form> 
        </div>
     
         
    </body>
</html>
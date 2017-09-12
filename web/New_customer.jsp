<%-- 
    Document   : New_customer
    Created on : Sep 4, 2017, 9:15:25 AM
    Author     : hscog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Titan Online Banking Application</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header>
            <div class ="container">
                <div>
                    <div id="branding"> 
                        <h1>Titan Online Banking Application</h1>
                        <c:if test="${message != null}">
                            <p><i>${message}</i></p>
                        </c:if>
                    </div>
                    <nav>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="Login.html">Login</a></li>
                            <li><a href="New_customer.jsp">New Customer</a></li>
                            <li><a href="Account_activity.html">Account Activity</a></li>
                        </ul> 
                    </nav>
                </div>
            </div>
        </header>
        <div class="container">
            <h3>New Customers please fill out the information:</h3>
            <div id="newCustForm">
                <form action="NewCustomerServlet1"  method="post">
                    <input type="hidden" name ="action" value="add">
                    First name:<br>
                    <input type="text" name="firstname">
                    <br>Last name:<br>
                    <input type="text" name="lastname">
                    <br>Phone:<br>
                    <input type="text" name="phone">
                    <br>Address:<br>
                    <input type="text" name="address">
                    <br>City:<br>
                    <input type="text" name="city">
                    <br>State:<br>
                    <input type="text" name="state" >
                    <br>Zip code:<br>
                    <input type="text" name="zipcode" >
                    <br>Email:<br>
                    <input type="email" name="email" >
                    <input type="submit" value="Submit">
                </form> 
            </div>
           
        </div>




    </body>
</html>
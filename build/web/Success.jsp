<%-- 
    Document   : Success
    Created on : Sep 19, 2017, 8:59:44 PM
    Author     : hscog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.html" %>


            <h1>Titan Online Banking Application</h1>
     
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="Login.jsp">Login</a></li>
                <li><a href="New_customer.jsp">New Customer</a></li>
                <li><a href="Account_activity.jsp">Account Activity</a></li>
            </ul> 
        </nav>
            <h3>Here is the information you entered:</h3>

<label>Email:</label>
<span>${user.email}</span><br>
<label>First Name:</label>
<span>${user.firstName}</span><br>
<label>Last Name:</label>
<span>${user.lastName}</span><br>
<label>address:</label>
<span>${user.address}</span><br>
<label>City:</label>
<span>${user.city}</span><br>
<label>State:</label>
<span>${user.state}</span><br>
<label>Zip Code:</label>
<span>${user.zipcode}</span><br>
<label>Username:</label>
<span>${user.username}</span><br>
<label>Password:</label>
<span>${user.password}</span><br>
<%@ include file="/footer.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.html" %>


<h1>Titan Online Banking Application</h1>
<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>

<nav>
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="Login.jsp">Login</a></li>
        <li><a href="New_customer.jsp">New Customer</a></li>
        <li><a href="Account_activity.jsp">Account Activity</a></li>
    </ul> 
</nav>

<h3>New Customers please fill out the information:</h3>

<form action="NewCustomerServlet1"  method="post">
    <input type="hidden" name ="action" value="add">
    First name:<br>
    <input type="text" name="firstname" value="${user.firstName}">
 <br>Last name:<br>
    <input type="text" name="lastname" value="${user.lastName}">
    <br>Phone:<br>
    <input type="text" name="phone" value="${user.phone}">
    <br>Address:<br>
    <input type= "text" name="address" value="${user.address}">
    <br>City:<br>
    <input type="text" name="city" value="${user.city}" >
    <br>State:<br>
    <input type="text" name="state" value="${user.state}" >
    <br>Zip code:<br>
    <input type="text" name="zipcode" value="${user.zipcode}" >
    <br>Email:<br>
    <input type="email" name="email"  value="${user.email}">
    <input type="submit" value="Submit">
</form> 
<%@ include file="/footer.jsp" %>
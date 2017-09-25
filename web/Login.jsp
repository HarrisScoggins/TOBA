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

<h3>Please fill out information to log in:</h3>
<form action="LoginServlet1" method="post">
    <input type="hidden" name="action" value="add">
    Username:<br>
    <input type="text" name="username" ><br>
    Password:<br>
    <input type="password" name="password" >
    <input type="submit" value="Submit"><br><br>

</form>
<form action="LoginServlet1" method="post">
    <input type="hidden" name="action" value="reset">
    <input type="submit"  value="Reset Password"> 
</form>
<%@ include file="/footer.jsp" %>
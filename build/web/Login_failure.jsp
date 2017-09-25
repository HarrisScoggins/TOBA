<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.html" %>

<div>Login was incorrect</div>
<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>
<ul>
    <li><a href="index.jsp">Home</a></li>
    <li><a href="Login.jsp">Login</a></li>
    <li><a href="New_customer.jsp">New Customer</a></li>
    <li><a href="Account_activity.jsp">Account Activity</a></li>
</ul> 


<%@ include file="/footer.jsp" %>
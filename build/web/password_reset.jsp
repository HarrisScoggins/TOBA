<%-- 
    Document   : password_reset
    Created on : Sep 13, 2017, 9:50:49 AM
    Author     : hscog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.html" %>
<!DOCTYPE >
    <div class ="container">
               
                    <div id="branding"> 
        <h1>reset</h1>
</div>
  
   <form action = "password_reset_servlet" method = "post">
       <input type="hidden" name="action" value="add">
         Password: <input type = "text" name = "password1">
         <br />
         New Password: <input type = "text" name = "password2" />
         <input type = "submit" value = "Submit" />
                    
                </div>
     <%@ include file="/footer.jsp" %>
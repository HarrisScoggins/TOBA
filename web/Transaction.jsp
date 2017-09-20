
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.html" %>
    
        
                <c:choose>
                    <c:when test="${user != null}">
                        <p>Hello ${user.lastname} ${user.lastname}</p>
                    </c:when>
                    <c:otherwise>
                        <p>Not logged in</p>
                    </c:otherwise>
                </c:choose>
                        <c:if test="${user != null}">
                            <p>hello ${user.lastName} ${user.firstName}</p>
                        </c:if>
                    
                    <nav>
                        <ul>
                           <li><a href="index.jsp">Home</a></li>
                            <li><a href="Login.jsp">Login</a></li>
                            <li><a href="New_customer.jsp">New Customer</a></li>
                            <li><a href="Account_activity.jsp">Account Activity</a></li>
                        </ul> 
                    </nav>
     
<%@ include file="/footer.jsp" %>
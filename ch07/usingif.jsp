<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <c:if test="${4>2}" var="result" >
        <c:out value="${'4���T��2�j'}" />    
    </c:if>
    
    <c:if test="${4<2}" var="result" >
        <c:out value="${'4���T��2�p'}" />    
    </c:if>
    
    </body>
</html>

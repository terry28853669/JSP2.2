<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head><title>�ܽdif����var�ݩ�</title></head>
    <body>
    
    <c:if test="${4>2}" var="result"  />    
    
    <c:if test="${result==true}"  >
        <c:out value="${'4���T��2�j'}" />   
    </c:if>
    

 
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head><title>�ܽdchoose</title></head>
    <body>
    
    <c:choose>
    <c:when  test="${1 > 2}" >
        ${"�ƭ� 1 �j�� 2 !!"}     
    </c:when>
    
    <c:otherwise>
        ${"�ƭ� 1 �p�� 2 !!"}           
      
    </c:otherwise>    
    </c:choose>

    </body>
</html>

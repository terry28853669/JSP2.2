<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>�ܽd forTokens ����</title></head>
    <body>    
   
    <c:out value="��l�r��G JavaServer Pages Standard Tag Library"  />
    <br>
    <c:out value="�ѪR�r��G" />
    <c:forTokens var="theItem" items="JavaServer Pages Standard Tag Library" delims=" " >
    
        ${theItem}${"-"}
    
    </c:forTokens>
       
    </body>
</html>

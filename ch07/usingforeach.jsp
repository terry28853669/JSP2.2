<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>�ܽdforEach</title></head>
    <body>
    <c:out value="���U�C�X1~10�����"/> <br>
    <c:forEach var="theItem"      begin="1"   end="10" >
      
        ${theItem} ${","} 
    
    </c:forEach>
     
    <br><br>
    <c:out value="���U�C�X1~10���_��"/> <br>
    <c:forEach var="theItemO"      begin="1"   end="10"  step="2" >
      
        ${theItemO} ${","} 
    
     </c:forEach>
     
    </body>
</html>

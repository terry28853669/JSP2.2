<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
    <head><title>�ܽd�r���^��</title></head>
    <body>

    �r��:The JSTL functions<br>
    ���� 4~8 ���l�r��(fn:substring)�G
    ${fn:substring("The JSTL functions",4,8)}<br>
    JSTL���᪺�l�r��(fn:substringAfter)�G
    ${fn:substringAfter("The JSTL functions ","JSTL")}<br>
    JSTL���e���l�r��(fn:substringBefore)�G
    ${fn:substringBefore("The JSTL functions ","JSTL")}<br>    
  
    </body>
</html>

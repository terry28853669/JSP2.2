<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>���ʦr�ꤺ�e</title></head>
    <body>
    �r��:The JSTL functions<br>
    �ഫ�p�g(fn:toLowerCase)�G
    ${fn:toLowerCase("The JSTL functions ")}<br>
    �ഫ�j�g(fn:toUpperCase)�G
    ${fn:toUpperCase("The JSTL functions ")}<br>
    
    ���λP���X�r��(fn:split/fn:join)
    <c:set var="splitString" value='${fn:split("The JSTL functions "," ")}' />
    ${fn:join(splitString,"-")}<br>
    
    �m��JSTL��Java(fn:replace)�G
    ${fn:replace("The JSTL functions ","JSTL","Java")}<br>
    
    </body>
</html>

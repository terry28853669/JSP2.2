<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>JSP Page</title></head>
    <body>       

    ���ഫ�r��G<br><The JSTL functions>
    �ഫ����r��(fn:escapeXml)�G
    ${fn:escapeXml("<The JSTL functions>")}<br>   
    
    ���X�������(fn:length)�G<br>
    <c:set var="splitString" value='${fn:split("The JSTL functions "," ")}' />
    �}�CsplitString�G${fn:length(splitString)}<br>
    �r��The JSTL functions�G${fn:length("The JSTL functions ")}<br>
    
    </body>
</html>

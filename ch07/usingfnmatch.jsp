<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
    <head><title>�d�r����</title></head>
    <body>
    �r��:The JSTL functions<br>
    ���r��GJSTL(fn:contains)-
    ${fn:contains("The JSTL functions ","JSTL")}<br>
    ���r��Gjstl(fn:contains)-
    ${fn:contains("The JSTL functions ","jstl")}<br>
    ���r��Gjstl(fn:containsIgnoreCase)-
    ${fn:containsIgnoreCase("The JSTL functions ","jstl")}<br><br>
    
    �HThe���r���}�l(fn:startsWith)�G
    ${fn:startsWith("The JSTL functions ","The")}<br>
    �Hfunctions���r���@����(fn:endsWith)�G
    ${fn:endsWith("The JSTL functions ","functions ")}<br><br>
  
    �l�r��JSTL�}�l�����ޭ�(fn:indexOf)�G
    ${fn:indexOf("The JSTL functions ","JSTL")}<br>    
    
    </body>
</html>

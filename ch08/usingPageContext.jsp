<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ޥ� pageContext</title></head>
    <body>
    �ШDURL:${pageContext.request.requestURL}<br>
    �������|:${pageContext.request.contextPath}<br>
    
    �q�T��w�G${pageContext.request.protocol}<br>
    
    �ϥΪ̦W�١G${pageContext.request.remoteUser} <br>
    �ϥΪ̦�}�G${pageContext.request.remoteAddr}<br>
    
   
    session ID�G${pageContext.session.id}<br>    
    </body>
</html>

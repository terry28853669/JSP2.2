<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ܽdinclude�ʧ@����</title></head>
    <body>
    <br>
    <jsp:include page = "JSPIncludeFile.jsp" flush = "true">
    <jsp:param name = "name" value = "Tim"/>
    <jsp:param name = "age" value = "45"/>
    </jsp:include>
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.util.*,java.text.*"%>
<html>
    <head><title>���ܤ���ɶ�����X�榡</title></head>
    <body>
    �z�n�A�{�b�ɶ����G<br>
    <%
        Date date = new Date();
        Locale locale = new Locale("zh","TW","");     
        DateFormat type =DateFormat.getDateTimeInstance(DateFormat.LONG,DateFormat.LONG,locale.TAIWAN);
        out.println(type.format(date));
    %>
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�r�����覡</title></head>
    <body>
    <%
        String str1 = "I like milk!";
        String str2 = "I like strawberry!";
        out.println("<b>str1�G" + str1 + "<br></b>");
        out.println("<b>str2�G" + str2 + "<br><br></b>");

        out.println("str1�����סG" + str1.length() + "<br>");
        String msg = str1.equals(str2) ? "�O":"�_";
        out.println("str1�P str2 �O�_�۵��G"+ msg + "<br>");

        if(str1.compareTo(str2) > 0)
            out.println("str1 �j�� str2");
        else if(str1.compareTo(str2) == 0)
            out.println("str1 ���� str2");
        else
            out.println("str1 �p�� str2<br>");

        msg = str1.startsWith("I like") ? "�O":"�_";
        out.println("str1 �O�_�H I like �}�Y�G" + msg + "<br>");
        msg = str1.endsWith("strawberry") ? "�O":"�_";
        out.println("str1 �O�_�H strawberry �����G" + msg + "<br>");
        msg = str1.regionMatches(true,2,str2,2,4) ? "�O":"�_";
        out.println("str1 �P str2 ���ަ�m 2 " +
            "�}�l�� 4 �Ӧr���Ҳզ��������r��	22 �O�_�۵��G" + msg);
        

    %>

    </body>
</html>

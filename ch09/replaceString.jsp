<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�r�ꤺ�e�m��</title></head>
    <body>
    <%
        String str1 = "     I Like Milk!";
        out.println("��r��@�@�@�@�@�@�@�@�G" + str1 + "<br>");
        out.println("��r��r���ơ@�@�@�@�@�G" + str1.length() + "<p>");
        String str2 = str1.concat("And Strawberry!");
        out.println("�s���䥦�r��᪺�s�r��G" + str2 + "<br>");
        String str3 = str1.toLowerCase();
        out.println("�Ҧ��r���ഫ���p�g�@�@�G" + str3 + "<br>");
        String str4 = str1.toUpperCase();
        out.println("�Ҧ��r���ഫ���j�g�@�@�G" + str4 + "<br>");
        String str5 = str1.trim();
        out.println("�h���ťզr���᪺�r���ơG" + str5.length());
    %>
    </body>
</html>

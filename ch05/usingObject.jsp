<%@page import="java.lang.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�B�Ϊ���</title></head>
    <body>
        <%
            double dValue ;
            int intValue ;
            dValue = Math.pow(2,5) ;
            intValue = Math.abs(-12345) ;
            out.println("2 �� 5 ���赥�� " + dValue + "<br>") ;
            out.println("-12345 ������ȵ��� " + intValue + "<br>") ;
        %>
    </body>
</html>

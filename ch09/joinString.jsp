<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�X�֦r��</title></head>
    <body>
    <%
        String strFirstString = "JSP" ;
        String strDotString = "�A" ;
        String strSecondString = "Java ��Web���x���ʦ������޳N!!" ;

        String strJoin = strFirstString + strDotString + strSecondString ;
        out.println("<br>strFirstString : " + strFirstString ) ;
        out.println("<br>strDotString : "+strDotString) ;
        out.println("<br>strSecondString : "+strSecondString) ;
        out.println("<br>strJoin : ") ;
        out.println( strJoin) ;
    %>
    </body>
</html>

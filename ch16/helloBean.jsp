<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<jsp:useBean id='objSayHello' scope='application' class='bean.SayHello' />
<html>
    <head><title>�ܽd JavaBean</title></head>
    <body>
   
    <%request.setCharacterEncoding("Big5");%>
    <%
        String strMessage;
        strMessage = objSayHello.SayHello("�w��Ө�JavaBean���Ĥ@�ӽd��") ;
        out.println(strMessage) ;
     %>

    </body>
</html>

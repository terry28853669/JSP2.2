<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

    <%!
        String strMessage ;
    %>

    <%!
        void sayHello(){
        strMessage = "�s�R��Ū�̱z�n :  "  ;
        strMessage += "<br>"  ;
        strMessage += "�w��ϥ�JSP�ʺA�����s�޳N !!"  ;
        strMessage += "<br>"  ;
        strMessage += "��z�����Ѥ��Ҧ����`���ǲ߽ҵ{�A"  ;
        strMessage += "<br>"  ;
        strMessage += "�z�N��Ƽ��gJSP��������O "  ;
        }
    %>

<html>
    <head><title>�B�Ψ禡</title></head>
    <body>    
    <%
        out.println("�Ĥ@���I�s SayHello �G<BR>") ;
        sayHello() ;
        out.println(strMessage + "<BR>") ;
    %>

    <%
        out.println("<BR>") ;
        strMessage = "strMesszge �O�@�ӥ����ܼ� " ;
        out.println(strMessage + "<BR>") ;
    %>

    <%
        out.println("<BR>") ;
        out.println("�ĤG���I�s SayHello �G<br>") ;
        sayHello() ;
        out.println(strMessage) ;
    %>
    </body>
</html>

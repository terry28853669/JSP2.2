<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

    <%!
        String strMessage ;
    %>
    <%!
        void SayHello(String strName){
            strMessage = "�s�R�� " + strName + " �z�n :  "  ;
            strMessage += "<br>"  ;
            strMessage += "�w��ϥ�JSP�ʺA�����s�޳N !!"  ;
            strMessage += "<br>"  ;
            strMessage += "��z�����Ѥ��Ҧ����`���ǲ߽ҵ{�A"  ;
            strMessage += "<br>"  ;
            strMessage += "�z�N��Ƽ��gJSP��������O "  ;
        }
    %>

<html>
    <head><title>�ǻ��Ѽ�</title></head>
    <body>

    <%
        SayHello("���P��") ;
        out.println(strMessage + "<BR>") ;
    %>
    
    </body>
</html>

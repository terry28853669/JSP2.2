<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

<%!
    String sayHello(String strName){
        String strMessage ;
        strMessage = "�s�R�� " + strName + " �z�n :  "  ;
        strMessage += "<br>"  ;
        strMessage += "�w��ϥ�JSP�ʺA�����s�޳N !!"  ;
        strMessage += "<br>"  ;
        strMessage += "��z�����Ѥ��Ҧ����`���ǲ߽ҵ{�A"  ;
        strMessage += "<br>"  ;
        strMessage += "�z�N��Ƽ��gJSP��������O "  ;
        return strMessage    ;
        strMessage += "unreachable statement"  ;
       
    }
%>

<html>
    <head><title>�禡�^�ǭ�</title></head>
    <body>
    <%
        String strReturn ;
        strReturn = sayHello("���P��")  ;
        out.println(strReturn + "<BR>") ;
    %>
    </body>
</html>

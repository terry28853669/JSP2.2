<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ܽdcontinue</title></head>
    <body>
    <%
        int i=1  ; 
        for(i=1;i<=100;i++){
            if(i==42){               
                out.println("i�ȥثe����42�A�����䤽���ƴ���<br> ");
                continue ; 
            }
            if((i%3==0)&&(i%7==0)){
                out.println(i+"�O3��7��������<br>");
            }
        }
    %>
    </body>
</html>
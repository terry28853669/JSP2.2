<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ܽd for �j��</title></head>
    <body>
	<%
            int i;
            for(i=1;i<=100;i++){
                
             if((i%3==0)&&(i%7==0))
                out.println(i+"�O3��7��������<br>");
            }
	%>
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>示範continue</title></head>
    <body>
    <%
        int i=1  ; 
        for(i=1;i<=100;i++){
            if(i==42){               
                out.println("i值目前等於42，忽略其公倍數測試<br> ");
                continue ; 
            }
            if((i%3==0)&&(i%7==0)){
                out.println(i+"是3及7的公倍數<br>");
            }
        }
    %>
    </body>
</html>
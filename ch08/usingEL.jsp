<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ϥ� EL</title></head>
    <body>
   <%
        application.setAttribute("firstNumber","200") ; 
        application.setAttribute("secondNumber","400") ;      
    %>
    
    ��X�ƭ�100�G${100}<br>
    ��X�ܼ�firstNumber�G${firstNumber}<br>      
    ��X�ܼ�firstNumber�G${secondNumber}<br>   
    ��X�ܼ�firstNumber+firstNumber�G${secondNumber+firstNumber}<br>  
    
    ��X�r��firstNumber�G${'firstNumber'}<br>  
    ��X�r��firstNumber�G${'secondNumber'}<br>   
    
    </body>
</html>

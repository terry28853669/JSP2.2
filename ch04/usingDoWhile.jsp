<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>    
    <head><title>do-while �j��</title></head>
    <body>
    
	<%
	 int i=4;
	 do {
	  out.println("i = " + i +
	           "<br> i<3�� ? => " + (i<3) + "<br><hr>");
	  i++;
	 }while(i<3);
	%> 
	
    </body>
</html>

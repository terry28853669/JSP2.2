<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ܽdbreak</title></head>
    <body>

	<%
        int i;
	for(i=1;i<=100;i++){
            
	   if((i%3==0)&&(i%7==0))
	     out.println(i+"�O3��7��������<BR>");
	   if(i==50){
	     out.println("<BR> ");
	     out.println("i�ȥثe����50�A���_�j�骺����!!<BR> ");
	     break  ;
	   }
	}
	out.println("<BR> ");
	out.println("for�j�鵲��!!");
	%>

    </body>
</html>

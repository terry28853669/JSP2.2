<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

<%
    if(session.getAttribute("access") != "y" ){
        out.println("�z�L�v�s���������A�ζW�L�s�������@ !!") ;           
    }else{        
        out.println("�n�J���\ <br>") ; 
        out.println("<b>�n�J�̡G" + 
                session.getAttribute("accessid") + "!!</b>") ; 
    }
%>
<html>
    <head><title>�n�J�s����</title></head>
    <body>
    <form method="post" action="logout.jsp">
        <% if(session.getAttribute("access") == "y" ) {   %>
                 <input type="submit" value="�n�X" name="logout"></td>
        <%}else{%>        
        <a href="logina.jsp"> �n�J</a>
        <%}%>
    </form>
    </body>
</html>

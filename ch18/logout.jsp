<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�n�X</title></head>
    <body>
    <%  
        if(session.getAttribute("access")=="y"  ) {
            session.invalidate() ;
            out.println("�z�w���\�n�X�@!! <br>") ; 
            out.println("<a href='logina.jsp'> �n�J</a>") ; 
        }else{            
            response.sendRedirect("logina.jsp") ; 
        }
     %>
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>JSP Page</title></head>
    <body>

    <%request.setCharacterEncoding("Big5")  ;%>
    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
    %>

    Hi , <%=name%> �z�n : <br>   <br>
    �z��J���ӤH��Ʀp�U<p>
    �m�W�G<%=name%><br>
    E-mail�G<%=email%><br>
    �q�ܡG<%=tel%>

    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
    <head><title>JSP Page</title></head>
    <body>

    <fmt:requestEncoding  value="Big5"   />
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

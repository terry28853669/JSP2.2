<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page  errorPage="errorp.jsp" %>
<html>
    <head><title>JSP Page</title></head>
    <body>
     <%
String name = request.getParameter("name");
if(name == null)
throw new Exception("�Щ���}�C����W��Ʀr��");
else
%>

<font color = "blue" size = "5"><%=name%></font>�A�z�n!

    </body>
</html>

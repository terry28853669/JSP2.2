<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.util.*"%>

<html>
    <head><title>JSP Page</title></head>
    <body>

    <%
        Enumeration varobj = request.getParameterNames();
        int count = 0;
        out.println("���o���ܼƦW�٬��G");

        while(varobj.hasMoreElements()){
            count++;
            out.println("<");
            out.println(varobj.nextElement());
            out.println(">");
        }

        out.println("<p>�@�ǻ� " + count + " ���ܼƸ��");
    %>

    </body>
</html>

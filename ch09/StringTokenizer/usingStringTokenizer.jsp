<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.util.*"%>
<html>
    <head><title>�r�괫�r���ഫ</title></head>
    <body>
    <%request.setCharacterEncoding("Big5") ; %>
    ��J���T��<br><br>
    <%
        String memo = request.getParameter("memo");
        StringTokenizer linemsg = new StringTokenizer(memo,"\n");
        
        while(linemsg.hasMoreTokens()){
            out.println(linemsg.nextToken() + "<br>");
        }
    %>
    </body>
</html>

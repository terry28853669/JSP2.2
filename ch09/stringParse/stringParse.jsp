<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�r���ഫ</title></head>
    <body>
    <%
        String base = request.getParameter("base");
        String seq = request.getParameter("seq");
        int baseNum = Integer.parseInt(base);
        int seqNum  = Integer.parseInt(seq);
        int result = 1;
        
        for(int i=1;i<=seqNum;i++)
            result = result * baseNum ;
        out.println("<font size = 5>" + baseNum + " �� " + seqNum + " ����");
    %>
    <hr>
    <font size=5>�p�⵲�G:</font>
    <font size=5><%=result%></font>
    </body>
</html>

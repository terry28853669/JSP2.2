<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>���oCookie���</title></head>
    <body>
    <%
        Cookie cookies[] = request.getCookies();
        int count = cookies.length;
        String name = "",sex = "",color = "";

        for(int i=0;i<count;i++)
            if(cookies[i].getName().equals("name"))
                name = cookies[i].getValue();
            else if(cookies[i].getName().equals("sex"))
                sex =cookies[i].getValue();
            else if(cookies[i].getName().equals("color"))
                color = cookies[i].getValue();
    %>
        <font color = "<%=color%>" size = "5"><%=name%></font>
        �z�n�A�H�U�O�z���ӤH��ơK<p>
    <%
        out.println("�ʧO�G<br>");
        if(sex.equals("M"))
            out.println("<img src = 'boy.jpg'>�ڬO�k��..<p>");
        else
            out.println("<img src = 'girl.jpg'>�ڬO�k��..<p>");
    %>
    </body>
</html>
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>

<html>
    <head><title>��Ʈw���}�һP����</title></head>
    <body>
    <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:webData");
        if(con.isClosed())
            out.println("��Ʈw�w�g�����F�I<br>");
         else
            out.println("��Ʈw���b�}�Ҥ��I<br>");
        
        con.close();
            
        if(con.isClosed())
             out.println("��Ʈw�w�g�����F�I");
        else
             out.println("��Ʈw���b�}�Ҥ��I");
     %>
    </body>
</html>

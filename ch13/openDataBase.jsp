<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>

<html>
    <head><title>資料庫的開啟與關閉</title></head>
    <body>
    <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:webData");
        if(con.isClosed())
            out.println("資料庫已經關閉了！<br>");
         else
            out.println("資料庫正在開啟中！<br>");
        
        con.close();
            
        if(con.isClosed())
             out.println("資料庫已經關閉了！");
        else
             out.println("資料庫正在開啟中！");
     %>
    </body>
</html>

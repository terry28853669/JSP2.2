<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>建立資料表</title></head>
    <body>
    <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:webData");
        Statement smt =  con.createStatement();
        String sql = "CREATE TABLE persona1" +
                   "(ID char(10),Name char(10),Adrress char(20),Tel char(15))";
        smt.execute(sql);
        con.close();  
    %>
    </body>
</html>

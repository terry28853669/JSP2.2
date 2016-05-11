<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>新增資料</title></head>
    <body>

    <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = 
            DriverManager.getConnection("jdbc:odbc:webData");
        Statement smt =  con.createStatement();
        
        out.println("新增資料表 people 於 webData <br>");
        String sql = "CREATE TABLE people";


        smt.execute(sql);
        
        out.println("新增一個文字型態的資料欄位 name，長度等於 10 <br>");
        out.println("新增一個文字型態的資料欄位 eMail，長度等於 100 <br>");
        sql = "ALTER TABLE people ADD name varchar(10),eMail varchar(100)";
        smt.execute(sql);
        
        out.println("新增二筆資料 ... <br>");
        sql = "insert into people (name,eMail) values ('朱樹明','axel@trending.com.tw')";
        smt.execute(sql);
        sql = "insert into people (name,eMail) values ('鍾文君','amy@trending.com.tw')";
        smt.execute(sql);
        con.close();        
      %>
    
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>�s�W���</title></head>
    <body>

    <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = 
            DriverManager.getConnection("jdbc:odbc:webData");
        Statement smt =  con.createStatement();
        
        out.println("�s�W��ƪ� people �� webData <br>");
        String sql = "CREATE TABLE people";


        smt.execute(sql);
        
        out.println("�s�W�@�Ӥ�r���A�������� name�A���׵��� 10 <br>");
        out.println("�s�W�@�Ӥ�r���A�������� eMail�A���׵��� 100 <br>");
        sql = "ALTER TABLE people ADD name varchar(10),eMail varchar(100)";
        smt.execute(sql);
        
        out.println("�s�W�G����� ... <br>");
        sql = "insert into people (name,eMail) values ('�����','axel@trending.com.tw')";
        smt.execute(sql);
        sql = "insert into people (name,eMail) values ('���g','amy@trending.com.tw')";
        smt.execute(sql);
        con.close();        
      %>
    
    </body>
</html>

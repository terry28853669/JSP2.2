<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>排序查詢結果</title></head>
    <body>
    <font size="5" color="green">成績排名</font>
    <hr>
    <table border="1">
       <tr ><th>名次</th><th>姓名</th><th>國文</th></tr>

       <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:webData");
        Statement smt =  con.createStatement();
        
        String sql = "SELECT Name,Chinese FROM grades ORDER BY chinese DESC";
        ResultSet rs = smt.executeQuery(sql);
        int num=1;
        
        while(rs.next()){
            out.println("<tr><td>" + num + "</td><td>" + rs.getString(1) + "</td>"+
                           "<td>" + rs.getInt(2) +"</td></tr>");
            num++;
        }
       %>
       
    </table>
    </body>
</html>

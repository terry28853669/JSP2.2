<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>�ƧǬd�ߵ��G</title></head>
    <body>
    <font size="5" color="green">���Z�ƦW</font>
    <hr>
    <table border="1">
       <tr ><th>�W��</th><th>�m�W</th><th>���</th></tr>

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

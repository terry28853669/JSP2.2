<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>���Z�d�ߵ��G</title></head>
    <body>
    <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = 
                DriverManager.getConnection("jdbc:odbc:webData");
        Statement smt =  con.createStatement();
        String name =
                new String(request.getParameter("name").getBytes("ISO-8859-1"));
        String sql = "select * from grades where Name ='" + name + "'";
        String color;
        ResultSet rs = smt.executeQuery(sql);
        rs.next();
    %>   
                                                                     
    <font color="blue" size="5"><%=rs.getString(2)%>�����Z�p�U�G</font><p>  
    ���G<%=rs.getString(3)%><br>
    �^��G<%=rs.getString(4)%><br>
    �ƾǡG<%=rs.getString(5)%><p>
    
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>���Z�d�ߥD�e��</title></head>
    <body>
        <form action="resultForm.jsp" method="post">
        <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = 
                DriverManager.getConnection("jdbc:odbc:webData");
        Statement smt =  con.createStatement();
        String sql = "SELECT Name from grades";
        ResultSet rs = smt.executeQuery(sql);
        out.println("<select size='1' name = 'name'>");

        while(rs.next())
            out.println("<option>" + rs.getString(1));
            out.println("</select>");
            con.close();
        %>
        
        <input type="submit" value="�d�ߦ��Z">
</form>

    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>�妸����</title></head>
    <body>
    <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:webData");
        Statement smt =  con.createStatement();
        
        String sql1 = "CREATE TABLE MemberData " +
         "(ID char(10),Name char(10),Address char(20),Tel char(15))";
        String sql2 = "INSERT INTO MemberData(ID,Name,Address,Tel) VALUES "  +
         "('1','�f�Τ�','�������_�ʸ�','07-3334444')";
        String sql3 = "INSERT INTO MemberData(ID,Name,Address,Tel) VALUES "  +
         "('2','�v�e��','�x�n���F�e��','06-3331144')";

        smt.addBatch(sql1);
        smt.addBatch(sql2);
        smt.addBatch(sql3);
        smt.executeBatch();

        out.println("����妸���O���\ !!�@<br>") ;
        out.println("�s�W��ƪ� MemberData !!�@<br>") ;
        out.println("�s�W������ ID�BName�BAdrress�BTel !!�@<br>") ;
        out.println("�s�W�ⵧ��� !!") ;
     %>

    </body>
</html>

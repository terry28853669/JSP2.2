<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.sql.*"%>

<jsp:useBean id="ConnBean" scope="application" 
                    class="bean.ConnectionBean"/>
<%
    Connection conn=ConnBean.setConnection("webData");
%>
<html>
    <head><title>�ϥ�JavaBean�s����Ʈw</title></head>
    <body>
    �ϥ�JavaBean�}�Ҹ�Ʈw dbs.mdb<br><hr>
    ����e�Х��N dbs.mdb �إ߬�ODBC��Ʈw<br><hr>
    <font color="pink">��Ʈw�}�Ҧ��\</font>
    </body>
</html>




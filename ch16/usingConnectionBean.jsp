<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.sql.*"%>

<jsp:useBean id="ConnBean" scope="application" 
                    class="bean.ConnectionBean"/>
<%
    Connection conn=ConnBean.setConnection("webData");
%>
<html>
    <head><title>使用JavaBean連結資料庫</title></head>
    <body>
    使用JavaBean開啟資料庫 dbs.mdb<br><hr>
    執行前請先將 dbs.mdb 建立為ODBC資料庫<br><hr>
    <font color="pink">資料庫開啟成功</font>
    </body>
</html>




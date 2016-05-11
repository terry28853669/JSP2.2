<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.sql.*"%>

<jsp:useBean id="DataBean" scope="session" class="bean.DataBean"/>
<%
    Connection conn=DataBean.setConnection("employee");
    DataBean.setModify
            ("DELETE FROM employee WHERE dep='美工部';");
    DataBean.setModify
            ("UPDATE employee SET dep='管理部' WHERE name='陳小明';");
    DataBean.setModify
            ("INSERT INTO employee VALUES('張大明','網管部',357);");
    DataBean.setModify
            ("INSERT INTO employee VALUES('王小玲','圖書部',812);");    
%>
<html>
<title>修改資料表記錄</title>
<body>

<table border="1">
<tr ><th>姓名</th><th>部門</th><th>分機號碼</th></tr>
<%
    ResultSet rs=DataBean.getQuery("SELECT * FROM employee");
    while(rs.next()){
%>
    <tr><td><%=rs.getString("name")%></td>
    <td><%=rs.getString("dep")%></td>
    <td align="center"><%=rs.getInt("phone")%></td></tr>
<%
    }
%>
</table>
</body>
</html>


<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.sql.*"%>

<jsp:useBean id="DataBean" scope="session" class="bean.DataBean"/>
<%
    Connection conn=DataBean.setConnection("employee");
    DataBean.setModify
            ("DELETE FROM employee WHERE dep='���u��';");
    DataBean.setModify
            ("UPDATE employee SET dep='�޲z��' WHERE name='���p��';");
    DataBean.setModify
            ("INSERT INTO employee VALUES('�i�j��','���޳�',357);");
    DataBean.setModify
            ("INSERT INTO employee VALUES('���p��','�Ϯѳ�',812);");    
%>
<html>
<title>�ק��ƪ�O��</title>
<body>

<table border="1">
<tr ><th>�m�W</th><th>����</th><th>�������X</th></tr>
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


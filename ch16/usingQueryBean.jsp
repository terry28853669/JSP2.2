<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.sql.*"%>

<jsp:useBean id="QueryBean" scope="application" 
                   class="bean.QueryBean"/>
<%
    Connection conn=QueryBean.setConnection("webData");
    ResultSet rs=QueryBean.getQuery("SELECT * FROM MemberData");
%>

<html>
<title>��JavaBean�d�߸�Ʈw</title>
<body>
<table border="1">
<tr ><th>�s��</th><th>�m�W</th><th>�s���a�}</th><th>�s���q��</th>
               </tr>
    <%
    while(rs.next()){
    %>
    <tr><td><%=rs.getString("ID")%></td>
    <td><%=rs.getString("Name")%></td>  
    <td><%=rs.getString("Address")%></td> 
    <td><%=rs.getString("Tel")%></td> 
    <%
    }
    %>

</table>
</body>
</html> 

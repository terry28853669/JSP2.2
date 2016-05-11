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
<title>用JavaBean查詢資料庫</title>
<body>
<table border="1">
<tr ><th>編號</th><th>姓名</th><th>連絡地址</th><th>連絡電話</th>
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

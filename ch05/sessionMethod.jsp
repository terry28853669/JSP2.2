<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ޥ�session��k</title></head>
    <body>
    
    <table>
          <tr><th align = "left">session���إ߮ɶ�</th>
             <td><%=session.getCreationTime()%></td></tr>
          <tr><th align = "left">session���ѧO�r��</th>
             <td><%=session.getId()%><br></td></tr>
          <tr><th align = "left">session�̫�Q�ШD���ɶ�</th>
             <td><%=session.getLastAccessedTime()%></td></tr>
          <tr><th align = "left">session�w�]�������ɶ�</th>
             <td><%=session.getMaxInactiveInterval()%></td></tr>
          <tr><th align = "left">�O�_���s�ت�session</th>
             <td><%=session.isNew()%></td></tr>
      </table>

    </body>
</html>

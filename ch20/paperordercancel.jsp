
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

<html>
    <head><title>�����q�\�q�l��</title></head>
    
    <body>

    <table border="0" width="100%">
      <tr>
        <td width="100%"><b><font size="5">�����q�\�q�l��</font></b>
        <a href='paperlist.jsp'>[�s��]</a>
          <hr>
        </td>
      </tr>
      <tr>
        <td width="100%">
          <form method="post" action="orderCheck.jsp">            
            <p>�����q�\�l��G<input type="text" name="mailorder" size="30">
            <input type="hidden" name="cancel"  value="yes" size="30">
            <input type="submit" value='����'>
          </form>
        </td>
      </tr>
    </table>
    </body>
</html>
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<%
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:paper");
    Statement smt =con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String getpaperdata = "" ;    
    getpaperdata = "SELECT  COUNT(*)  AS  cc FROM list "  ;         
    ResultSet paperrs =smt.executeQuery(getpaperdata) ; 
    paperrs.next() ;     
%>
<html>
    <head><title>�q�\�q�l��</title></head>
    <body>

    <table border="0" width="100%">
      <tr>
        <td width="100%"><b><font size="5">�q�\�q�l��</font></b>
        <a href='paperlist.jsp'>[�s��]</a>
          <hr>
        </td>
      </tr>
      <tr>
        <td width="100%">
          <form method="POST" action="orderCheck.jsp">

            �q��W�١G<input type="text" name="nameorder" size="20"><br>
            �q�l�l��G<input type="text" name="mailorder" size="30"><br>           
            <br>
                <input type="submit" value="�q�\" name="order"></p>
          </form>
        </td>
      </tr>
      <tr>
        <td width="100%"><b>�w�q�\�ơG<%=paperrs.getString("cc")%></b></td>
      </tr>
      <tr>
        <td width="100%"></td>
      </tr>
      <tr>
        <td width="100%"></td>
      </tr>
    </table>
    </body>
</html>

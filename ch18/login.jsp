<%@page contentType="text/html"%>
<%@page pageEncoding="MS950"%>
<%@page import = "java.sql.*" %>

<%  
if(request.getParameter("memberid") !=null  &&  
  request.getParameter("memberpwd") != null){

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:member");
    Statement smt =con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String getpaperdata = "SELECT * FROM member WHERE memberid='" + 
            request.getParameter("memberid") + "'  AND memberpwd='" + 
            request.getParameter("memberpwd") + "'"  ; 
    ResultSet paperrs =smt.executeQuery(getpaperdata) ;  
    if(paperrs.next()){            
        response.sendRedirect("accesspage.jsp") ;
    }else
        out.println("�K�X�b������ !!") ;
}
%>
<html>   
  <head><title>�n�J����</title></head>
<body>
<form method="post">
<table border="0" width="898">
    <tr>
      <td width="890" align="left" colspan="2">
       <b><font size="5">�t�εn�J</font></b>
        <hr>
      </td>
    </tr>
    <tr>
      <td width="75" align="center">
        <p align="right">�b���G</p>
      </td>
      <td width="809" align="center">
        <p align="left"><input type="text" name="memberid" size="20"></td>
    </tr>
    <tr>
      <td width="75" align="center">
        <p align="right">�K�X�G</p>
      </td>
      <td width="809" align="center">
        <p align="left">
        <input type="password" name="memberpwd" size="20">
        <input type="submit" value="�n�J" name="loginButton"></td>
    </tr>
  </tr>
</table>
</form>
</body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="MS950"%>
<%@page import = "java.sql.*" %>


<% 
session.setAttribute("access","n") ; 
if(request.getParameter("adminid") !=null  &&  
  request.getParameter("adminpwd") != null){

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:paper");
    Statement smt =con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String getpaperdata = 
            "SELECT * FROM adminlist WHERE adminid='" + 
            request.getParameter("adminid") + "' AND adminpwd='" + 
            request.getParameter("adminpwd") + "'"  ; 
    ResultSet paperrs =smt.executeQuery(getpaperdata) ;  
   
    if(paperrs.next()){  
        session.setAttribute("access","y") ; 
        response.sendRedirect("paperlist.jsp") ;
    }else
        out.println("�K�X�b������ !!") ;   
}
%>


<html>   
  <head><title>�޲z���n�J����</title></head>
<body>
<form method="post">
<table border="0" width="898">
    <tr>
      <td width="890" align="left" colspan="2">
       <b><font size="5">�q�l���޲z�t�εn�J</font></b>
       <a href='paperlist.jsp'>[�s��]</a>
        <hr>
      </td>
    </tr>
    <tr>
      <td width="75" align="center">
        <p align="right">�b���G</p>
      </td>
      <td width="809" align="center">
        <p align="left">
        <input type="text" name="adminid" 
        <% if(request.getParameter("adminid")!=null){  %>
            value ='<%=request.getParameter("adminid")%>' 
        <%}%> 
        size="20"></td>
    </tr>
    <tr>
      <td width="75" align="center">
        <p align="right">�K�X�G</p>
      </td>
      <td width="809" align="center">
        <p align="left">
        <input type="password" name="adminpwd" 
        <% if(request.getParameter("adminpwd")!=null){  %>
         value ='<%=request.getParameter("adminpwd")%>' 
        <%}%> 
        size="20">
        <input type="submit" value="�n�J" name="loginButton"></td>
    </tr>
  </tr>
</table>
</form>
    </body>
</html>
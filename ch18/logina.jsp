<%@page contentType="text/html"%>
<%@page pageEncoding="MS950"%>
<%@page import = "java.sql.*" %>

<% 
session.setAttribute("access","n") ; 
if(request.getParameter("memberid") !=null  &&  
  request.getParameter("memberpwd") != null){

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:member");
    Statement smt =con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String getpaperdata = 
            "SELECT * FROM member WHERE memberid='" + 
            request.getParameter("memberid") + "' AND memberpwd='" + 
            request.getParameter("memberpwd") + "'"  ; 
    ResultSet paperrs =smt.executeQuery(getpaperdata) ;  
    if(paperrs.next()){  
        session.setAttribute("access","y") ; 
        session.setAttribute("accessid",request.getParameter("memberid")) ;
        session.setMaxInactiveInterval(5) ; 
        response.sendRedirect("accesspagea.jsp") ;
    }else
        out.println("密碼帳號不符 !!") ;
}
%>

<html>   
  <head><title>登入網頁</title></head>
<body>
<form method="post">
<table border="0" width="898">
    <tr>
      <td width="890" align="left" colspan="2">
       <b><font size="5">系統登入</font></b>
        <hr>
      </td>
    </tr>
    <tr>
      <td width="75" align="center">
        <p align="right">帳號：</p>
      </td>
      <td width="809" align="center">
        <p align="left">
        <input type="text" name="memberid" 
        <% if(request.getParameter("memberid")!=null){  %>
            value ='<%=request.getParameter("memberid")%>' 
        <%}%> 
        size="20"></td>
    </tr>
    <tr>
      <td width="75" align="center">
        <p align="right">密碼：</p>
      </td>
      <td width="809" align="center">
        <p align="left">
        <input type="password" name="memberpwd" 
        <% if(request.getParameter("memberpwd")!=null){  %>
         value ='<%=request.getParameter("memberpwd")%>' 
        <%}%> 
        size="20">
        <input type="submit" value="登入" name="loginButton"></td>
    </tr>
  </tr>
</table>
</form>
    </body>
</html>
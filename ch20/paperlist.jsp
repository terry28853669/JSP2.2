<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>

<%
    Object obj=session.getAttribute("access") ;    
    if (obj==null)
        session.setAttribute("access","n") ;         
   
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:paper");
    Statement smt =con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String getpaperdata = "" ; 
    if(session.getAttribute("access").equals("y"))
        getpaperdata = "SELECT * FROM paper "  ; 
    else 
        getpaperdata = "SELECT * FROM paper WHERE  published = true "  ; 
        
    ResultSet paperrs =smt.executeQuery(getpaperdata) ;      
%>

<html>
    <head><title>JSP Page</title></head>
    <body>
<form method="post" action="papernew.jsp">
<table border="0" width="100%">
  <tr>
    <td ><b><font size="5">
     JSP �q�l��</font></b>
    </td><td align='center'>
     <%if(session.getAttribute("access")=="n"){
         out.println(
            "<a href='paperorder.jsp'>[�q�\ | </a>"+
            "<a href='paperordercancel.jsp'>�����q�\ | </a>"+
            "<a href='adminlogin.jsp'>�n�J]</a>") ;
     }else{     
          out.println("<a href='adminlogout.jsp'> �n�X</a> ") ; 
     }%>
    </td>

  </tr>
  <tr>
    <td width="100%" colspan="2">
<table border="0" width="100%" cellspacing="1" cellpadding="0">
<tr>
  <td width="6%" bgcolor="#C0C0C0"><b>�s��</b></td>
  <td width="76%" bgcolor="#C0C0C0"  colspan="2"><b>�D�D</b></td>
  
</tr>
<%while(paperrs.next()){  
    String paperid =paperrs.getString("paperid") ; 
    String papertitle =paperrs.getString("papertitle") ; 
%>
<tr>          
  <td width="6%" bgcolor="#E6E6E6"><%=paperid%></td>
  <td width="76%" bgcolor="#E6E6E6">  
   <a href="paperupdate.jsp?paperid=<%=paperid%>">    
   <%=papertitle%>
   </a>
  </td>     
  <%if(session.getAttribute("access").equals("y")){%>
  <td width="18%" bgcolor="#E6E6E6">            
    <%if(paperrs.getBoolean("published")){%>
    <a href="paperupdate.jsp?paperid=<%=paperid%>"> �\Ū</a>            
    <%}else{%>
    <a href="paperupdate.jsp?paperid=<%=paperid%>"> �s��</a>�U
    <a href="paperedit.jsp?editType=published&paperid=<%=paperid%>"> �o��</a></td>     
    <%}%>
   <%}%>

</tr>
<%}%>
</table>
    </td>
  </tr>
  <tr>
    <td >
      <p align="center">
      <% if(session.getAttribute("access").equals("y")){ %>
      <input type="submit" value="�s�W�q�l��" name="newpaper">
      <%}%>
      </p>
    </td><td></td>
  </tr>
</table>
</form>
</body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page errorPage = "error.jsp"%>
<HTML>
<HEAD>
    <TITLE>>�]�w�ҥ~�B�z������</TITLE>
</HEAD>
<BODY>
  <%
    String name = request.getParameter("name");
    if(name == null)
     throw new Exception("");
    else
  %>
<font color = "blue" size = "5"><%=name%></font>�A�z�n!


</BODY>
</HTML>


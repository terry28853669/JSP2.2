<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>

<%!
     String newline(String str)         //�B�z����r�����ۭq��k
     {
      int index=0;
      while((index=str.indexOf("\n"))!=-1)
       str=str.substring(0,index)+"<br>"+str.substring(index+1);
      return(str);
     }
%>
<%
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     Connection con = DriverManager.getConnection("jdbc:odbc:msg");
     Statement smt =  con.createStatement();
     String name = new String
             (request.getParameter("name").getBytes("ISO-8859-1"));
     String note = new String
             (request.getParameter("note").getBytes("ISO-8859-1"));
     note = newline(note);
     String sql;
     sql=             "insert into message(msgname,msgcontent) values ('"+name+"','"+note+"')";
     smt.execute(sql);
     con.close();
     response.sendRedirect("main.jsp");
%>
<%@page import = "java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

<HTML>
<HEAD>
    <TITLE>���o Application ���</TITLE>
</HEAD>
<BODY>
      <% 
          Object title=application.getAttribute("title") ;       
          Object author=application.getAttribute("author") ;
          if(title!=null){
              out.println("�ѦW�G"+title.toString()) ; 
              out.println("<br>") ; 
              out.println("�@�̡G"+author.toString()) ;   
          }else{
              out.println("�L�]�wapplication��ơ@!!") ;  
          }
      %>
</BODY>
</HTML>
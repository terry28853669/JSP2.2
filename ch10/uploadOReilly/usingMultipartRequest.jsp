<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="comoreilly.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<html>
    <head><title>�W���ɮק@�~-O'Reilly</title></head>
    <body>
    <%
     MultipartRequest theMultipartRequest = 
             new MultipartRequest(request,"C:\\saveDir\\CopyFile\\",10*1024*1024) ; 
     Enumeration theEnumeration = theMultipartRequest.getFileNames() ;
     int fileCount =0 ; 
     
     while(theEnumeration.hasMoreElements()){
         fileCount++ ; 
         String fieldName = (String)theEnumeration.nextElement() ; 
         String fileName =theMultipartRequest.getFilesystemName(fieldName) ;
         String contentType = theMultipartRequest.getContentType(fieldName) ;
         
         File theFile = theMultipartRequest.getFile(fieldName) ;        
         
         out.println("���W�١G"+fieldName+"<br>") ;
         out.println("�ɮצW�١G"+fileName+"<br>") ;
         out.println("�ɮ׫��A�G"+contentType+"<br>") ;  
         out.println("�ɮ׸��|�G"+theFile.getAbsolutePath()+"<br>") ; 
         out.println("<br>") ;
         out.println("=============================================<br>") ;          
     }     
     out.println("���\�W�Ǯ��ɮ׼ƥءG"+fileCount  ) ;     
     %>   
      
    </body>
</html>

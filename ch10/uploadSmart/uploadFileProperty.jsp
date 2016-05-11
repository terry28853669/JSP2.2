<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="com.jspsmart.upload.*" %>

<jsp:useBean id="theSmartUpload" scope="page" 
                    class="com.jspsmart.upload.SmartUpload"   />
<html>
    <head><title>�W���ɮק@�~</title></head>
    <body>
    <%
        theSmartUpload.initialize(pageContext) ; 
        theSmartUpload.setTotalMaxFileSize(10*1024*1024) ; 
        theSmartUpload.setAllowedFilesList("txt,htm") ; 
        theSmartUpload.upload() ; 
        String savePath = "C:\\saveDir\\" ;        
        int fileCount=theSmartUpload.save(savePath) ; 
        out.println("���\�W�Ǯ׼ƥءG"+fileCount  ) ;         
        
        Files theFiles = theSmartUpload.getFiles() ; 
        out.println("<br>") ;
        out.println("=============================================<br>") ; 
        for(int i=0 ;i<theFiles.getCount();i++ ){   
            
            File theFile =theFiles.getFile(i) ;
            out.println("���W�١G"+theFile.getFieldName()+"<br>") ; 
            out.println("�ɮצW�١G"+theFile.getFileName()+"<br>") ; 
            out.println("���ɦW�G"+theFile.getFileExt()+"<br>") ; 
            out.println("�ɮ׸��|�G"+theFile.getFilePathName()+"<br>") ; 
            out.println("�ɮ׫��A�G"+theFile.getContentType()+"<br>") ; 
            out.println("�ɮפj�p�G"+theFile.getSize()+"<br>") ; 
            out.println("<br>") ;          
            
            theFile.saveAs("C:\\saveDir\\CopyFile\\copy_"+
                    theFile.getFileName(),theSmartUpload.SAVE_AUTO) ; 
            out.println("�ƻs�@���ɮצ�"+
                    "C:\\saveDir\\CopyFile\\copy_"+theFile.getFileName()) ; 
            out.println("<br>") ;
            out.println("=============================================<br>") ; 
        } 
    %>    
    </body>
</html>

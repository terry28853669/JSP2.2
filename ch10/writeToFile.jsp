<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.io.*"%>
<html>
    <head><title>�g�J�ɮ�</title></head>
    <body>
    <%
        String thePath=request.getRealPath("/")+"ch10\\theFile" ; 
        File myFile = new File(thePath,"testFile.txt" )   ;
        myFile.createNewFile() ;
        FileWriter myFileWriter = new FileWriter(myFile) ;
        myFileWriter.write("�o�O�d�� writeToFile.jsp ����ɩҼg�J����r !!");
        
        myFileWriter.flush() ; 
        myFileWriter.close() ;
        out.println("�r��g�J�ɮ�testFile.txt�����@!!");
    %>
    </body>
</html>

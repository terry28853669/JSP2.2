<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.io.*"%>
<html>
    <head><title>�B��File����</title></head>
    <body>
 
    <%
        String thePath=request.getRealPath("/")+"ch10\\theFile" ; 
        File myDir = new File(thePath)   ;
        File myFile = new File(thePath,"testFile.txt" )   ;
        File mynotExistFileFile = new File(thePath,"notExistFile.txt" )   ;
        out.println(
                "�ؿ� "+thePath+ " �O�_�s�b�G" + 
                myDir.exists() + "<BR>"  );
        out.println(
                "�ɮ� "+thePath+ "\\testFile.txt �O�_�s�b�G" + 
                myFile.exists() + "<BR>" );
        out.println("�ɮ� "+thePath+ "\\notExistFile.txt �O�_�s�b�G" +
        mynotExistFileFile.exists() + "<BR>"+ "<BR>" );

        out.println("�ɮ� "+thePath+ "\\testFile.txt �O�_�iŪ���G" + 
        myFile.canRead() + "<BR>" );
        out.println("�ɮ� "+thePath+ "\\testFile.txt �O�_�i�g�J�G" + 
        myFile.canWrite() + "<BR>" );
    %>

    </body>
</html>

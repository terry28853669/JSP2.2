<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.io.*"%>
<html>
    <head><title>�C�|�ؿ��P�ɮ׵��c</title></head>
    <body>
    <%
        String strB = "";
        String strBe = "";

        String thePath=request.getRealPath("/") ; 
        File myFile = new File(thePath)   ;
        File[] objFiles = myFile.listFiles() ;
        out.println(
                "�C�X�ؿ� "+thePath+" "+
                "���U���Ҧ��ؿ����ɮס]�ʶ��鳡�����ؿ��A��l���ɮס^:" + 
                "<BR><HR>" );

        for(int i=0 ; i <objFiles.length ; i++){
            if (objFiles[i].isDirectory()){
                strB = "<B>" ;
                strBe = "</B>"  ;
            }else{
                strB = "" ;
                strBe = "" ;
            }
            out.println(strB + objFiles[i].toString() + strBe+ "<BR>");
        }
        out.println("<BR><HR>");
        out.println("�ثe�ؿ� "+thePath+" ���W�h�ؿ��� :");
        out.println( myFile.getParentFile().toString() + "<BR><BR>");
        
        out.println("���U�C�X�ثe�t�Ϊ��ڥؿ��G"+ "<BR><HR>" );
        File[] myroot = File.listRoots() ;
        
        for(int i=0 ; i <myroot.length ; i++){
            out.println( myroot[i].toString() + "<BR>");
        }
    %>


    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ƭ��ഫ�����r��</title></head>
    <body>
    <%
        String s1="255",s2;
        int a;
        float b=3.14f ;
        a=Integer.parseInt(s1) ; //�N�r��s1�ন��ơA�ë��w��a
        s2=String.valueOf(b) ;	//��B�I���ন�r��
        out.println("a=" +a ) ;	 //�L�X���G255
         out.println("<br>" ) ;	 //�L�X���G255
        out.println("s2="+s2) ;  //�L�X���G 3.14
    %>

    </body>
</html>

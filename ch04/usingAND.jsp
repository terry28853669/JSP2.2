<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>AND �B��l</title></head>
    <body>

    <%
        int a =10   ;
        boolean blnOR = false ;
        out.println(" �ܼ� a=10 <BR>")  ;

        blnOR = a>10 & a==10  ;
        out.println("�B�⦡ [a>10 & a==10] ���G : " + blnOR) ;
        out.println("<BR><BR>") ;

        blnOR = a>10 && (a +=10) ==10  ;
        out.println
            ("�B�⦡ [a>10 && (a +=10) ==10] �B�⵲�G : a ���� " + a) ;
        out.println(" <BR>") ;

        blnOR = a>10 & (a +=10) ==10  ;
        out.println
            ("�B�⦡ [a>10 & (a +=10) ==10] �B�⵲�G : a ���� " + a) ;
        out.println(" <BR>") ;
%>

    </body>
</html>

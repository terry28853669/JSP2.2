<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@include file = "includeFile.jsp"%>
<%@include file = "includeFile.html"%>
<html>
    <head><title>�ܽdinclude���O</title></head>
    <body>
    <%
        MathFunction myMathFunction= new  MathFunction(100,20) ;
        int intR = myMathFunction.DoAdd() ;
        out.println("100�[�W20���� " + intR + "<br>") ;
        intR = myMathFunction.DoSub() ;
        out.println("100�20���� " + intR) ;
    %>
    </body>
</html>

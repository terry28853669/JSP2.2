<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ϥ�try-catch�l�y</title></head>
    <body>

    <%
        try{
            String input = request.getParameter("input");
            int value = Integer.parseInt(input);
            out.print("�z��J���Ʀr���G"+value);
        }
        catch(NumberFormatException e){
            out.println("�o�@�q�Ocatch�l�y�Ҧ^�Ǫ����~�T�� !! <br>") ;
            out.println("-------------------------------------------<br>") ;
            out.println("���}�C���ѼƤ����T !! <br>") ;
            out.println("�Цb�ѼƦC��J��ƭ� !! <br>") ;
        }
    %>

    </body>
</html>

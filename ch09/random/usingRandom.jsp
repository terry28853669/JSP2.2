<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�q�Ʀr</title></head>
    <body>
    <%request.setCharacterEncoding("Big5");%>    
    �q�q�ݡA�п�J���� 0~100 ��������..
    <hr>
    <form action = "RandomResult.jsp" method = "post">
    ��J�Ʀr�G<input type=text name="value" >
     <input type=submit  value='�e�X'>
    <hr>
    
    <% if  (request.getParameter("msg") != null) {
            int intMsg =Integer.parseInt( request.getParameter("msg"));
            String strMessage = "" ;
            switch(intMsg) {
                case 0:
                    strMessage = "�z�q��F!!" ;
                    break ;
                case -1:
                    strMessage = "�A�p�@�I!!" ;
                    break ;
                case 1:
                    strMessage = "�A�j�@�I!!" ;
                    break ;
            }
            out.println(strMessage);
        }
    %>
    </form>
    </body>
</html>

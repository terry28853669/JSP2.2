<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    
        <%        
            String input = request.getParameter("input");
            int value = Integer.parseInt(input);
            out.print("�z��J���Ʀr���G"+value);        
        %>
        
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�]�wJavaBean�ݩ�</title></head>
    <body>
    
   <jsp:useBean id="data" scope="page" class="bean.userData"/>
   <jsp:setProperty name="data" property="userName" value="���¾�"/>
    
   <%	data.setUserNum("105"); 	%>
    
    �ϥΪ̡G<font color=blue>
    <jsp:getProperty name="data" property="userName"/>
    </font><br>
    �������X�G<font color=blue>
    <jsp:getProperty name="data" property="userNum"/>
    </font><br>      

    </body>
</html>

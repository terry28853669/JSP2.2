<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>request ���A���ͩR�g��</title></head>
    <body>
    <jsp:useBean id="count" scope="request" class="bean.Counter"/>
    <font color="red">�d��Grequest</font><br>
    
        �z�O������<font color=blue>
            <jsp:getProperty name="count" property="counter"/>
        </font>����[��
        <jsp:forward page="request.jsp"/>
        


    </body>
</html>

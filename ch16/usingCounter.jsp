<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ܽdpage���A���ͩR�g��</title></head>
    <body>
    <jsp:useBean id="count" scope="page" class="bean.Counter"/>

	<font color="red">�d��Gpage </font><br>	<br>
	
	�z�O������
        <font color=blue>
            <jsp:getProperty name="count" property="counter"/>
	</font>����[��

    </body>
</html>  
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>request ���A���ͩR�g��</title></head>
    <body>   
<jsp:useBean id="count" scope="request" class="bean.Counter"/> 
    	<font color="red">request.jsp</font><br><br>
	�z�Orequest.jsp��������<font color=blue>
	<jsp:getProperty name="count" property="counter"  />
	</font>����[��<br>	
	<%   
            out.println(" �o�Orequest.jsp�������p�ƾ� !!");
	%>
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>示範page型態的生命週期</title></head>
    <body>
    <jsp:useBean id="count" scope="page" class="bean.Counter"/>

	<font color="red">範圍：page </font><br>	<br>
	
	您是本站第
        <font color=blue>
            <jsp:getProperty name="count" property="counter"/>
	</font>位參觀者

    </body>
</html>  
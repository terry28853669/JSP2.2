<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>JSP Page</title></head>
    <body>

       <sql:setDataSource  dataSource="jdbc:odbc:webData,sun.jdbc.odbc.JdbcOdbcDriver" />
       <sql:update    sql="UPDATE Books SET Amount = 100 "     var ="updateCount" />      
       
       <c:out value="${'��Ʋ��ʵ��ơG'}" />
       <c:out value="${updateCount}" />
      <br>
       <sql:update    sql="UPDATE Books SET Amount = ?  WHERE ID=?  "     var ="updateCounts" >      
	<sql:param   value="${'500'}"  />
	<sql:param   value="${'1001'}"  />
      </sql:update >
       
       <c:out value="${'��Ʋ��ʵ��ơG'}" />
       <c:out value="${updateCounts}" />
        
    </body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>�ܽdquery����</title></head>
    <body>

       <sql:setDataSource  dataSource="jdbc:odbc:webData,sun.jdbc.odbc.JdbcOdbcDriver" />
       
       <sql:query    sql="SELECT * FROM people WHERE birthday=?"     var ="selectResult" >   
            <fmt:parseDate value="${'1960/10/10'}" var="bdate" pattern="yyyy/MM/dd" />
	    <sql:dateParam value="${bdate}"   />   
       </sql:query >
       
      <c:forEach var="row" items="${selectResult.rows}">
        <c:out value="${'�m�W�G'}"/>
        <c:out value="${row.name}"/><br>
        <c:out value="${'E-Mail�G'}"/>
        <c:out value="${row.eMail}"/><br>
        <c:out value="${'�ͤ�G'}"/>
        <c:out value="${row.birthday}"/><br>    
        <br>
      </c:forEach>

    </body>
</html>


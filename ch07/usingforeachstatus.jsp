<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <%
        String[] theArray = {"1","2","3","4","5","6","7","8","9","10"} ; 
        request.setAttribute("itemObjects",theArray) ; 
    %>

    <c:out value="���U�C�X1~10���_��"/> <br>
    <c:forEach items="${itemObjects}" var="theItemO" varStatus="thevs" begin="0"  end="9"  step="2" >
      
        ${theItemO}
            ���ޭȡG${thevs.index}�@
            �p�ơG${thevs.count}�@
            �Ĥ@��(true/false)�G${thevs.first}�@
            �̫�@��(true/false)�G${thevs.last}
        <br>
    
     </c:forEach>

    </body>
</html>
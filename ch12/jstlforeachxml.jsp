<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="x"  uri="http://java.sun.com/jsp/jstl/xml"  %>
<html>
    <head><title>XML if �P�_��</title></head>
    <body>

    <c:import url="xmlFile//customers.xml"   charEncoding="MS950"  var="xmldoc"  /> 
    <x:parse doc="${xmldoc}" var="xmldocparse"   />    
         
    <x:forEach select="$xmldocparse/customers/customer" var="eachitem">
        <x:choose>
        <x:when  select="$eachitem[@access='deny']"  >
            �w���īȤ�G<br>
        </x:when>
        <x:otherwise>
            ���īȤ�G<br>   
        </x:otherwise>
        </x:choose>
        �s��(customerid):<x:out  select="$eachitem/customerid" /> <br>   
        �m�W(customername):<x:out  select="$eachitem/customername" /> <br>        
    </x:forEach>

    </body>
</html>

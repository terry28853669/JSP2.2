<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="x"  uri="http://java.sun.com/jsp/jstl/xml"  %>
<html>
    <head><title>XML if �P�_��</title></head>
    <body>

    <c:import url="xmlFile//customerspd.xml"   charEncoding="MS950"  var="xmldoc"  /> 
    <x:parse doc="${xmldoc}" var="xmldocparse"   />    
        
    <x:if  select="$xmldocparse/customers/customer[@access='deny']"  >
        �w���īȤ�G<br> 
        �s��(customerid):<x:out  select="$xmldocparse/customers/customer/customerid" /> <br>   
        �m�W(customername):<x:out  select="$xmldocparse/customers/customer/customername" /> <br> 
    </x:if>

    </body>
</html>

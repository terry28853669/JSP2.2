<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="x"  uri="http://java.sun.com/jsp/jstl/xml"  %>
<html>
    <head><title>�x�sXML���e</title></head>
    <body>
    
    <c:import url="xmlFile//customers.xml"   charEncoding="MS950"  var="xmldoc"  /> 
    <x:parse doc="${xmldoc}" var="xmldocparse"   />    
    
    <x:set  select="$xmldocparse/customers"   var="customervalue"/>

    �Ȥ�s��(customerid):<x:out select="$customervalue/customer/customerid"    /><br> 
    �Ȥ�m�W(customername):<x:out select="$customervalue/customer/customername"    /><br> 

    </body>
</html>

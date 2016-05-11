<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="x"  uri="http://java.sun.com/jsp/jstl/xml"  %>

<html>
    <head><title>JSTL�PXML��R</title></head>
    <body>  
    <x:parse  var="xmlbody"   >   
    <customer>
        <customerid >2002</customerid >
        <customername >tim</customername >
    </customer>
    </x:parse>
    <b><u>��RXML���餺�e</u></b><br>
    �Ȥ�s��(customerid):<x:out  select="$xmlbody/customer/customerid" /> <br>
    �Ȥ�m�W(customername):<x:out  select="$xmlbody/customer/customername" /> <br>

    <br><br>
    <b><u>��RXML��󤺮e</u></b><br>
    <c:import url="xmlFile//customers.xml"   charEncoding="MS950"  var="xmldoc"  /> 
    <x:parse doc="${xmldoc}" var="xmldocparse"   />     
    �Ȥ�s��(customerid):<x:out  select="$xmldocparse/customers/customer/customerid" /> <br>   
    �Ȥ�m�W(customername):<x:out  select="$xmldocparse/customers/customer/customername" /> <br>   

    </body>
</html>

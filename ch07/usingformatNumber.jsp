<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>�ƭȮ榡��</title></head>
    <body> 
    
    <table border="1" width="100%">
      <tr>
        <th width="50%">�榡</th>
        <th width="50%">��X</th>
      </tr>
      <tr>
        <td width="50%"  align=right>��l�ƭ�</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>�������j�Ÿ�</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" groupingUsed='false' />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>�̤j2����</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  maxIntegerDigits='2'  />       
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>�̤p12����</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  minIntegerDigits='12'  />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>�̤j2��p��</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  maxFractionDigits='2'  />   
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>�̤p12��p��</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}"  minFractionDigits='12'  /> 
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>�s�x��</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" type="currency"  currencyCode="TWD" />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>����</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" type="currency"  currencyCode="USD" />
        </td>
      </tr> 
      <tr>
        <td width="50%" align=right>�H����</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" type="currency"  currencyCode="CNY" />
        </td>
      </tr>   
      <tr>
        <td width="50%" align=right>�ۭq�˦�(#.####E0)</td>
        <td width="50%">
        <fmt:formatNumber  value="${20001000.123}" pattern="#.####E0" />
        </td>
      </tr>  
      <tr>
        <td width="50%" align=right>�k��Ʀr�榡</td>
        <td width="50%">
        <fmt:setLocale value="fr"   />
        <fmt:formatNumber  value="${20001000.123}"   var = "formatValue" /> 
        ${formatValue}        
        </td>
      </tr>   
    </table>
    </body>
</html>

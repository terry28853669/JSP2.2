<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
    <head><title>����ɶ��榡��</title></head>
    <body>
      <jsp:useBean id="nowDateTime" class="java.util.Date" />      
      <table border="1" width="100%">
      <tr>
        <th width="50%">�榡</th>
        <th width="50%">��X</th>
      </tr>
      <tr>
        <td width="50%"  align=right>��l����ɶ���ܦ�</td>
        <td width="50%">
        <fmt:formatDate value="${nowDateTime}"  type="both"
                                    dateStyle="full"  timeStyle="full" />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>medium���</td>
        <td width="50%">
        <fmt:formatDate value="${nowDateTime}"  type="date" dateStyle="medium" />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>medium�ɶ�</td>
        <td width="50%">
        <fmt:formatDate value="${nowDateTime}"  type="time" timeStyle="medium" />      
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>MM-dd-yyyy  HH:mm:ss</td>
        <td width="50%">
        <fmt:formatDate value="${nowDateTime}"  type="date" 
                                    timeStyle="medium" pattern="MM-dd-yyyy  HH:mm:ss"/>     
        </td>
      </tr>  
    </table>
    </body>
</html>

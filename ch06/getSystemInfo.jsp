<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>���o�t�θ�T</title></head>
    <body>
      <b>�q�T��w�@�@�@�@�@�@ </b><%=request.getProtocol()%><br>
      <b>�Ȥ�ݦ�}�@�@�@�@�@ </b><%=request.getRemoteAddr()%><br>
      <b>�Ȥ�ݥD���W�١@�@�@ </b><%=request.getRemoteHost()%><br>
      <b>�ШD���覡�@�@�@�@�@ </b><%=request.getScheme()%><br>
      <b>���A�ݥD���W�١@�@�@ </b><%=request.getServerName()%><br>
      <b>���A�ݥD���s���𸹽X </b><%=request.getServerPort()%><br>
      <b>�����ؿ����u����|�@ </b><%=request.getRealPath("")%><br>
      <b>�ǰe��ƪ��覡�@�@�@ </b><%=request.getMethod()%><br>
      <b>���}�C�᪺�r���ơ@ </b><%=request.getQueryString()%><br>
      <b>���צr��@�@�@�@�@ </b><%=request.getRequestURI()%><br>
      <b>�{�����۹���|�P�ɦW </b><%=request.getServletPath()%><br>
    </body>
</html>

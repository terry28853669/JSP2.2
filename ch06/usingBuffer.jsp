<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ާ@�w�İ�</title></head>
    <body>

        �ثe�w�İϤj�p�G<%= response.getBufferSize()%> <BR>
        ���]�w�İϤj�p�� 16384  <% response.setBufferSize(16384);%> <BR>
        ���]���᪺�w�İϤj�p�G<%= response.getBufferSize()%> <BR>  <BR>

        �O�_�w�N�w�İϪ���Ƽg�X�@:�@<%=response.isCommitted()%><BR>
        �I�s�@flushBuffer�@�M�Žw�İ�....�@<%response.flushBuffer() ; %><BR>
        �O�_�w�N�w�İϪ���Ƽg�X�@:�@<%=response.isCommitted()%><BR>

    </body>
</html>

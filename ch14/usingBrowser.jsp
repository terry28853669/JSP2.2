<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>����s��</title></head>
    <body>
<%! int num=1;     //�ŧi�����ܼ� num %>
<%
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:webData");
    Statement smt =  con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    
    String sql = "SELECT * FROM grades";
    ResultSet rs = smt.executeQuery(sql);
    rs.last();                 //�N���в��̫ܳ�@�����
    int last = rs.getRow();   //���o�`��Ƶ���
    String view = request.getParameter("view");
    
    if(view != null){
     int select = Integer.parseInt(view);
     switch(select){
     case 1: 
        num = 1;         //����s���Ĥ@��,num �]�� 1
        break;
     case 2: 
        if(num == 1)    //����s���W�@��,num ���� 1
            num = 1;
        else
            num--;
        break;
      case 3: 
        if(num == last)  //����s���U�@��,num ���W 1
            num = last;
        else
           num++;
        break;
      case 4: num = last;      //����s���̫�@��,num �]�� last
        break;
      default:
    }
    }
    String input = request.getParameter("input");
    if(input != null)
        num = Integer.parseInt(input);
    rs.absolute(num);          //�N���в��ʨ�� num ����Ƥ���
%>
<form action="usingBrowser.jsp" method="get">
<table>
<tr>
<td>  <a href="usingBrowser.jsp?view=1">�Ĥ@��</a></td>
<td>�@<a href="usingBrowser.jsp?view=2">�W�@��</a></td>
<td>�@<a href="usingBrowser.jsp?view=3">�U�@��</a></td>
<td>�@<a href="usingBrowser.jsp?view=4">�̫�@��</a></td>
<td>�@��J�Ǹ��G<input type="text" size="3" name="input">
<input type="submit" value="��ܦ��Z"></td>
</tr>
</form>
<font color="red" size="5"><b><%=rs.getString(1)%></b></font> ��
<font color="blue" size="5"><%=rs.getString(2)%></font> �����Z
<hr>
<%
    int intChinese =rs.getInt(3) ;
    int intEnglish=rs.getInt(4) ;
    int intMath=rs.getInt(5) ;
    int intSum =  intChinese + intEnglish + intMath ;

    out.println("���=" + intChinese + "<br>") ;
    out.println("�^��=" + intEnglish + "<br>") ;
    out.println("�ƾ�=" + intMath + "<br><br>") ;
    out.println("�`��=" + intSum + "<br>") ;
%>
<HR>

</body>
</html>

<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<html>
    <head><title>�d���O����</title></head>
    <body>

    <font color="red" size="5">
    <b><i><center>JSP�d���O</i></b>
    </font>
    <hr>
    <%
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:msg");
        Statement smt =con.createStatement
            (ResultSet.TYPE_SCROLL_INSENSITIVE,
        ResultSet.CONCUR_READ_ONLY);
        
        int num=0,lastno,lastpage,nowpage,prepage,nextpage,nostart,noend;
        String sql = "select * from message";        //���Xmessage�����Ҧ����
        ResultSet rs = smt.executeQuery(sql);
        
        rs.last();                                       //�N���в���̫�@��
        lastno = rs.getRow();                         //���X�`��Ƶ���
        lastpage = (int)Math.ceil((double)lastno/5);    //�p��̫�@�����s��
        
        if(request.getParameter("page") != null)      //���o�ǨӪ����X            
            try{
                nowpage = Integer.parseInt(request.getParameter("page"));
            }catch(Exception e){
                nowpage = Integer.parseInt(request.getParameter("p"));
            }
        else
            nowpage = lastpage;
        
        prepage = nowpage -1;                        //�W�@��
        nextpage = nowpage +1;                       //�U�@��
        if(nowpage == 1)                             //�P�_�O�_���Ĥ@��
            prepage =1;
        if(nowpage == lastpage)                      //�P�_�O�_���̫�@��
            nextpage = lastpage;
        
        nostart = nowpage * 5 -4;                    //�p��}�l�s��
        noend = nowpage * 5;                         //�p�⵲���s��
        sql = "select * from message where msgid between "+nostart+" and "+noend;
        rs = smt.executeQuery(sql);
        out.println("<table>");
        while(rs.next()){
           
            out.println("<tr><td bgcolor='pink'>�d���H</td><td>"+
                    rs.getString("msgname")+"</td><td rowspan='3'><img src='pic//icon"+num+".jpg'></td></tr>");
            out.println("<tr><td bgcolor='pink'>�T��</td><td>"+rs.getString("msgcontent")+"</td></tr>");
            out.println("<tr><td bgcolor='pink'>�ɶ�</td><td>"+rs.getString("msgdate")+"</td></tr>");
            out.println("<tr><td colspan=2><hr></td></tr>") ;
            num++;
            if(num==5)
                num=0;
        }
         out.println("</table><br>");
         con.close();
    %>
 
    <form action="main.jsp?p=<%=nowpage%>" method="post">
    <a href="msg.htm"><img src="pic//msg.jpg" border="0"></a>
    
    <a href='main.jsp?page=1'><img src=pic//first.jpg border=0></a> 
    <a href='main.jsp?page=<%=prepage%>'><img src=pic//previous.jpg border=0 ></a> 
    <a href='main.jsp?page=<%=nextpage%>'><img src=pic//next.jpg border=0 ></a> 
    <a href='main.jsp?page=<%=lastpage%>'><img src=pic//last.jpg border=0></a>�@
    
    
    �ثe���� <b><%=nowpage%></font> /<font color=red><%=lastpage%></b></font> 
    <br>
    
    ��J��ܪ����X�G 
    <input type="text" size="3" name="page">
    <input type="submit" value="��ܯd��"> 
    </form>
    </body>
</html>

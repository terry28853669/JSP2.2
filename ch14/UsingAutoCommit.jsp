<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>�ܽd���</title></head>
    <body>
    <%
    
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:webData");
        con.setAutoCommit(false) ; 
        Statement smt =  con.createStatement();
        
        String sql1 = "INSERT INTO Author"+
                      "(ID,Name,eMail,Phone,Address) "+
                      "VALUES "  +
                      "(2044,'���j��','kdv@testmail.com.tw','07-3334444',"+
                      "'�x�������M��32565�q215212����325655��')";
        
        String sql2 = "INSERT INTO Books"+
                      "(ID,Title,AuthorID,MemoText,ISBN,Amount) "+
                      "VALUES "  +
                      "(1005,'JSP�PJava��X���',2044,"+
                      "'���QJava�PJSP���ȶ}�o����X����','666-666-666-Z',100)";


        try{
            int resultCount1 =smt.executeUpdate(sql1) ; 
            if(resultCount1>0 ){
                int resultCount2=smt.executeUpdate(sql2) ;
                con.commit() ; 
                out.println("�@�̤��j��������ƿ�J����!!") ;             
            } else {
                out.println("�@�̤��j��������ƿ�J����!!") ;  
                con.rollback() ; 
            }
        }catch(Exception ex){
            out.println(ex.getMessage()+"<br>") ; 
            out.println("��ƿ�J���ѡA�Ҧ��ʧ@�^��!!") ;  
            con.rollback() ; 
        }

      %>
    </body>
</html>

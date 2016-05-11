<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>示範交易</title></head>
    <body>
    <%
    
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con = DriverManager.getConnection("jdbc:odbc:webData");
        con.setAutoCommit(false) ; 
        Statement smt =  con.createStatement();
        
        String sql1 = "INSERT INTO Author"+
                      "(ID,Name,eMail,Phone,Address) "+
                      "VALUES "  +
                      "(2044,'王大維','kdv@testmail.com.tw','07-3334444',"+
                      "'台中市中清路32565段215212號之325655樓')";
        
        String sql2 = "INSERT INTO Books"+
                      "(ID,Title,AuthorID,MemoText,ISBN,Amount) "+
                      "VALUES "  +
                      "(1005,'JSP與Java整合實務',2044,"+
                      "'探討Java與JSP於實務開發的整合應用','666-666-666-Z',100)";


        try{
            int resultCount1 =smt.executeUpdate(sql1) ; 
            if(resultCount1>0 ){
                int resultCount2=smt.executeUpdate(sql2) ;
                con.commit() ; 
                out.println("作者王大維相關資料輸入完成!!") ;             
            } else {
                out.println("作者王大維相關資料輸入失敗!!") ;  
                con.rollback() ; 
            }
        }catch(Exception ex){
            out.println(ex.getMessage()+"<br>") ; 
            out.println("資料輸入失敗，所有動作回覆!!") ;  
            con.rollback() ; 
        }

      %>
    </body>
</html>

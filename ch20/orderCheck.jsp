<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<html>
<head><title>�q�\�q�l��</title></head>
<body>
<%
request.setCharacterEncoding("Big5") ; 
String cancelValue ="" ; 
if(request.getParameter("cancel")!=null)
    cancelValue = request.getParameter("cancel") ; 

String nameorder = request.getParameter("nameorder") ; 
String mailorder = request.getParameter("mailorder") ; 
String checkMail = "SELECT * FROM list WHERE mail='" + mailorder + "'"  ;    

int updateCount=0 ; 

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:paper");
Statement smt =con.createStatement
    (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet chkResult = smt.executeQuery(checkMail) ; 

if(cancelValue.equals("yes")){
    if(chkResult.next() ==  true){
        String newOrder = "DELETE FROM list WHERE mail='"+mailorder+"'" ; 
        updateCount=smt.executeUpdate(newOrder) ;            
        if(updateCount==1)                     
            out.println("�l��a�} "+mailorder+" �w�����q�\ !!" );
    }else
        out.println("�l��a�} "+mailorder+" �L����q�\�O�� !!" );
}else{
    if(chkResult.next() !=  true){
        String newOrder = "INSERT INTO list(mail,name)VALUES('"+mailorder+"','"+nameorder+"')" ; 
        updateCount=smt.executeUpdate(newOrder) ;            
        if(updateCount==1){
             out.println("�˷R���@"+nameorder+"�@�|���z�n�G<br>" ); 
             out.println("�z�w�g���\�q�\ JSP �q�l���A�q�l������a�}�p�U�G<br>" );
             out.println("<b>" + mailorder+"</b>" );   
        }
    }else
         out.println("�l��a�} "+mailorder+" �w�q�\ !!" ); 
}       
%>
</body>
</html>

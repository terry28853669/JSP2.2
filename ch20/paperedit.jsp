<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<%@page import ="java.util.*,java.io.*"%>
<%@page import ="javax.mail.*"%>
<%@page import ="javax.mail.internet.*"%>
<%@page import ="javax.activation.*"%>
<%
    request.setCharacterEncoding("Big5") ; 
    String editType=request.getParameter("editType"); 
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:paper");
    Statement smt =con.createStatement
          (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String editSQL = ""   ; 
    boolean  editState=false;
    String title = request.getParameter("title") ; 
    String content = request.getParameter("content") ; 
    
    if(editType.equals("new")){
        editSQL = "INSERT INTO paper" + 
                    "(papertitle,papercontent)VALUES" + 
                    "('"+title+"','"+content+"')" ; 
        smt.execute(editSQL) ;  
        out.println("�q�l�s�W���� !!") ;
    }     
    if(editType.equals("update")){
        String paperid = request.getParameter("paperid") ; 
        editSQL = "UPDATE paper SET " + 
                        "papertitle='"+title+"'," + 
                        "papercontent='"+content+"' " + 
                   "WHERE " + 
                        "paperid=" + paperid ; 
        smt.execute(editSQL) ; 
        out.println("�q�l�ק粒�� !!") ; 
    }          
    if(editType.equals("published")){
        
        String paperid = request.getParameter("paperid") ; 
        String paperSQL="SELECT * FROM paper WHERE paperid=" +  paperid; 
        ResultSet theResultpaper = smt.executeQuery(paperSQL) ;
        theResultpaper.next() ; 
        String titlepublished = theResultpaper.getString("papertitle") ;
        String contentpublished = theResultpaper.getString("papercontent") ;        
        theResultpaper.close() ;         
        
        Properties theProperties = System.getProperties() ; 
        theProperties.put("mail.host","127.0.0.1") ; 
        theProperties.put("mail.transport.protocol","smtp") ;        
        String listSQL="SELECT * FROM list WHERE cancel=false" ; 
        ResultSet theResult = smt.executeQuery(listSQL) ;
        while(theResult.next()) { 
        
            String mail = theResult.getString("mail") ;     
            Session theSession = Session.getDefaultInstance(theProperties,null) ; 
            theSession.setDebug(false) ;     
            MimeMessage theMessage = new MimeMessage(theSession) ;     
            
            theMessage.setFrom(new InternetAddress("jsppaper@jspmail.com.tw") ) ;         
            theMessage.setRecipients(Message.RecipientType.TO,mail) ; 
            theMessage.setSubject(titlepublished) ;        
            theMessage.setText(contentpublished, "Big5") ; 
            Transport.send(theMessage) ; 
        }        
        GregorianCalendar theGregorianCalendar=new GregorianCalendar() ; 

        String publishdate = theGregorianCalendar.get(Calendar.YEAR)+"/"+
                theGregorianCalendar.get(Calendar.MONTH)+"/"+
                theGregorianCalendar.get(Calendar.DAY_OF_MONTH)  ;
                
        editSQL = "UPDATE paper SET " + 
                        "publishdate='"+publishdate+"', " + 
                        "published=true " + 
                   "WHERE " + 
                        "paperid=" + paperid ; 
        smt.execute(editSQL) ;         
       
        out.println("�q�l���w�o�� !!") ;              
    } 
%>
<html>   
    <head><title>�޲z���n�J����</title></head>
    <body>
        <br>
        <a  href="paperlist.jsp">
            <b>�˵��q�l���M��</b>
        </a>
    </body>
</html>






<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import ="java.util.*,java.io.*"%>

<%@page import ="javax.mail.*"%>
<%@page import ="javax.mail.internet.*"%>
<%@page import ="javax.activation.*"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <% 
        Properties theProperties = System.getProperties() ; 
        theProperties.put("mail.host","127.0.0.1") ; 
        theProperties.put("mail.transport.protocol","smtp") ; 
    
        Session theSession =
 		 Session.getDefaultInstance(theProperties,null) ; 
        theSession.setDebug(false) ;     
        
        MimeMessage theMessage = new MimeMessage(theSession) ;        
        theMessage.setFrom
 		(new InternetAddress("sean@testServer.com.tw") ) ;         
        theMessage.setRecipients
 		(Message.RecipientType.TO,"txw5558@mail.zct.com.tw") ; 
        
        theMessage.setSubject("JavaMail ���նl��") ;        
        MimeBodyPart theMimeBodytext = new MimeBodyPart() ;
        theMimeBodytext.setText("JSP�PJavaMail���նl�󤺮e..." ) ;
        
        MimeBodyPart theMimeBodyPart = new MimeBodyPart() ;
        String theFileName = "C:\\mailfile.doc" ; 
        FileDataSource theFileDataSource= 
 				new FileDataSource(theFileName) ; 
        theMimeBodyPart.setDataHandler
 				(new DataHandler(theFileDataSource)) ; 
        theMimeBodyPart.setFileName
 				(theFileDataSource.getName()) ; 
        Multipart theMultipart = new MimeMultipart();
        theMultipart.addBodyPart(theMimeBodyPart) ; 
        theMessage.setContent(theMultipart) ;        
        
        Transport.send(theMessage) ; 
        out.println("�l��H�e����") ;  
   %>
</body>
</html>
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import ="java.util.*"%>
<html>
    <head><title>�ϥ�GregorianCalendar</title></head>
    <body>
    <%!
    String toIcon(int timevalue){
        String time = String.valueOf(timevalue);
        String showIcon = "";
        int count = time.length();
        for(int i=0;i<count;i++)
            showIcon = showIcon + "<img src = '" + time.charAt(i) + ".jpg'>";
        return(showIcon);
    }
    %>
    <%
    GregorianCalendar time = new GregorianCalendar();
    int year,month,date,hour,minute,second;
    String msg;
    
    year=time.get(time.YEAR) ; 
    month=time.get(time.MONTH)+1 ; 
    date=time.get(time.DATE) ; 
    hour=time.get(time.HOUR) ; 
    minute=time.get(time.MINUTE) ; 
    second=time.get(time.SECOND) ; 
    
    out.println("<font size = '5'>�z�W�u���ɶ��O�G</font>");
    out.println("<hr>");
    out.println(
            toIcon(year) + "�~" + 
            toIcon(month) + "��" + 
            toIcon(date) + "��" + 
            toIcon(hour) + "��" + 
            toIcon(minute) + "��" + 
            toIcon(second) + "��");
    msg = (time.isLeapYear(year))?"�O":"���O";
    %>
    <hr>
    ���~ <font size = "5"><%=msg%></font> ��~
    </body>
</html>

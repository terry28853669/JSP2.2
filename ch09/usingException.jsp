<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>Exception �ҥ~</title></head>
    <body>
    <%
        String strErrMessage =
            "�o�@�q�Ocatch�l�y�Ҧ^�Ǫ����~�T�� !! <br>" ;
        try {
            String input = request.getParameter("input");
            int intNumber = Integer.parseInt(input);
            out.print("�z���w���}�C�ƥءG"+ intNumber + "<br><br>" );
            int a[]=new int[intNumber];

            for(int i=0;i<intNumber;i++){
                a[i]=i*10 ;
                out.println(a[i]) ;
                out.println(10/a[i]) ;
            }
        }
        catch(NumberFormatException e){
            out.println(strErrMessage+"<br>") ;
            out.println("���}�C���ѼƤ����T !! <br>") ;
            out.println("�Цb�ѼƦC��J��ƭ� !! <br>") ;
        }
        catch(ArrayIndexOutOfBoundsException e){
            out.println(strErrMessage+"<br>") ;
            out.println("�W�X�}�C�j�p");
        }
        catch(Exception e){
            out.println(strErrMessage+"<br>") ;
            out.println(e.getMessage()) ;
        }
        finally{
            out.println("<b><br><br>�{�����浲��  !! <b>");
        }
    %>
    </body>
</html>

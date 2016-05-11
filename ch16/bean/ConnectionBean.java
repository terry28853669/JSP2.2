package bean ;
import java.sql.*;

public class ConnectionBean{
private Connection conn=null;
private String dbs;
    public ConnectionBean(){
    }
    public Connection setConnection(String db){
        dbs="jdbc:odbc:"+db;
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            conn=DriverManager.getConnection(dbs);
        }
        catch (Exception e){
            System.out.println(e.toString());
        }
        return conn;
     }
} 

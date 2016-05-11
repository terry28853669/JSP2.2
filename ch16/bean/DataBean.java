package bean ;
import java.sql.*;

public class DataBean{
    private Connection conn=null;
    private ResultSet rs=null;
    private String dbs;

    public DataBean(){}

    public Connection setConnection(String db){
        dbs="jdbc:odbc:"+db;
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            conn=DriverManager.getConnection(dbs);
        }catch (Exception e){
            System.out.println(e.toString());
        }
        return conn;
    }
    public ResultSet getQuery(String sqls){
        try{
            Statement statement=conn.createStatement();
            rs= statement.executeQuery(sqls);
        }catch (Exception e){
            System.out.println(e.toString());
        }
        return rs;
    }
    public void setModify(String sqls){
        try{
            Statement statement=conn.createStatement();
            statement.executeUpdate(sqls);
        }
        catch (Exception e){
            System.out.println(e.toString());
        }
    }
}
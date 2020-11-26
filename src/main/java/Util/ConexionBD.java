
package Util;
  import   java.sql.*;
public class ConexionBD 
{

    public  static  Connection getConexionBD()
    {  Connection   cn=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost/bd_proyecto_web_v1","root","");
            System.out.println("Se conecto a la BD ");
        } catch (Exception e) {
            System.out.println("No Se conecto a la BD ");
        }
        return  cn;
    }
    
    public static void main(String[] args) 
    {
       getConexionBD() ;
    }
    
}

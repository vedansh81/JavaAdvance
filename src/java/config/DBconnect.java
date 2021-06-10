/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;




/**
 *
 * @author Vedansh
 */

    import static java.lang.System.out;
import java.sql.*;
public class DBconnect {
    public static Connection getConnection(){
        
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String path="jdbc:mysql://localhost:3325/javaadv";
            String user="root";
            String pass="";
            
            con = DriverManager.getConnection(path,user,pass);
        }
        catch(ClassNotFoundException | SQLException e){
           out.println("Exception of Connection" + e);   
        }
        
        
        return con;
        
        
    }
    
    
}


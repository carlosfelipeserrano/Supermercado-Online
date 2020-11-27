/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Victor nuñez
 */
public class conectorbd {
       static String url="jdbc:mysql://localhost:3306/tienda";
       static String usuario = "root";
       static String pass = "";
        
        public static Connection conectar(){
            Connection conexion = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection(url,usuario,pass);
                System.out.println("conexion establecida");
                
            }catch(ClassNotFoundException | SQLException e){
                System.out.println("nose pudo conectar:"+e);
                
                
            }
            
            
            return conexion;
            
        
        }
        
         
      
        
    
    
}


import MODELO.conectorbd;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Victor nuñez
 */
public class metodossql {
    private static Connection conexion;
    private static PreparedStatement sentencia_Preparada;
    private static ResultSet resultado;
    
    public void guardar_datos(String nombre, int tipoProducto){
        
        /*try{
            conexion = conectorbd.conectar();
        }catch{
            
        }
    
    }
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class ArticuloController {
    
    
    private ConexionBaseDeDatos conectorBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null;
    
    
      public void abrirConexion(){
        conectorBD= new ConexionBaseDeDatos();
        conexion=conectorBD.conectar();
    }    
    
    
       public String guardarArticulo2(Articulo articulo){        
        String sql = "INSERT INTO final_progra.articulo(codigo_articulo, nombre_articulo, alias, fecha_registro, id_categoria)";
             sql += " VALUES(?,?,?,?,?)";              
       try{     
            abrirConexion();
            statement = conexion.prepareStatement(sql); 
            statement.setInt(1, articulo.getCodigo());
            statement.setString(2, articulo.getNombre());
            statement.setString(3, articulo.getAlias());
            statement.setString(4, articulo.getFecha());
            statement.setInt(5, articulo.getCategoria());
            
                int resultado = statement.executeUpdate(); 
                if(resultado > 0){
                    return String.valueOf(resultado);
                }else{
                    return String.valueOf(resultado);
                }
        }catch(SQLException e){ 
            return e.getMessage();
        }
    }
    
      
    
       
       
       
       
       
       
    
}

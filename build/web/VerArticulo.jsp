<%-- 
    Document   : VerArticulo
    Created on : 12/11/2022, 08:17:25
    Author     : alumno
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver catogoria</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
         <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                min-height: 100vh;
                background-image: url("");
                background-size: 100%;
                background-position: center center;
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
        
        
        
    </head>
    <body>
        
        <%
            //conectando a base de datos
            Connection conexion=null;
            String url="jdbc:mysql://localhost:3306/final_progra";//url de MySQL
            String usuario="root";// usuario de mysql local
            String clave="Umg$2019"; 
           
            
             Class.forName("com.mysql.jdbc.Driver");
             conexion=DriverManager.getConnection( url, usuario,clave);
             
             //listado de la tabla
             
             PreparedStatement ps;
             ResultSet rs;
             ps=conexion.prepareStatement("select * from articulo");
             rs=ps.executeQuery();
             
             //creacion de tabla
             

            %>
        
            
             
            
            <div class="p-3 bd-highlight">
            <a class="btn btn-warning" href="home.jsp" style="float: right;">Back</a>
            <div class="container" id="container2">
                <table class="table table-striped table-hover bg-white">
                    <thead class="table-dark">
                       
                        <tr>
                            <td>Codigo</td>
                            <td>Nombre</td>
                            <td>Alias</td>
                            <td>fecha registro</td>
                             <td>ID categoria</td>
                            
                        </tr>
                     
                    </thead>
                    <tbody id="bodyTable">

                    </tbody>    
                    
                    <%
                        
                        while(rs.next()){

                    %>
                    
                    
                    <tr>
                        <td><%= rs.getInt("codigo_articulo") %></td>
                        <td><%= rs.getString("nombre_articulo") %></td>
                        <td><%= rs.getString("alias") %></td>
                        <td><%= rs.getString("fecha_registro") %></td>
                        <td><%= rs.getString("id_categoria") %></td>
                      
                        <td class="text-center"> 
                                                
                        
                           
                        </td>
                    </tr>
                    <% } %>
                    
                </table>
            </div>
        </div> 
        
        
        
    </body>
</html>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        

        
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
       
          <div class="container-sm">
                  
        </div>
            
            
            
            <div class="d-flex justify-content-around mx-4 my-5">
                              
                <div class="shadow-lg p-3 bg-white rounded">
                             
                    <c:if test="${success ==0}">
                    <div class="alert alert-danger" id="error">${mensaje}</div>
                </c:if>
               
                    
         
            <form action="NewServlet" method="POST">
                
                <div class="mt-3 mb-5 mx-4">
                        
                  <h3 class="display-8 text-center my-4">  INICIAR SESIÓN </h3>
                        
          <div class="row my-3">
              <label for="Usuario">Usuario</label>
              <input type="text" class="form-control" name="user" id="user"  placeholder="Ingrese usuario">          
            </div>
                
               
                
            <div class="row my-3">
              <label for="exampleInputPassword1">Contraseña</label>
              <input type="password" class="form-control" name="pass" id="exampleInputPassword1" placeholder="Ingrese contraseña">
            </div>
           <br>
                <input type="submit" value="Entrar" class="btn btn-primary "></button>
                
            
                
          </form>
        </div>
    </body>
</html>

<%-- 
    Document   : formularioUsuario
    Created on : 18 jun 2020, 20:57:27
    Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Registro usuario</title>
    </head>
    <body>
        <div class="container">
            <h1> Agregar un nuevo usuario</h1>
            <form  action="agregarUsuario.jsp" method="POST">
                <div class="form-group">
                    <label>Nombre de usuario:</label>
                    <input type="text" class="form-control" placeholder="usuario" name="usuario" id="usuario" required/>
                </div >
                <div class="form-group">
                    <label>Contraseña:</label>
                    <input type="password" class="form-control" placeholder="password" name="password" id="password" required/>
                </div>
                <div class="form-group">
                    <label>Edad:</label>
                    <input type="text" class="form-control" placeholder="edad" name="edad" id="edad" required/>
                </div >
                <input type="submit" align="center" class="btn btn-primary" value="enviar"/>
                <a  class="btn btn-danger" href="index.jsp" role="button">Cancelar</a>
            </form>
        </div>
    </body>
</html>
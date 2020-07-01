<%-- 
    Document   : formularioEditaUsuario
    Created on : 19 jun 2020, 18:14:59
    Author     : izelo
--%>
<%@page import="formularios.UsuarioDb"%>
<%@page import="java.sql.*"%>
<%      int id = Integer.parseInt(request.getParameter("id"));
        UsuarioDb user = new UsuarioDb();
        user.validaId(id);   %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Actualizaci&oacute;n de usuario</title>
    </head>
    <body>
        <div class="container">
            <h1>Actualiza el usuario</h1>
            <form  action="editarUsuario.jsp" method="POST">
                <div class="form-group">
                    <input type="hidden" name="id_usuario" value="<%=id%>"/>
                </div>
                <div class="form-group">
                    <label>Nuevo nombre de usuario:</label>
                    <input type="text" class="form-control" placeholder="usuario" name="usuario" required/>
                </div >
                <input type="submit" class="btn btn-primary" value="Actualizar"/>
                <a class="btn btn-danger" href="index.jsp" role="button">Cancelar</a>
            </form>
        </div>
    </body>
</html>
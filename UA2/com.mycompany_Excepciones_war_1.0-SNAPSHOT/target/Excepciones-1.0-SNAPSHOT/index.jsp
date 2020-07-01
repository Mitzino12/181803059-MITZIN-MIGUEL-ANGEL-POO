<%-- 
    Document   : index
    Created on : 1 jun. 2020, 9:09:15
    Author     : izelo
--%>
<%@page import="java.util.List"%>
<%@page import="formularios.UsuarioDb"%>
<%@page import="formularios.Usuario"%>
<%@page import="conection.Conexion"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    table, th, td {
        border: 1px solid black;
    }
    tr{
        font-size: 18px;
        font-family: Arial;
    }
    h1, h3{
        font-size: 25px;
        font-family: Arial;
    }
</style>
<%
    List<Usuario> usuarios = new UsuarioDb().ListadoUsuarios();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Usuario</title>
    </head>
    <body>
        <br><br> <div style="text-align:center">
            <table>
                <h3 style="text-align:center;color:black">USUARIOS</h3>
                <tr>
                    <td><a style="text-align: right" class="btn btn-primary" href="formularioUsuario.jsp" role="button">Agregar un usuario</a></td>
                </tr>
                <table style="margin: 0 auto;" class="table">
                    <thead  class="btn-primary">
                    <th scope="col">ID</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Contraseña</th>
                    <th scope="col">Edad</th>
                    <th scope="col">Opciones</th>
                    </thead>
                    <tr>
                        <%for (Usuario usuario : usuarios) {%>
                        <td scope="row"><%= usuario.getIdUsuario()%></td>
                        <td scope="row"><%= usuario.getUsuario()%></td>
                        <td scope="row"><%= usuario.getPassword()%></td>
                        <td scope="row"><%= usuario.getEdad()%></td>
                        <td> 
                            <a class="btn btn-primary" href="formularioEditaUsuario.jsp?id=<%= usuario.getIdUsuario()%>">Editar usuario</a>
                            <a class="btn btn-primary" href="formularioEditaContra.jsp?id=<%= usuario.getIdUsuario()%>">Editar contraseña</a>
                            <a class="btn btn-primary" href="formularioeliminaUsuario.jsp?id=<%= usuario.getIdUsuario()%>">Eliminar usuario</a>
                            <a class="btn btn-primary" href="formularioeliminaUsuariov2.jsp?id=<%= usuario.getIdUsuario()%>">Eliminar usuario v2</a>
                        </td>
                    </tr>
                    <%}%>
                </table>
        </div>  <br><br> 
    </body>
</html>
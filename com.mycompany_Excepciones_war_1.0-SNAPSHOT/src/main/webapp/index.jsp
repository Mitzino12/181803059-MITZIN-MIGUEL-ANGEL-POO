<%-- 
    Document   : index
    Created on : 1 jun. 2020, 9:09:15
    Author     : izelo
--%>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JavaBoostrap</title>
    </head>
    <body>
    </body>
    <%
        Connection conexion = null;
        Statement stmt = null;
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuario");
    %><br><br> <div style="text-align:center">
        <table>
            <h3 style="text-align:center;color:black">USUARIOS</h3>
            <tr>
                <!--<td colspan="3"><h2> Registro de usuarios</h2></td>-->
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
                <%
                    while (rs.next()) {
                %>
                <tr>
                    <td scope="row"><%= rs.getInt("id_usuario")%></td>
                    <td scope="row"><%= rs.getString("usuario")%></td>
                    <td scope="row"><%= rs.getString("password")%></td>
                    <td scope="row"><%= rs.getString("edad")%></td>
                    <td> 
                        <a class="btn btn-primary" href="formularioEditaUsuario.jsp?id=<%= rs.getInt("id_usuario")%>">Editar usuario</a>
                        <a class="btn btn-primary" href="formularioEditaContra.jsp?id=<%= rs.getInt("id_usuario")%>">Editar contraseña</a>
                        <a class="btn btn-primary" href="formularioeliminaUsuario.jsp?id=<%= rs.getInt("id_usuario")%>">Eliminar usuario</a>
                    </td>
                </tr>
                <%}%>
            </table>
    </div>  <br><br>
</html>

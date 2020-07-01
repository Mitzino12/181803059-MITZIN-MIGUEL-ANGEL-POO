<%-- 
    Document   : formularioEditaContra
    Created on : 19 jun 2020, 19:30:44
    Author     : izelo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    int id = 0;
    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ", "root", "");
            stmt = conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuario=? ");
            stmt.setInt(1, id);
            rs=stmt.executeQuery();
            rs.next();
            
        } catch (Exception e) {
            out.println(e.getMessage());
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Contraseña</title>
    </head>
    <body>
        <div class="container">
            <h1>Cambiar contraseña</h1><br>
            <form action="editaContraseña.jsp" method="GET" class="form">
                
                    <div class="col" >
                        <input type="hidden" value="<%=id%>" class="form-control" placeholder="id" name="id_usuario" />
                    </div>
                    <div class="form-group">
                        <label>Teclee su contraseña actual:</label>
                        <input type="password" class="form-control" placeholder="Contraseña Actual"  name="password" required />
                    </div>
                    <div class="form-group">
                        <label>Teclee su nueva contraseña:</label>
                        <input type="password" class="form-control" placeholder="Nueva Contraseña"  name="pass1" required />
                    </div>
                    <div class="form-group">
                        <label>Vuelva a teclear su nueva contraseña:</label>
                        <input type="password" class="form-control" placeholder="Confirmar Contraseña"  name="pass2" required />
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-success btn-black"  value="Enviar"/>
                        <a class="btn btn-info btn-black" href="index.jsp">Regresar</a>
                    </div>
            </form>
        </div>
    </body>
</html>

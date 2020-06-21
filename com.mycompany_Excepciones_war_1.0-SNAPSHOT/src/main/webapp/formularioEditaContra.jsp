<%-- 
    Document   : formularioEditaContra
    Created on : 19 jun 2020, 19:30:44
    Author     : izelo
--%>
<%@page import="java.sql.*"%>
<%
    String usuario = "";
    String passAtual = "";
    int id = 0;
    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
            stmt = conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuario=?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            usuario = rs.getString("usuario");
            passAtual = rs.getString("password");
            //out.println(passAtual);
        } catch (Exception e) {
            out.println(e.getMessage());
        }

    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Actualizacion de contraseña</title>
    </head>
    <body>
        <form  action="editaContraseña.jsp" method="POST">
            <div class="form-group">
                <h1>Actualiza la contraseña</h1>
                <input type="hidden" name="id_usuario" value="<%=id%>"/>
                <input type="hidden" name="passdb" value="<%=passAtual%>"/>
            </div>
            <div class="form-group">
                <label>Usuario:</label>
                <h2><%out.println(usuario);%></h2>
            </div>
            <div class="form-group">
                <input type="hidden" name="id_usuario" value="<%=id%>"/>
            </div>
            <div class="form-group">
                <label>Teclee su antigua contraseña:</label>
                <input type="password" placeholder="contraseña" name="passworda" required/>
                <label>Nueva contraseña:</label>
                <input type="password" placeholder="password" name="password" required/>
                <label>Teclee una vez m&aacute;s su nueva contraseña:</label>
                <input type="password" placeholder="contraseña" name="passwordc" required/>
            </div >
            <input type="submit" value="Actualizar"/>
            <!--<input type="submit" href="editaContraseña.jsp?passdb="passDba" apass="passworda" cpass="passwordc" pk="id_usuario" value="Actualizar"/>-->
            <a class="btn btn-primary" href="index.jsp" role="button">Cancelar</a>
        </form>
    </div>
</body>
</html>

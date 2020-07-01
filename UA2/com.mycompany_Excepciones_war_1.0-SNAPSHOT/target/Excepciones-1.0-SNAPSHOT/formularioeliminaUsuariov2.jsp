<%-- 
    Document   : formularioeliminaUsuariov2
    Created on : 24 jun 2020, 19:58:47
    Author     : izelo
--%>

<%@page import="formularios.UsuarioDb"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eliminar usuariov2</title>
    </head>
    <body>
        <%  int id_usuario = Integer.parseInt(request.getParameter("id"));
            UsuarioDb user = new UsuarioDb();
            user.eliminarUsuariov2(id_usuario);
            response.sendRedirect("index.jsp");%>
    </body>
</html>
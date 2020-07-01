<%-- 
    Document   : index
    Created on : 20 may 2020, 21:11:07
    Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Impresión de un número</title>
    </head>
    <body>
        <form method="POST"> 
            <input type="text" name="num"/><br>
            <input type="submit" value="enviar"/>
        </form>
        <h1>Los datos ingresados son:</h1>
        <%
            try {
                int num;
                String n = request.getParameter("numero");
                num = Integer.valueOf(n);
                for (int i = 0; i <= num; i++) {
                    out.println(i);
                }
            } catch (Exception e) {
                System.out.println("Error al leer el ");
            }
        %>
    </body>
</html>

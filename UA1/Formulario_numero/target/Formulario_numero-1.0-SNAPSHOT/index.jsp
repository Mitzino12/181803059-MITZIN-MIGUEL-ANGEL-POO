<%-- 
Document   : index
Created on : 20 may 2020, 23:46:46
Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">+
        <title>JSP Page</title>
    </head>
    <body>
        <h1>El programa que debio ser y no fue (sin TRY,SIN JAVASCRIP, SIN PROBLEMA DE GLASSHFISH</h1>
        <%
            if ((request.getParameter("num")) != null && request.getParameter("num") != "") {%>
        <h2>El ciclo del valor ingresado es: </h2>
        <%int n = Integer.parseInt(request.getParameter("num"));
            for (int i = 0; i <= n; i++) {
                out.println(i + "/");
            }%>
        <form> 
            <input type="hidden" name="num" value=""/><br>
            <input type="submit" value="Regresar"/>
        </form>
        <%
        } else {%>       
        <form> 
            Numero:
            <input type="number" name="num" required/><br>
            <input type="submit" value="Enviar"/>
        </form>
        <h3>No has ingresado ningun número </h3>
        <%}
        %>
    </body>
</html>

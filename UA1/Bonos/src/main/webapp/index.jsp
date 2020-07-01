<%-- 
    Document   : index
    Created on : 25 may 2020, 22:27:36
    Author     : izelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bonos Mitzino</h1>
        <%if ((request.getParameter("bono")) != null && request.getParameter("bono") != "") {
        double bono  = Double.parseDouble(request.getParameter("bono"));
        double jefe  = Double.parseDouble(request.getParameter("EvaJefe"));
        double EvaJefe = ((bono*.4d)/10)*jefe;
        double comision  = Double.parseDouble(request.getParameter("EvaComision"));
        double EvaComision = ((bono*.1d)/10)*comision;
        double clima  = Double.parseDouble(request.getParameter("EvaClima"));
        double EvaClima = ((bono*.1d)/10)*clima;
        double bitacora  = Double.parseDouble(request.getParameter("EvaBit"));
        double EvaBit = ((bono*.4d)/10)*bitacora;
        double ttl= EvaJefe + EvaComision + EvaClima + EvaBit;
        %>
        <h2>Bono a recibir: </h2>
        <% out.println("$ " + ttl);%>
        <form> 
            <input type="hidden" name="num" value=""/><br>
            <input type="submit" value="Regresar"/>
        </form>
        <%
        } else {%>       
        <form> 
            Bono a recibir:
            <input type="number" name="bono" required min="0" value="0" step="any"/><br>
            Evaluación jefe:
            <input type="number" name="EvaJefe" required min="0" value="0" step="any"/><br>
            Evaluación de comisión:
            <input type="number" name="EvaComision" required min="0" value="0" step="any"/><br>
            Evaluación de clima:
            <input type="number" name="EvaClima" required min="0" value="0" step="any"/><br>
            Evaluación de bitácora:
            <input type="number" name="EvaBit" required min="0" value="0" step="any"/><br>
            <input type="submit" value="Enviar"/>
        </form>
        <h3>No has ingresado ningun número </h3>
        <%}
        %>
    </body>
</html>

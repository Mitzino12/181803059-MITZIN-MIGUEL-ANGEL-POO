<%-- 
    Document   : index
    Created on : 29 may 2020, 9:00:44
    Author     : izelo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/cerveza", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from cerveza");
        while (rs.next()) {
        out.println(rs.getString(1));
        out.println(rs.getString(2));
        out.println(rs.getString(3));
        out.println(rs.getString(4));
        %><br></br><%
            }
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>

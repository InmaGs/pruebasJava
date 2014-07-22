<%-- 
    Document   : saludo
    Created on : 22-jul-2014, 9:31:17
    Author     : inmaculada.garcia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page Saludo</title>
    </head>
    <body>
        <h1>Prueba de saludo a traves de un action</h1>
        <p><s:property value="mensaje"/></p>
        <p><a href="index.jsp">Inicio</a></p>
    </body>
</html>

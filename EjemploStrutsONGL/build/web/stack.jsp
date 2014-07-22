
<?xml version="1.0" encoding="UTF-8"?>
<%-- 
    Document   : stack
    Created on : 21-jul-2014, 11:57:29
    Author     : inmaculada.garcia
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@taglib  uri="/struts-tags" prefix="s" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Prueba del uso del OGNL de Struts2</h1>
        <ul>
            <li><strong>Raza: </strong> <s:property value="raza" /></li>
            <li><strong>Salario: </strong> <s:property value="salario"/></li>
            <li><strong>Nombre: </strong> <s:property value="nombre"/> </li>
        </ul>
            <%-- Usamos el ValueStack por medio de índices: --%>
        <ul>
            <li><strong>Animal: </strong> <s:property value="[0].nombre"/></li>
            <li><strong>Persona: </strong> <s:property value="[1].nombre"/> </li>
        </ul>
        <p><a href="index.jsp">Inicio</a></p>
    </body>
</html>

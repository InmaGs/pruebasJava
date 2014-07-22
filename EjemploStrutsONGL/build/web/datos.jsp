<%-- 
    Document   : datos
    Created on : 22-jul-2014, 9:57:37
    Author     : inmaculada.garcia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Prueba de Sesión con Struts2</h1>
        <p>
            <%-- referenciamos el objeto datoSesion por medio del atributo #session,
                ya que no es la raíz del mapa de contexto--%>
            <s:property value="#session.datoSesion" /><br/>
            <%-- También se puede hacer de la forma <s:property value="#session['datoSesion']"/> --%>
            <%-- Añadimos una etiqueta para meter por parámetro un valor --%>
            <s:property value="#parameters.dato" /><br/>
            <%-- Luego tendremos que añadir a la dirección el dato:
                http://localhost:8080/EjemploStrutsONGL/datos.action?dato=ValorDato --%>
            <%-- Ahora, el objeto attr buscará el valor del atributo datoSesion--%>
            <s:property value="#attr.datoSesion"/>
        </p>
        <p><a href="index.jsp">Inicio</a></p>
    </body>
</html>

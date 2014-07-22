<%-- 
    Document   : constantes
    Created on : 22-jul-2014, 10:45:39
    Author     : inmaculada.garcia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page Ejemplo Struts</title>
    </head>
    <body>
        <h1>Uso de constantes y parámetros</h1>
        <p>
            <%-- creamos un objeto nuevo de la clase constantes y obtenemos el valor del atributo --%>
            <s:property value="new com.javatutoriales.struts2.ognl.Constantes().atributo"/><br/>
            <%-- Ahora, invocamos un método de instancia --%>
            <s:property value="new com.javatutoriales.struts2.ognl.Constantes().metodoDeInstancia()"/><br/>
            <%-- Invocando los métodos estáticos: --%>
            <s:property value="new com.javatutoriales.struts2.ognl.Constantes().metodoEstatico()" /><br/>
            <s:property value="new com.javatutoriales.struts2.ognl.Constantes().valor"/><br/>
            <%--NOTA: A mí no me aparece nada con estos dos últimos métodos. En el segundo caso
                es debido a que se intenta invocar a un método getValor(), que no existe, pero
                en el primer caso sólo funciona si modificamos el archivo web.xml, añadiendo el 
                valor que permite llamar a métodos estáticos al filtro --%>
            
            <%-- Para que aparezca la constante, tanto en la clase como en el miembro a invocar
                hay que añadir @:--%>
            <s:property value="@com.javatutoriales.struts2.ognl.Constantes@valor"/><br/>
            <s:property value="@com.javatutoriales.struts2.ognl.Constantes@metodoEstatico()"/><br/>
            <%-- En éste último caso tampoco sale nada, ya que de esta manera no se puede invocar
                a un método estático. Para que esto funcione, hay que modificar el archivo web.xml--%>
            
            <%-- Ahora, pasamos un valor para los parámetros --%>
            <s:property value="@com.javatutoriales.struts2.ognl.Constantes@metodoEstatico('Hola Estatico')"/><br/>
            <s:property value="new com.javatutoriales.struts2.ognl.Constantes().metodoDeInstancia('Hola Instancia')"/><br/>
            
            <%-- También se puede pasar por parámetro una constante obtenida anteriormente: --%>
            <s:property value="new com.javatutoriales.struts2.ognl.Constantes().metodoDeInstancia(@com.javatutoriales.
                        struts2.ognl.Constantes@valor)"/><br/>
            
            <%-- Obtenemos los datos de la enumeración declarada en la clase. Es una 'clase especial' --%>
            <s:property value="@com.javatutoriales.struts2.ognl.Constantes$Datos@PRIMERO"/><br/>
            <s:property value="@com.javatutoriales.struts2.ognl.Constantes$Datos@SEGUNDO"/><br/>
            
            <%-- Y al ser una clase, se pueden llamar a métodos en su interior--%>
            <s:property value="@com.javatutoriales.struts2.ognl.Constantes$Datos@TERCERO.dato"/><br/>
            <%-- también se puede llamar: ...@TERCERO.getDato()--%>
            
            <%-- Se pueden definir en este tipo de etiquetas arrays: --%>
            <s:property value="new int[]{1,2,3,4,5}"/>
            <%-- E incluirlos en listas desplegables: --%>
            <s:select name="valores" list="new int[]{1,2,3,4,5}"/><br/>
            <%-- También se pueden inicializar a null: new int[5] --%>
            
            <%-- Si no queremos usar arrays, se pueden definir como una lista: --%>
            <s:property value="{'uno','dos','tres','cuatro','cinco'}"/>
            <s:select name="lista" list="{'uno','dos','tres','cuatro','cinco'}"/><br/>
            
            <%-- Y, por último, creamos un Map --%>
            <s:property value="#{'uno':'1','dos':'2','tres':'3','cuatro':'4','cinco':'5'}"/>
            <s:select name="enum" list="#{'uno':'1','dos':'2','tres':'3','cuatro':'4','cinco':'5'}"/><br/>
            
            <%-- Para implementar el Map anterior, se puede hacer de la forma: --%>
            <%-- lista ordenada según indicamos: --%>
            <s:property value="#@java.util.LinkedHashMap@{'uno':'1','dos':'2','tres':'3','cuatro':'4',
                        'cinco':'5'}"/><br/>
            <%-- lista ordenada alfabeticamente: --%>
            <s:property value="#@java.util.TreeMap@{'uno':'1','dos':'2','tres':'3','cuatro':'4',
                        'cinco':'5'}"/><br/>
            <%-- aquí no sé como lo ordena: --%>
            <s:property value="#@java.util.HashMap@{'uno':'1','dos':'2','tres':'3','cuatro':'4',
                        'cinco':'5'}"/><br/>
            
        </p>
        <p>
            <a href="index.jsp">Inicio</a>
        </p>
    </body>
</html>

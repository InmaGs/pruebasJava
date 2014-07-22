/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.javatutoriales.struts2.ognl;

/**
 *
 * @author inmaculada.garcia
 */
public class Constantes {
    
    private String atributo = "atributo de instancia";
    public final static String valor = "variable estatica";
    
    //Enumeración de datos. Contiene el método que obtiene el valor del dato.
    //Cada uno de sus valores es una constante y sus valores se obtienen como otro valor
    //de una variable estatica.
    private static enum Datos{PRIMERO, SEGUNDO, TERCERO; public String getDato(){return "dato";}};
    
    public String getAtributo(){
        return atributo;
    }
    
    //Método que regresa una cadena y no recibe parámetros:
    public String metodoDeInstancia(){
        return "metodo de instancia";
    }
    
    //Método que es sobrecarga del anterior y éste sí recibe una cadena:
    public String metodoDeInstancia(String mensaje){
        return mensaje;
    }
    
    //Se añaden versiones estáticas de los dos métodos anteriores:
    public static String metodoEstatico()
    {
        return "metodo estatico";
    }
    
    public static String metodoEstatico(String mensaje){
        return mensaje;
    }   
}

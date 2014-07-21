/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.javatutoriales.struts2.ognl.modelo;

/**
 *
 * @author inmaculada.garcia
 */
public class Persona {
    
    private String nombre;
    private String salario;
    
    public String getNombre(){
        return nombre;
    }
    
    public void setNombre(String nombre){
        this.nombre=nombre;
    }
    
    public String getSalario(){
        return salario;
    }
    
    public void setSalario(String salario){
        this.salario=salario;
    }
}

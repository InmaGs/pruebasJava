/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.javatutoriales.struts2.ognl;

//Añadimos los paquetes que ejecutan las anotaciones y el action support.
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.convention.annotation.Action; 
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import com.opensymphony.xwork2.util.ValueStack;

//Llamamos a las clases de modelo
import com.javatutoriales.struts2.ognl.modelo.Animal;
import com.javatutoriales.struts2.ognl.modelo.Persona;

/**
 *
 * @author inmaculada.garcia
 */

//Asignamos los valores de las anotaciones.
@Namespace(value="/")
@Action(value="Stack", results={@Result(location="/Stack.jsp")})

//Extendemos la clase principal
public class StackAction extends ActionSupport{
    
    @Override
    //Se sobre-escribe el método execute
    public String execute() throws Exception{
        ValueStack stack = ActionContext.getContext().getValueStack();
        
        //Instanciamos las clases de modelo: Animal y Persona
        
        Animal animal = new Animal();
        animal.setNombre("Nombre del Animal");
        animal.setRaza("Perro Labrador");
        
        Persona persona = new Persona();
        persona.setNombre("Nombre de la Persona");
        persona.setSalario("Salario Precario");
        
        stack.push(animal);
        stack.push(persona);
        
        return SUCCESS;
    }
}

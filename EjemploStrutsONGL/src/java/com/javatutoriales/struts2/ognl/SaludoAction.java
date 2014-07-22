/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.javatutoriales.struts2.ognl;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

/**
 *
 * @author inmaculada.garcia
 */    
@Namespace("/")
@Action(value="saludo", results={@Result(location="/saludo.jsp")})

public class SaludoAction extends ActionSupport {
    
    private String mensaje;
    
    @Override
    public String execute() throws Exception {
        mensaje = "Inma te saluda";
        
        return SUCCESS;
    }
    
    public String getMensaje(){
        return mensaje;
    }
}

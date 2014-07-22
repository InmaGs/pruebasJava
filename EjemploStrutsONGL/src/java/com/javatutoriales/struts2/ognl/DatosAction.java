/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.javatutoriales.struts2.ognl;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

/**
 *
 * @author inmaculada.garcia
 */

@Namespace(value="/")
@Action(value="datos", results={@Result(location="/datos.jsp")})

public class DatosAction extends ActionSupport {
    
    @Override
    public String execute() throws Exception{
        
        ActionContext.getContext().getSession().put("datoSesion", "dato en la sesion");
        return SUCCESS;
    }
}

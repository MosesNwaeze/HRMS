/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.org.controller;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.io.Serializable;
import com.org.client.PayrollClient;

/**
 *
 * @author Moses Nwaeze
 */
@ManagedBean(name = "payrollcontroller",eager = true)
@SessionScoped
public class PayrollController implements Serializable {
    private static final Long serialVersionUID = 1L;
    
    public PayrollController() {
    }
    
}

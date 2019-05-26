
package com.org.controller;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.io.Serializable;
import com.org.client.DepartmentClient;
/**
 *
 * @author Moses Nwaeze
 */
@ManagedBean(name = "departmentcontroller",eager = true)
@SessionScoped
public class DepartmentController implements Serializable {
    private static final Long serialVersionUID = 1L;
    public DepartmentController() {
    }
    
}

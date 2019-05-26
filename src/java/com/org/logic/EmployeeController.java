package com.org.logic;

import com.org.client.EmployeeClient;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.Response;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class EmployeeController {

    //private static final Long serialVersionUID = 1L;
    private final EmployeeClient client;

    public EmployeeController() {
        client = new EmployeeClient();
    }

    public EmployeeClient getClient() {
        return client;
    }

    public List<JSONObject> findAllEmployee() {
        List<JSONObject> lj = new ArrayList<>();
        try {
            JSONArray array = new JSONArray(client.findAll());
            for (int i = 0; i < array.length(); i++) {
                JSONObject obj = array.getJSONObject(i);
                lj.add(obj);
            }
            return lj;
        } catch (JSONException e) {
            System.err.println(e.getMessage());
            return lj;
        }
    }

    public JSONObject findEmployee(String employeeID) throws JSONException {
        return new JSONObject(client.find(employeeID));
    }

    public String count() {
        return client.countREST();
    }

    public String deleteEmployee(String employeeID) {
        Response resp = client.remove(employeeID);
        if (resp.getStatus() == Response.Status.OK.getStatusCode()) {
            return "Employee successfull Removed";
        } else {
            return "Requested Removal operation cannot be performed at the moment";
        }
    }

    public boolean createEmployee(Form form) {
        Response resp = client.create(form);
        return resp.getStatus() == Response.Status.OK.getStatusCode();
    }

    public boolean updateEmployee(String empid, Form form) {
        Response resp = client.update(empid, form);
        return resp.getStatus() == Response.Status.OK.getStatusCode();
    }

}

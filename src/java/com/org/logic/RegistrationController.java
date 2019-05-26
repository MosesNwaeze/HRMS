package com.org.logic;

import com.org.client.RegistrationClient;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.Response;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RegistrationController {

    private final RegistrationClient client;

    public RegistrationController() {
        client = new RegistrationClient();
    }

    public RegistrationClient getClient() {
        return client;
    }

    public List<JSONObject> findAllRegistered() {
        List<JSONObject> lj = new ArrayList<>();
        try {
            JSONArray array = new JSONArray(client.findAllEntity());
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

    public JSONObject findRegistered(String email) throws JSONException {
        return new JSONObject(client.findEntity(email));
    }

    public String deleteRegistered(String email) {
        Response resp = client.remove(email);
        if (resp.getStatus() == Response.Status.OK.getStatusCode()) {
            return "Employee successfull Removed";
        } else {
            return "Requested Removal operation cannot be performed at the moment";
        }
    }

    public String count() {
        return client.countREST();
    }

    public boolean createRegistration(Form form) {
        Response resp = client.create(form);
        if (resp.getStatus() == Response.Status.OK.getStatusCode()) {
            return true;
        }
        return false;
    }

    public boolean updateRegistered(Form form) {
        Response resp = client.update(form);
        return resp.getStatus() == Response.Status.OK.getStatusCode();
    }

    public String getEmployeeID(String username) {
        List<JSONObject> registered = findAllRegistered();
        try {
            for (JSONObject obj : registered) {
                if (username.equalsIgnoreCase(obj.getString("EmployeeID"))) {
                    return obj.getString("EmployeeID");
                } else if (username.equalsIgnoreCase(obj.getString("Email"))) {
                    return obj.getString("EmployeeID");
                }
            }
            return "Invalid EmployeeID";
        } catch (JSONException ex) {
            System.err.println(ex.getCause());
            return "";
        }
    }

    public String getEmail(String username) {
        List<JSONObject> registered = findAllRegistered();
        try {
            for (JSONObject obj : registered) {
                if (username.equalsIgnoreCase(obj.getString("EmployeeID"))) {
                    return obj.getString("Email");
                } else if (username.equalsIgnoreCase(obj.getString("Email"))) {
                    return obj.getString("Email");
                }
            }
            return "Invalid Email";
        } catch (JSONException ex) {
            System.err.println(ex.getCause());
            return "";
        }
    }

    public String getHashedPassword(String password) {
        return client.getHashedPassword(password);
    }

    public String getEmployeeName(String id) {
        EmployeeController ec = new EmployeeController();
        try {
            JSONObject json = ec.findEmployee(id);
            String name = json.getString("EmployeeFullName");
            return name;
        } catch (JSONException ex) {
            System.err.println(ex.getMessage());
            return "";
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.org.client;

import javax.ws.rs.ClientErrorException;
import javax.ws.rs.InternalServerErrorException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


public class EmployeeClient {

    private WebTarget webTarget;
    private Client client;
    private static final String BASE_URI = "http://localhost:8080/hrservicesprovider/webresources";

    public EmployeeClient() {
        client = javax.ws.rs.client.ClientBuilder.newClient();
        webTarget = client.target(BASE_URI).path("employee");
    }

    public String countREST() throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path("count");
        return resource.request(javax.ws.rs.core.MediaType.TEXT_PLAIN).
                get(String.class);
    }

    public String find(String id) throws ClientErrorException {
        try {
            WebTarget resource = webTarget;
            resource = resource.path(java.text.MessageFormat.format("{0}", new Object[]{id}));
            return resource.request(javax.ws.rs.core.MediaType.APPLICATION_JSON).accept(MediaType.APPLICATION_JSON).
                    get(String.class);
        } catch (InternalServerErrorException ex) {
            System.err.println(ex.getCause());
            return "";
        }
    }

    public Response create(Form form) throws ClientErrorException {
        return webTarget.path("create").request(javax.ws.rs.core.MediaType.APPLICATION_FORM_URLENCODED).
                accept(MediaType.APPLICATION_JSON).post(Entity.entity(form,
                MediaType.APPLICATION_FORM_URLENCODED), Response.class);

    }

    public Response update(String empid, Form form) throws ClientErrorException {
        return webTarget.path(java.text.MessageFormat.format("update/{0}", new Object[]{empid})).
                request(javax.ws.rs.core.MediaType.APPLICATION_FORM_URLENCODED).accept(MediaType.APPLICATION_JSON).
                put(Entity.entity(form, MediaType.APPLICATION_FORM_URLENCODED), Response.class);

    }

    public String findAll() throws ClientErrorException {
        try {
            WebTarget resource = webTarget;
            return resource.request(javax.ws.rs.core.MediaType.APPLICATION_JSON).accept(MediaType.APPLICATION_JSON).
                    get(String.class);
        } catch (InternalServerErrorException ex) {
            System.err.println(ex.getCause());
            return "";
        }
    }

    public Response remove(String id) throws ClientErrorException {
        return webTarget.path(java.text.MessageFormat.format("remove/{0}", new Object[]{id})).
                request().delete(Response.class);
    }

    public void close() {
        client.close();
    }

}

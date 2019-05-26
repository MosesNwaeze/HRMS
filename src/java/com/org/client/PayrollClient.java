/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.org.client;

import javax.ws.rs.ClientErrorException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Response;

/**
 * Jersey REST client generated for REST resource:PayrollResource [payroll]<br>
 * USAGE:
 * <pre>
 *        PayrollClient client = new PayrollClient();
 *        Object response = client.XXX(...);
 *        // do whatever with response
 *        client.close();
 * </pre>
 *
 * @author Moses Nwaeze
 */
public class PayrollClient {

    private WebTarget webTarget;
    private Client client;
    private static final String BASE_URI = "http://localhost:8080/hrservicesprovider/webresources";

    public PayrollClient() {
        client = javax.ws.rs.client.ClientBuilder.newClient();
        webTarget = client.target(BASE_URI).path("payroll");
    }

    public <T> T countREST(Class<T> responseType) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path("count");
        return resource.request(javax.ws.rs.core.MediaType.TEXT_PLAIN).get(responseType);
    }

    public String find(String id) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path(java.text.MessageFormat.format("{0}", new Object[]{id}));
        return resource.request(javax.ws.rs.core.MediaType.APPLICATION_JSON).get(String.class);
    }

    public Response create() throws ClientErrorException {
        return webTarget.path("create").request(javax.ws.rs.core.MediaType.APPLICATION_FORM_URLENCODED).
                post(null, Response.class);
    }

    public Response update() throws ClientErrorException {
        return webTarget.path("update").request(javax.ws.rs.core.MediaType.APPLICATION_FORM_URLENCODED).put(null, Response.class);
    }

    public String findAll() throws ClientErrorException {
        WebTarget resource = webTarget;
        return resource.request(javax.ws.rs.core.MediaType.APPLICATION_JSON).get(String.class);
    }

    public Response remove(String id) throws ClientErrorException {
        return webTarget.path(java.text.MessageFormat.format("remove/{0}", new Object[]{id})).request().delete(Response.class);
    }

    public void close() {
        client.close();
    }
    
}

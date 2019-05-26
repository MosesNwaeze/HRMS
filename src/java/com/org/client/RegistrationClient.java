package com.org.client;

import javax.ws.rs.ClientErrorException;
import javax.ws.rs.InternalServerErrorException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

public class RegistrationClient {

    private final WebTarget webTarget;
    private final Client client;
    private static final String BASE_URI = "http://localhost:8080/hrservicesprovider/webresources";

    public RegistrationClient() {
        client = javax.ws.rs.client.ClientBuilder.newClient();
        webTarget = client.target(BASE_URI).path("registration");
    }

    public String findAllEntity() throws ClientErrorException {
        WebTarget resource = webTarget;
        return resource.request(javax.ws.rs.core.MediaType.APPLICATION_JSON).accept(MediaType.APPLICATION_JSON)
                .get(String.class);
    }

    public <T> T countREST(Class<T> responseType) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path("count");
        return resource.request(javax.ws.rs.core.MediaType.TEXT_PLAIN).get(responseType);
    }

    public Response create(Form form) throws ClientErrorException {
        return webTarget.path("create").request(javax.ws.rs.core.MediaType.APPLICATION_FORM_URLENCODED).
                accept(MediaType.APPLICATION_JSON).post(Entity.entity(form, MediaType.APPLICATION_FORM_URLENCODED), Response.class);

    }

    public Response update(Form form) throws ClientErrorException {
        return webTarget.path("update").request(javax.ws.rs.core.MediaType.APPLICATION_FORM_URLENCODED).accept(MediaType.APPLICATION_JSON).
                put(Entity.entity(form, MediaType.APPLICATION_FORM_URLENCODED), Response.class);
    }

    public String findEntity(String id) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path(java.text.MessageFormat.format("{0}", new Object[]{id}));
        return resource.request(javax.ws.rs.core.MediaType.APPLICATION_JSON).get(String.class);
    }

    public Response remove(String id) throws ClientErrorException {
        return webTarget.path(java.text.MessageFormat.format("{0}", new Object[]{id})).request().delete(Response.class);
    }

    public void close() {
        client.close();
    }

    public String countREST() throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path("count");
        return resource.request(javax.ws.rs.core.MediaType.TEXT_PLAIN).
                get(String.class);
    }

    public String getHashedPassword(String password) throws ClientErrorException {
        WebTarget resource = webTarget;
        try {
            resource = resource.path(java.text.MessageFormat.format("{0}", new Object[]{password}));
            return resource.request(javax.ws.rs.core.MediaType.TEXT_PLAIN).get(String.class);
        } catch (InternalServerErrorException e) {
            System.err.println(e.getCause());
            return "";
        }
    }

}

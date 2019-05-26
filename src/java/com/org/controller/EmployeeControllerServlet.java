package com.org.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.json.*;
import com.org.logic.EmployeeController;

@WebServlet(name = "EmployeeControllerServlet", urlPatterns = {
    "/EmployeeControllerServlet",
    "/view-all",
    "/total-employees",
    "/update",
    "/save-update",
    "/add-employee"

})
public class EmployeeControllerServlet extends HttpServlet {

    private final EmployeeController eController = new EmployeeController();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String servletPath = request.getServletPath();
        try {
            if (servletPath.equals("/view-all")) {
                String url = servletPath + ".jsp";
                request.setAttribute("employees", eController.findAllEmployee());
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (servletPath.equals("/total-employees")) {
                String url = servletPath + ".jsp";
                request.setAttribute("total-employees", eController.count());
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (servletPath.equals("/update")) {
                String id = request.getParameter("id");
                String url = servletPath + ".jsp";
                request.setAttribute("employee", eController.findEmployee(id));
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }

        } catch (JSONException ex) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        // a module that handles deletion operation
        String id = request.getParameter("employeeid");
        response.setContentType(MediaType.APPLICATION_JSON);
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();
        try {
            String resp = eController.deleteEmployee(id);

            if ("Employee successfull Removed".equals(resp)) {
                JSONArray jsonArray = new JSONArray(eController.findAllEmployee().toString());
                writer.print(jsonArray);
            } else {
                writer.print("the employee is not available");
            }

        } catch (JSONException ex) {

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String servletPath = request.getServletPath();
        if (servletPath.equals("/add-employee")) {
            response.setContentType(MediaType.TEXT_PLAIN);
            response.setCharacterEncoding("UTF-8");
            PrintWriter writer = response.getWriter();
            try {
                Form form = new Form();
                form.param("id", request.getParameter("id"));
                form.param("fullname", request.getParameter("fullname"));
                form.param("dob", request.getParameter("dob"));
                form.param("age", request.getParameter("age"));
                form.param("gender", request.getParameter("gender"));
                form.param("address", request.getParameter("address"));
                form.param("department", request.getParameter("department"));
                form.param("position", request.getParameter("position"));

                Response resp = eController.getClient().create(form);
                if (resp.getStatus() == Response.Status.OK.getStatusCode()) {
                    writer.print("Employee created successfully");

                } else {
                    writer.print("Error Creating an Employee");
                }
            } catch (Exception ex) {

            }
        } else if (servletPath.equals("/save-update")) {
            processRequest(request, response);
            response.setContentType(MediaType.TEXT_PLAIN);
            response.setCharacterEncoding("UTF-8");

            PrintWriter writer = response.getWriter();
            try {
                Form form = new Form();
                form.param("id", request.getParameter("id"));
                form.param("fullname", request.getParameter("fullname"));
                form.param("dob", request.getParameter("dob"));
                form.param("age", request.getParameter("age"));
                form.param("gender", request.getParameter("gender"));
                form.param("address", request.getParameter("address"));
                form.param("department", request.getParameter("department"));
                form.param("position", request.getParameter("position"));

                Response resp = eController.getClient().update(request.getParameter("id"), form);
                if (resp.getStatus() == Response.Status.OK.getStatusCode()) {
                    writer.print("Employee Successfully Updated");

                } else {
                    writer.print("Error Updating Employee");

                }
            } catch (Exception ex) {

            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

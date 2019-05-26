package com.org.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.org.logic.RegistrationController;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MediaType;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.security.crypto.bcrypt.BCrypt;

@WebServlet(name = "ProcessRegistrationServlet", urlPatterns = {
    "/processregistration",
    "/signup",
    "/login",
    "/logout",
    "/reset-password"
})
public class ProcessRegistrationServlet extends HttpServlet {
    
    private final RegistrationController rc = new RegistrationController();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        String servletPath = request.getServletPath();
        if (servletPath.equals("/logout")) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.removeAttribute("name");
                session.invalidate();
                response.sendRedirect("login.jsp");
            }
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType(MediaType.TEXT_PLAIN);
        response.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String servletPath = request.getServletPath();
            if (servletPath.equals("/signup")) {
                try {
                    String username = request.getParameter("username");
                    String employeeID = request.getParameter("id");
                    String password = request.getParameter("password");
                    Form form = new Form();
                    form.param("username", username);
                    form.param("id", employeeID);
                    form.param("password", password);
                    boolean result = rc.createRegistration(form);
                    if (result) {
                        out.print("Employee successfully signedup");
                    } else {
                        throw new RuntimeException("Error in employee signup");
                    }
                } catch (RuntimeException ex) {
                    System.out.println(ex.getMessage());
                }
            } else if (servletPath.equals("/login")) {
                try {
                    List<JSONObject> registered = rc.findAllRegistered();
                    String username = request.getParameter("id");
                    String password = request.getParameter("password");
                    HttpSession session = request.getSession();
                    for (JSONObject obj : registered) {
                        if ((username.equals(obj.getString("Email")) || username.equals(obj.getString("EmployeeID")))
                                && BCrypt.checkpw(password, obj.getString("Password"))) {
                            String employeeID = rc.getEmployeeID(username);
                            String deptCode = employeeID.substring(0, 3);
                            String name = rc.getEmployeeName(employeeID);
                            if (deptCode.equals("ICT")) {
                                session.setAttribute("name", name);
                                session.setMaxInactiveInterval(1800);
                                response.sendRedirect("./ictdepartment.jsp");
                                return;
                            } else if (deptCode.equals("FAC")) {
                                session.setAttribute("name", name);
                                session.setMaxInactiveInterval(1800);
                                response.sendRedirect("./financedepartment.jsp");
                                return;
                            } else if (deptCode.equals("HCU")) {
                                session.setAttribute("name", name);
                                session.setMaxInactiveInterval(1800);
                                response.sendRedirect("./healthcareunitdepartment.jsp");
                                return;
                            } else if (deptCode.equals("HRD")) {
                                session.setAttribute("name", name);
                                session.setMaxInactiveInterval(1800);
                                response.sendRedirect("./humanresourcedepartment.jsp");
                                return;
                            } else{
                                response.sendRedirect("./loginerror.jsp");
                                return;
                            }
                            
                        }
                    }
                    request.setAttribute("errorMessage", "Username or Password not Correct");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                    
                } catch (JSONException ex) {
                    System.err.println(ex.getCause());
                }
            } else if (servletPath.equals("/reset-password")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String retypedPassword = request.getParameter("retypePassword");
                boolean isValidPassword = false;
                Form form = new Form();
                try {
                    if (!password.equals(retypedPassword)) {
                        request.getRequestDispatcher("recover-password.jsp").forward(request, response);
                        return;
                    }
                    if (!isValidPassword) {
                        String email = rc.getEmail(username);
                        if (email.equals("Invalid Email") || email.equals("")) {                            
                            if (username.equals("")) {
                                request.setAttribute("invalidUsername", "Username cannot be empty");
                                request.getRequestDispatcher("recover-password.jsp").forward(request, response);
                                return;
                            }
                            request.setAttribute("invalidUsername", "User with Username: " + username + " cannot be found");
                            request.getRequestDispatcher("recover-password.jsp").forward(request, response);
                        } else {
                            form.param("password", password);
                            form.param("email", email);
                            form.param("employeeID", rc.getEmployeeID(username));
                            rc.updateRegistered(form);
                            response.sendRedirect("login.jsp");
                        }
                        
                    }
                } catch (NullPointerException ex) {
                    System.err.println(ex.getMessage());
                }
                
            }
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

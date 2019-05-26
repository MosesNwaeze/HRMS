<%-- 
    Document   : total-employees
    Created on : 19-Apr-2019, 09:40:30
    Author     : Moses Nwaeze
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="parent-container" class="container bg-success">
            <div id="header" class="row no-gutters">
                <div class="col-lg-12">
                    <div class="row no-gutters">
                        <div class="col  text-right">
                            <div class="">
                                <h4 class="text-primary">
                                    <span  style="background-color:white;"> 
                                        WELCOME <%= (String) request.getParameter("name")%> 
                                        <button type="button" id="logout" class="btn btn-link">Log Out</button>
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div id="link" class="col-md-auto btn-secondary">
                            <!----Employee control ---->
                            <div class="btn-group padding-right">
                                <button type="button" class="btn btn-lg btn-secondary" data-toggle="dropdown">Employee <span class="caret"></span></button>
                                <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split"></button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item navlink" href="view-all">View All Employees</a></li>
                                    <li><a class="dropdown-item navlink" href="create.jsp">Create Employee</a></li>
                                    <li><a class="dropdown-item navlink" href="update">Update Employee</a></li>
                                    <li><a class="dropdown-item navlink" href="#">Action</a></li>
                                    <li><a class="dropdown-item navlink" href="total-employees">Total Employees</a></li>
                                </ul>
                            </div>

                            <!------Payroll contols---->
                            <div class="btn-group padding-right">
                                <button type="button" class="btn btn-lg btn-secondary" data-toggle="dropdown">Payroll&nbsp;&nbsp; <span class="caret"></span></button>
                                <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split"></button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Link 1</a>
                                    <a class="dropdown-item" href="#">Link 2</a>
                                    <a class="dropdown-item" href="#">Link 3</a>
                                    <a class="dropdown-item" href="#">Link 4</a>
                                </div>
                            </div>

                            <!----Department Control----->
                            <div class="btn-group padding-right">
                                <button type="button" class="btn btn-lg btn-secondary"  data-toggle="dropdown">Department <span class="caret"></span></button>
                                <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split"></button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Link 1</a>
                                    <a class="dropdown-item" href="#">Link 2</a>
                                    <a class="dropdown-item" href="#">Link 3</a>
                                    <a class="dropdown-item" href="#">Link 4</a>
                                </div>
                            </div>

                            <!----Payroll Control---->
                            <div class="btn-group padding-right">
                                <button type="button" class="btn btn-lg btn-secondary"  data-toggle="dropdown">Deduction <span class="caret"></span></button>
                                <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split"></button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Link 1</a>
                                    <a class="dropdown-item" href="#">Link 2</a>
                                    <a class="dropdown-item" href="#">Link 3</a>
                                    <a class="dropdown-item" href="#">Link 4</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!---The main content and sidebar---->
            <div id="nav" class="row">
                <div class="col-lg-3" id="sidebar">
                    <h3><span class="label" style="font-size: 20px; color: #040505; background-color:#A00D9B; margin-left: 10px;">
                            Resources quick links</span></h3>

                </div>
                <div id="content" class="col-lg-9">
                    <h1 class="text-info text-center">
                        The total number of employees is:  <%out.print((String)request.getAttribute("total-employees"));%>
                    </h1>
                    
                </div>
            </div>
            <!--<br style="clear: both"/>-->
            <!-----The footer---->
            <div id="footer" class="row modal-footer ">
                <div class="col-lg-12">
                </div>
            </div>
        </div>
    </body>
</html>

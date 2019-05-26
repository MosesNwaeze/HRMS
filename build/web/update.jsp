<%@page contentType="text/html" pageEncoding="UTF-8" autoFlush="true"%>
<%@page import="org.json.*" %>
<!DOCTYPE html>
<%
    String user = (String) session.getAttribute("name");
    if (null == user) {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>
<html>
    <head>
        <jsp:include page="/WEB-INF/include.jsp" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style type="text/css">
            <%@include file="/styles/site.css" %>%>
        </style>
        <script type="text/javascript">
            $(document).ready(function () {
                var mess = $("#insertmess");
                mess.hide();
                var formUpdate = $("#update");
                formUpdate.submit(function (event) {
                    $.ajax({
                        url: formUpdate.attr("action"),
                        data: formUpdate.serialize(),
                        type: formUpdate.attr("method"),
                        success: function (data, textStatus, jqXHR) {
                            if (data !== null) {
                                console.log(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(textStatus);
                        },
                        complete: function (jqXHR, textStatus) {
                            $("#fieldset").hide();
                            mess.show();
                        }

                    });
                    event.preventDefault();
                });
                $("#logout").click(function () {
                    window.location.href = "logout";
                });
            });
        </script>
        <!-- Start WOWSlider.com HEAD section -->
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
        <script type="text/javascript" src="engine1/jquery.js"></script>
        <!-- End WOWSlider.com HEAD section -->
    </head>
    <body>
        <div id="parent-container" class="container bg-success">
            <div id="header" class="row no-gutters"   style="background-color: #214469;;">
                <div class="col-lg-12">
                    <div class="row" style="">
                        <div class="col-lg-3 text-left" id="logo" style="height: 200px; z-index: 5;padding-top: 2px;">
                            <a href="index.jsp" ><img class=" img-rounded" src="images/logo.JPG" alt="logo" height="200px" width="350px"/></a>
                        </div>
                        <div class="col-lg-7 text-center" style="z-index: 1; color: white;">
                            <h1 style="margin-bottom: 0px;">STANDARD HR MANAGEMENT SYSTEM</h1><br>
                            <p ><b style="color:white;"><i>MOTTO:</i> We are here to meet your HR needs</b></p>
                            <h4 class="text-primary"  id="loginInfo">
                                <span  style="color: white;"> 
                                    WELCOME <%= user%>
                                    <button type="button" style="text-decoration: none;" id="logout" class="btn btn-lg btn-link">
                                        <span style="color: red;"> <i class="glyphicon glyphicon-log-out"></i> Logout</span>
                                    </button>
                                </span>
                            </h4>
                        </div>
                        <div class="col-lg-2" style="z-index: 1">
                            <!--<h4 class="text-primary text-capitalize text-right" style="">
                                <span  style="margin-right: 20px;"> 
                                    <button type="button" id="login" class="btn btn-lg btn-link bg-primary">
                                        <span style="color: blue;"> Please Login</span>
                                    </button>
                                </span>
                            </h4>--->
                        </div>
                    </div> 
                    <div class="col-lg-12" style="background-color: white; height: 390px;z-index: 5">
                        <!-- Start WOWSlider.com BODY section -->
                        <div id="wowslider-container1">
                            <div class="ws_images"><ul>
                                    <li><img src="data1/images/hbg1.jpg" alt="Elephant" title="Elephant" id="wows1_0"/></li>
                                    <li><img src="data1/images/hbg2.jpg" alt="family" title="family" id="wows1_1"/></li>
                                    <li><img src="data1/images/hbg3.jpg" alt="mushroom" title="mushroom" id="wows1_2"/></li>
                                    <li><img src="data1/images/hbg0.jpg" alt="cat" title="cat" id="wows1_3"/></li>
                                    <li><img src="data1/images/hbg4.jpg" alt="beauty" title="beauty" id="wows1_4"/></li>
                                    <li><img src="data1/images/hbg5.jpg" alt="nice" title="nice" id="wows1_5"/></li>
                                    <li><img src="data1/images/hbg6.jpg" alt="rhino" title="rhino" id="wows1_6"/></li>
                                    <li><img src="data1/images/hbg7.jpg" alt="fine" title="fine" id="wows1_7"/></li>
                                    <li><img src="data1/images/hbg8.jpg" alt="monkey" title="monkey" id="wows1_8"/></li>
                                    <li><img src="data1/images/hbg9.jpg" alt="squirrel" title="squirrel" id="wows1_9"/></li>
                                    <li><img src="data1/images/hbg10.jpg" alt="hbg10" title="hbg10" id="wows1_10"/></li>
                                    <li><img src="data1/images/hbg11.jpg" alt="hbg11" title="hbg11" id="wows1_11"/></li>
                                    <li><img src="data1/images/hbg12.jpg" alt="hbg12" title="hbg12" id="wows1_12"/></li>
                                    <li><img src="data1/images/hbg13.jpg" alt="hbg13" title="hbg13" id="wows1_13"/></li>
                                    <li><img src="data1/images/hbg15.png" alt="hbg15" title="hbg15" id="wows1_14"/></li>
                                    <li><img src="data1/images/hbg16.jpg" alt="hbg16" title="hbg16" id="wows1_15"/></li>
                                    <li><img src="data1/images/hbg17.jpg" alt="hbg17" title="hbg17" id="wows1_16"/></li>
                                    <li><img src="data1/images/hbg18.png" alt="hbg18" title="hbg18" id="wows1_17"/></li>
                                    <li><a href="http://wowslider.net"><img src="data1/images/hbg19.jpg" alt="image carousel" title="hbg19" id="wows1_18"/></a></li>
                                    <li><img src="data1/images/hgb14.png" alt="hgb14" title="hgb14" id="wows1_19"/></li>
                                </ul></div>
                            <div class="ws_bullets"><div>
                                    <a href="#" title="Elephant"><span><img src="data1/tooltips/hbg1.jpg" alt="Elephant"/>1</span></a>
                                    <a href="#" title="family"><span><img src="data1/tooltips/hbg2.jpg" alt="family"/>2</span></a>
                                    <a href="#" title="mushroom"><span><img src="data1/tooltips/hbg3.jpg" alt="mushroom"/>3</span></a>
                                    <a href="#" title="cat"><span><img src="data1/tooltips/hbg0.jpg" alt="cat"/>4</span></a>
                                    <a href="#" title="beauty"><span><img src="data1/tooltips/hbg4.jpg" alt="beauty"/>5</span></a>
                                    <a href="#" title="nice"><span><img src="data1/tooltips/hbg5.jpg" alt="nice"/>6</span></a>
                                    <a href="#" title="rhino"><span><img src="data1/tooltips/hbg6.jpg" alt="rhino"/>7</span></a>
                                    <a href="#" title="fine"><span><img src="data1/tooltips/hbg7.jpg" alt="fine"/>8</span></a>
                                    <a href="#" title="monkey"><span><img src="data1/tooltips/hbg8.jpg" alt="monkey"/>9</span></a>
                                    <a href="#" title="squirrel"><span><img src="data1/tooltips/hbg9.jpg" alt="squirrel"/>10</span></a>
                                    <a href="#" title="hbg10"><span><img src="data1/tooltips/hbg10.jpg" alt="hbg10"/>11</span></a>
                                    <a href="#" title="hbg11"><span><img src="data1/tooltips/hbg11.jpg" alt="hbg11"/>12</span></a>
                                    <a href="#" title="hbg12"><span><img src="data1/tooltips/hbg12.jpg" alt="hbg12"/>13</span></a>
                                    <a href="#" title="hbg13"><span><img src="data1/tooltips/hbg13.jpg" alt="hbg13"/>14</span></a>
                                    <a href="#" title="hbg15"><span><img src="data1/tooltips/hbg15.png" alt="hbg15"/>15</span></a>
                                    <a href="#" title="hbg16"><span><img src="data1/tooltips/hbg16.jpg" alt="hbg16"/>16</span></a>
                                    <a href="#" title="hbg17"><span><img src="data1/tooltips/hbg17.jpg" alt="hbg17"/>17</span></a>
                                    <a href="#" title="hbg18"><span><img src="data1/tooltips/hbg18.png" alt="hbg18"/>18</span></a>
                                    <a href="#" title="hbg19"><span><img src="data1/tooltips/hbg19.jpg" alt="hbg19"/>19</span></a>
                                    <a href="#" title="hgb14"><span><img src="data1/tooltips/hgb14.png" alt="hgb14"/>20</span></a>
                                </div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">slideshow html code</a> by WOWSlider.com v8.8</div>
                            <div class="ws_shadow"></div>
                        </div>	
                        <script type="text/javascript" src="engine1/wowslider.js"></script>
                        <script type="text/javascript" src="engine1/script.js"></script>
                        <!-- End WOWSlider.com BODY section -->

                        <div class="row" style="z-index: 1">  
                        </div>
                        <div id="link" class="col-lg-12 btn-secondary">
                            <!----Employee control ---->
                            <div class="btn-group padding-right">
                                <button type="button" style="border-radius: 10px;"  class="btn btn-lg btn-secondary hlnk" data-toggle="dropdown"><span>Employee</span> <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item navlink " href="view-all">View All Employees</a></li>
                                    <li><a class="dropdown-item navlink"  href="create.jsp">Create Employee</a></li>
                                    <li><a class="dropdown-item navlink"  href="update">Update Employee</a></li>
                                    <li><a class="dropdown-item navlink"  href="#">Action</a></li>
                                    <li><a class="dropdown-item navlink"  href="total-employees">Total Employees</a></li>
                                </ul>
                            </div>

                            <!------Payroll contols---->
                            <div class="btn-group padding-right">
                                <button type="button" style="border-radius: 10px;"  class="btn btn-lg btn-secondary hlnk" data-toggle="dropdown"><span>Payroll</span>&nbsp;&nbsp; <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item navlink" href="view-all">View All Employees</a></li>
                                    <li><a class="dropdown-item navlink" href="create.jsp">Create Employee</a></li>
                                    <li><a class="dropdown-item navlink" href="update">Update Employee</a></li>
                                    <li><a class="dropdown-item navlink" href="#">Action</a></li>
                                    <li><a class="dropdown-item navlink" href="total-employees">Total Employees</a></li>
                                </ul>
                            </div>

                            <!----Department Control----->
                            <div class="btn-group padding-right">
                                <button type="button" style="border-radius: 10px;" class="btn btn-lg btn-secondary hlnk" data-toggle="dropdown"><span>Department</span> <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item navlink" href="view-all">View All Employees</a></li>
                                    <li><a class="dropdown-item navlink" href="create.jsp">Create Employee</a></li>
                                    <li><a class="dropdown-item navlink" href="update">Update Employee</a></li>
                                    <li><a class="dropdown-item navlink" href="#">Action</a></li>
                                    <li><a class="dropdown-item navlink" href="total-employees">Total Employees</a></li>
                                </ul>
                            </div>

                            <!----Payroll Control---->
                            <div class="btn-group padding-right">
                                <button type="button" style="border-radius: 10px;"  class="btn btn-lg btn-secondary hlnk"  data-toggle="dropdown"><span>Deduction </span><span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item navlink" href="view-all">View All Employees</a></li>
                                    <li><a class="dropdown-item navlink" href="create.jsp">Create Employee</a></li>
                                    <li><a class="dropdown-item navlink" href="update">Update Employee</a></li>
                                    <li><a class="dropdown-item navlink" href="#">Action</a></li>
                                    <li><a class="dropdown-item navlink" href="total-employees">Total Employees</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Main content area--->
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-10">
                    <div id="insertmess">
                        <h1><span class="badge-success">Employee successfully Updated</span></h1>
                    </div>
                    <fieldset role="form" id="fieldset">
                        <legend style="margin-top: 20px;" class="text-uppercase"><b>Employee Update Form</b></legend>
                        <%
                            try {
                                JSONObject employee = (JSONObject) request.getAttribute("employee");
                                String id = employee.getString("EmployeeID");
                                String name = employee.getString("EmployeeFullName");
                                String dob = employee.getString("EmployeeDOB");
                                int age = employee.getInt("EmployeeAge");
                                String gender = employee.getString("EmployeeGender");
                                String address = employee.getString("EmployeeAddress");
                                String department = employee.getString("EmployeeDepartment");
                                String position = employee.getString("EmployeePosition");
                        %>
                        <form method="POST" action="save-update" id="update">
                            <div class="form-group col-lg-8">
                                <label for="id" class="control-label">Employee ID:</label>
                                <input type="text" id="id" name="id" class="form-control bg-primary input" 
                                       value="<%out.print(id);%>"/><br><br>


                                <label for="fullname" class="control-label">Full Name:</label>
                                <input type="text" id="fullname" name="fullname" class="form-control input" 
                                       value="<%out.print(name);%>"/><br><br>


                                <label for="department" class="control-label">Department:</label>
                                <select id="department" name="department" class="form-control input" >
                                    <%if (department.equalsIgnoreCase("ICT Department")) {%>
                                    <option value="ICT Department" selected>ICT Department</option>
                                    <option value="Human Resource Department">Human Resource Department</option>
                                    <option value="Health Care Department">Health Care Department</option>
                                    <option value="Finace and Accounting Department">Finance and Accounting Department</option>
                                    <%} else if (department.equalsIgnoreCase("Human Resource Department")) {%>
                                    <option value="ICT Department">ICT Department</option>
                                    <option value="Human Resource Department" selected>Human Resource Department</option>
                                    <option value="Health Care Department">Health Care Department</option>
                                    <option value="Finace and Accounting Department">Finance and Accounting Department</option>
                                    <%} else if (department.equalsIgnoreCase("Health Care Department")) {%>
                                    <option value="ICT Department">ICT Department</option>
                                    <option value="Human Resource Department">Human Resource Department</option>
                                    <option value="Health Care Department" selected>Health Care Department</option>
                                    <option value="Finace and Accounting Department">Finance and Accounting Department</option>
                                    <%} else if (department.equalsIgnoreCase("Finace and Accounting Department")) {%>
                                    <option value="ICT Department">ICT Department</option>
                                    <option value="Human Resource Department">Human Resource Department</option>
                                    <option value="Health Care Department">Health Care Department</option>
                                    <option value="Finace and Accounting Department" selected>Finance and Accounting Department</option>
                                    <%}%>
                                </select><br><br>


                                <label for="address" class="control-label">Address:</label>
                                <textarea type="" id="address" name="address" class="form-control input" 
                                          rows="5" cols="40"><%out.print(address);%></textarea><br><br>

                                <label for="dob" class="control-label">Date Of Birth:</label>
                                <input type="text" id="dob" name="dob" class="form-control input" value="<%out.print(dob);%>"/> 
                                <br><br>

                                <label for="age" class="control-label">Age:</label>
                                <input type="number" id="age" name="age" class="form-control input" 
                                       value="<%out.print(age);%>"/><br><br>


                                <label for="gender" class="control-label">Gender:</label>
                                <div class="btn btn-group-lg">
                                    <%if (gender.equalsIgnoreCase("Male")) {%>
                                    <input type="radio" id="gender" class="input" checked="checked" name="gender" value="Male">Male&nbsp;&nbsp;
                                    <input type="radio" id="gender" class="input" name="gender" value="Female">Female
                                    <%} else if (gender.equalsIgnoreCase("Female")) {%>
                                    <input type="radio" id="gender" class="input" name="gender" value="Male">Male&nbsp;&nbsp;
                                    <input type="radio" id="gender" class="input" name="gender" checked="checked" value="Female">Female
                                    <%}%>
                                </div><br><br>

                                <label for="position" class="control-label">Position:</label>
                                <select name="position" class="form-control input" id="position">
                                    <%if (position.equalsIgnoreCase("Entry Level")) {%>
                                    <option value="Entry Level" selected>Entry Level</option>
                                    <option value="Medium Level">Medium Level</option>
                                    <option value="Top Level">Top Level</option>
                                    <%} else if (position.equalsIgnoreCase("Medium Level")) {%>
                                    <option value="Entry Level">Entry Level</option>
                                    <option value="Medium Level" selected>Medium Level</option>
                                    <option value="Top Level">Top Level</option>
                                    <%} else if (position.equalsIgnoreCase("Top Level")) {%>
                                    <option value="Entry Level">Entry Level</option>
                                    <option value="Medium Level">Medium Level</option>
                                    <option value="Top Level" selected>Top Level</option>
                                    <%}%>
                                </select><br/><br>
                                <div class="btn-group-lg">
                                    <input type="submit" class="btn bg-success btn-lg btn-success" value="Update Employee"/>
                                    <input type="reset" class="btn btn-lg btn-warning" value="Clear Fields"/>
                                </div>
                            </div>
                        </form>
                        <%
                            } catch (JSONException ex) {
                                System.err.println(ex.getCause());
                            }
                        %>
                    </fieldset>
                </div>
            </div>

            <!----Footer area--->
            <div id="footer" class="row modal-footer ">
                <div class="col-lg-12">
                </div>
            </div>
        </div>

    </body>
</html>

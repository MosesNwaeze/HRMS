<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/WEB-INF/include.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style type="text/css">
            <%@include file="/styles/site.css" %>
        </style>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#link").hide();
                $("#login").click(function () {
                    window.location.href = "login.jsp";
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
            <div id="header" class="row no-gutters"   style="background-color: #214469;">
                <div class="col-lg-12">
                    <div class="row" style="">
                        <div class="logo col-lg-3 text-left" style="height: 200px; z-index: 5;padding-top: 2px;">
                            <a href="index.jsp" ><img class=" img-rounded" src="images/logo.JPG" alt="logo" height="200px" width="350px"/></a>
                        </div>
                        <div class="col-lg-7 text-center navbar-header" style="z-index: 1; color: white;">
                            <h1 style="margin-bottom: 0px;" class="">
                                <a href="index.jsp" style=" color: white; text-decoration: none;" class="link">STANDARD HR MANAGEMENT SYSTEM</a>

                            </h1><br>
                            <p ><b style="color:white;"><i>MOTTO:</i> We are here to meet your HR needs</b></p>
                            <br><br><br>
                        </div>
                        <div class="col-lg-2" style="z-index: 1">
                            <h4 class="text-primary text-capitalize text-right" style="">
                                <span  style="margin-right: 20px;"> 
                                    <button type="button" id="login" class="btn btn-lg btn-link" style="text-decoration: none">
                                        <span style="color: greenyellow;"><span class="glyphicon glyphicon-log-in"></span> Please Login</span>
                                    </button>
                                </span>
                            </h4>
                        </div>
                    </div> 
                    <div class="col-lg-12" style="background-color: white; height: 400px;z-index: 5">
                        <div>
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
                        </div>
                        <div class="row" style="z-index: 1">  
                        </div>
                        <div id="link" class="col-lg-12 btn-secondary">
                            <!----Employee control ---->
                            <div class="btn-group padding-right">
                                <button type="button" style="border-radius: 10px;" class="btn btn-lg btn-secondary" data-toggle="dropdown"><span style="color: #0F0B42;">Employee</span> <span class="caret"></span></button>
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
                                <button type="button" style="border-radius: 10px;" class="btn btn-lg btn-secondary" data-toggle="dropdown"><span style="color: #0F0B42;">Payroll</span>&nbsp;&nbsp; <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item navlink" href="view-all">View All Employees</a></li>
                                    <li><a class="dropdown-item navlink" href="create.jsp">Create Employee</a></li>
                                    <li><a class="dropdown-item navlink" href="#">Action</a></li>
                                    <li><a class="dropdown-item navlink" href="total-employees">Total Employees</a></li>
                                </ul>
                            </div>

                            <!----Department Control----->
                            <div class="btn-group padding-right">
                                <button type="button" style="border-radius: 10px;" class="btn btn-lg btn-secondary"  data-toggle="dropdown"><span style="color: #0F0B42;">Department</span> <span class="caret"></span></button>
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
                                <button type="button" style="border-radius: 10px;" class="btn btn-lg btn-secondary"  data-toggle="dropdown"><span style="color: #0F0B42;">Deduction </span><span class="caret"></span></button>
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
            <!---The main content and sidebar---->
            <div class="row" style="z-index: -1">
                <div class="col-lg-3" id="sidebar">
                    <h3>
                        <span class="label" style="font-size: 20px; color: #040505; background-color:#32B9EE; margin-left: 10px;">
                            Resources quick links
                        </span>
                    </h3>

                </div>
                <div id="content" class="col-lg-9">
                    <h1>main content goes here...</h1>
                </div>
            </div>
            <!--<br style="clear: both"/>-->
            <!-----The footer---->
            <div id="footer" class="row modal-footer" style="z-index: 1; padding: 0px;">
                <div class="logo col-lg-12" style="height: 80px; margin-bottom: 2px;">
                    <a href="index.jsp" class="text-left"><img style="background-color:#CDB1B1;margin-right: 530px;" class="img-thumbnail" src="images/logo.JPG" alt="logo" height="100px" width="100px"/></a>
                </div>
                <div class="col-lg-12">
                    <div class="row">
                        <div class="links col-lg-6 no-gutters" id="als" style="height: 400px;">
                            <h3 class="h5 label-info text-left" style="margin-bottom: 0px;"><i>Helpful Links</i></h3>
                            <ul class="nav h6" style="margin: 0px;padding: 0px;">
                                <li class="nav-item list-inline-item text-left" style=""><a href="#"><i>Contact Us</i></a></li>
                                <li class="nav-item list-inline-item text-left"><a href="#"><i>About Us</i></a></li>
                                <li class="nav-item list-inline-item text-left"><a href="#"><i>Contact Us</i></a></li>
                                <li class="nav-item list-inline-item text-left"><a href="#"><i>Contact Us</i></a></li>

                            </ul>

                        </div>
                        <div class="contacts col-lg-6" style="height: 300px;">
                            <button type="button" class="btn btn-lg"><i class="glyphicon glyphicon-log-out"></i>Login</button>
                        </div>
                    </div>

                </div>

                <div class="col-lg-12" style="background-color: #F0F0F0;height: 25px;margin-top: 2px;" id="copyright">
                    <p class="text-info h4 text-center" style="margin: auto">&copy;2012&HorizontalLine;2009 &VerticalBar; Standard HR Management System. All Rights Reserved.</p>
                </div>
            </div>
        </div>
    </body>
</html>

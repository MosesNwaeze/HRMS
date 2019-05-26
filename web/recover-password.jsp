<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="/WEB-INF/include.jsp" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Recover Password</title>
    <style type="text/css">
        <%@include file="/styles/site.css" %>
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#er").hide();
            $("#usernameValidate").hide();
            $("#passwordValidate").hide();

            $("#username").blur(function () {
                if ($(this).val() === "") {
                    $("#usernameValidate").show();
                }
            });

            $("#password").blur(function () {
                if ($(this).val() === "") {
                    $("#passwordValidate").show();
                }
            });

            $("#retypePassword").blur(function () {
                if ($("#retypePassword").val() !== $("#password").val()) {
                    $("#er").show();
                    //$("#submit").prop("disable");
                }
            });
        });
    </script>
</head>
<body>
    <div id="parent-container" class="container">
        <div class="row bg-success registrationForm" id="loginFormParentContainer">
            <div class="col-lg-2"></div>
            <div class="col-lg-10">
                <fieldset role="form" id="fieldset">
                    <legend style="margin-top: 20px;" class="text-uppercase"><b>Reset Password</b></legend>
                    <form name="loginForm" method="POST" action="reset-password" id="loginForm">
                        <div class="form-group col-lg-8">
                            <label class="control-label text-danger" id="usernameValidate">
                                Username cannot be empty
                            </label><br>
                            <label class="control-label text-danger">
                                <%= ((String) request.getAttribute("invalidUsername") == null) ? "" : (String) request.getAttribute("invalidUsername")%>
                            </label><br>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input type="text" id="username" name="username" class="form-control bg-primary" placeholder="EmployeeID or Email"/>
                            </div>
                            <br>

                            <label class="control-label text-danger" id="passwordValidate">
                                Password cannot be empty
                            </label><br>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input type="password" id="password" name="password" class="form-control bg-primary" placeholder="Password"/>
                            </div>
                            <br><br>

                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input type="password" id="retypePassword" name="retypePassword" class="form-control bg-primary" placeholder="Retype Password"/>
                            </div>
                            <p id="er" class="text-danger h3"><i>Password Mismatched </i></p>
                            <br>
                            <div class="btn-group-lg">
                                <button type="submit" id="submit" class="btn col-lg-12 btn-lg btn-primary"> <i class="glyphicon glyphicon-refresh"></i> Reset Password</button>
                            </div>
                        </div>
                    </form>
                </fieldset>

            </div>

        </div>
    </div>
</body>
</html>

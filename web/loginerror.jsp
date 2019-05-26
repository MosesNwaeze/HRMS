<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <jsp:include page="/WEB-INF/include.jsp" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <style type="text/css">
            <%@include file="/styles/site.css" %>%>
        </style>
        <script type="text/javascript">

        </script>
    </head>
    <body>
        <div id="parent-container" class="container bg-success">
            <div id="header" class="row no-gutters">
                <div class="col-lg-12">
                    
                </div>
            </div>
            <!---The main content and sidebar---->
            <div id="nav" class="row">
                <div class="col-lg-3" id="sidebar">
                    <h3><span class="label" style="font-size: 20px; color: #040505; background-color:#A00D9B; margin-left: 10px;">
                            Resources quick links</span></h3>

                </div>
                <div id="content" class="col-lg-9">
                    <h1>Wrong Username or Password</h1>
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

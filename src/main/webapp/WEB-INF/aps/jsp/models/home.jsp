<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="<wp:info key="currentLang" />">
    <head>
        <title>Entando - Welcome</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta charset="utf-8" />
        <link rel="shortcut icon" href="<wp:resourceURL />administration/img/favicon-entando.png">

        <!--CSS inclusions-->
        <link rel="stylesheet" href="<wp:resourceURL />administration/bootstrap/css/bootstrap.min.css" media="screen" />
        <link rel="stylesheet" href="<wp:resourceURL />administration/css/entando-admin-console-default-theme.css">
        <!--JS inclusions-->
        <script src="<wp:resourceURL />administration/js/jquery-2.2.4.min.js"></script>
        <script src="<wp:resourceURL />administration/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body id="background-full-e6">

        <div class="container e6-home-container">
            <div>
                <div class="logo-entando-top">
                    <img class="logo-entando-login" src="<wp:resourceURL />administration/img/login-logo.svg" alt="Entando 6" />
                </div>
                <div class="ux_brand-lp">The Entando <wp:info key="systemParam" paramName="version" /> has been successfully installed</div>
                <div class="entando-intro lgfont">
                    This is the default page after installing Entando successfully.
                </div>
                <div class="entando-intro">
                    To replace this page, go to the home page and login as the administrator.
                </div>

                <div class="entando-intro">
                    <p><strong>Default Username:</strong> admin</p>
                    <p><strong>Default Password:</strong> adminadmin</p>
                </div>
                
                <a href="<jstl:url value="/do/login"/>" class="btn btn-login">
                    GO TO LOG IN PAGE
                </a>

                <div id="social-link">
                    <a href="http://www.entando.com" target="_blank" rel="noopener noreferrer"><img src="<wp:resourceURL />administration/img/entando_icon.png" alt="Entando" /></a>
                    <a href="http://github.com/entando/" target="_blank" rel="noopener noreferrer"><img src="<wp:resourceURL />administration/img/github.png" alt="Entando on Github" /></a>
                    <a href="https://twitter.com/entando" target="_blank" rel="noopener noreferrer"><img src="<wp:resourceURL />administration/img/twitter.png" alt="Entando on Twitter" /></a>
                </div>
                <div class="copyright-entando">Copyright <%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %>&nbsp;<span class="entando-sm-write">Entando</span></div>
            </div>
        </div>
    </body>
</html>

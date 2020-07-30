INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('seed_home','Seed homepage','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>brand</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
		<defaultWidget code="Brand-Logo" />
	</frame>
	<frame pos="1">
		<descr>navbar</descr>
		<sketch x1="2" y1="0" x2="7" y2="0" />
	</frame>
	<frame pos="2">
		<descr>search</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
		<defaultWidget code="search_form" />
	</frame>
	<frame pos="3">
		<descr>login widget</descr>
		<sketch x1="10" y1="0" x2="11" y2="0" />
		<defaultWidget code="Login_buttons" />
	</frame>
	<frame pos="4">
		<descr>main banner</descr>
		<sketch x1="0" y1="1" x2="11" y2="2" />
		<defaultWidget code="Breadcrumb" />
	</frame>
	<frame pos="5">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="3" x2="11" y2="4" />
	</frame>
	<frame pos="6">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="5" x2="11" y2="6" />
	</frame>
	<frame pos="7" main="true">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="7" x2="11" y2="8" />
	</frame>
	<frame pos="8">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="9" x2="11" y2="10" />
	</frame>
	<frame pos="9">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="11" x2="11" y2="12" />
	</frame>
	<frame pos="10">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="13" x2="11" y2="14" />
	</frame>
	<frame pos="11">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="15" x2="11" y2="15" />
	</frame>
	<frame pos="12">
		<descr>footer</descr>
		<sketch x1="0" y1="16" x2="11" y2="16" />
	</frame>
	<frame pos="13">
		<descr>footer</descr>
		<sketch x1="0" y1="17" x2="11" y2="17" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="SALES_DEMO" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
        <@wp.fragment code="keycloak" escapeXml=false/>

        <!-- FA -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/all.css">
        <!-- Bootstrap core -->
        <link href="<@wp.resourceURL />static/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="<@wp.resourceURL />static/css/mdb.min.css" rel="stylesheet">
        <!-- custom styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/seed.css" rel="stylesheet">
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/media-queries.css" rel="stylesheet">
        <!-- JQuery -->
        <script type="text/javascript" src="<@wp.resourceURL />static/js/jquery.min.js"></script>
        <!-- Popper -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        
        </head>
        <body>
        <div class="custom-navbar ">
            <!--Navbar-->
            <nav class="navbar fixed-top navbar-expand-lg navbar-light ">
                <!-- Navbar brand -->
                <@wp.show frame=0 />
                <!-- Collapse button -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mobile"
                        aria-controls="navbar-mobile" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Collapsible content -->
                <div class="collapse navbar-collapse" id="navbar-mobile">
                    <!-- Links -->
                    <@wp.show frame=1 />
                   <ul class="navbar-nav mr-auto">
                        <!-- Dropdown -->
                         <li class="nav-item">
                            <a class="nav-link" href="<@wp.url page="homepage" />">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                                Checking & Savings
                            </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                                <div class="dropdown-content-wrapper">
                                    <div class="row dropdown-wrapper">
                                        <div class="col-6  dropdown-col">
                                            <a class="checking" href="<@wp.url page="interest" />"><span>Interest Checking</span></a>
                                            <div class="savings">High Yield Savings</div>
                                        </div>
                                        <div class="col-6 dropdown-right">
                                            <div class="debit-cards">Debit Cards</div>
                                            <div class="send-money">Send Money</div>
                                        </div>
                                    </div>
                                    <div class="row justify-content-around dropdown-wrapper-footer">
                                        <div class="col-6 dropdown-footer-heading">
                                            Company
                                            <div class="row ">
                                                <div class="col-6 dropdown-footer-content">
                                                    <div>About</div>
                                                    <div>Service</div>
                                                    <div>Careers</div>
                                                    <div>Blog</div>
                                                </div>
                                                <div class="col-6 dropdown-footer-content">
                                                    <div>Media</div>
                                                    <div>Terms</div>
                                                    <div>Privacy</div>
                                                    <div>Cookies</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 dropdown-footer-heading">
                                            Customers
                                            <div class="row ">
                                                <div class="col-12 col-lg-6 dropdown-footer-content">
                                                    <div>Travel</div>
                                                    <div>Pricing</div>
                                                    <div>Account</div>
                                                    <div>Help</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" href="<@wp.url page="credit_card" />">Credit Cards</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="<@wp.url page="seed_insurances" />">Insurances</a>
                        </li>
                       
                        <#if (Session.currentUser != "guest")>
                              <li class="nav-item">
                                  <a class="nav-link" href="<@wp.url page="mortgages_and_lending" />">Mortgages and Lending</a>
	                          </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="<@wp.url page="dashboard" />"><@wp.i18n key="MY_DASHBOARD" /></a>
                              </li>
                        </#if>
                        
                    </ul>
                   <div class="d-block d-sm-block d-md-none ">
                      
                      <@wp.show frame=2 />
                      <@wp.show frame=3 />
                      
                    </div>
                </div>
                <div class="d-none d-lg-block d-xl-block">
                 <div class="d-flex">
                      <@wp.show frame=2 />
                      <@wp.show frame=3 />
                      </div>
                </div>
                <!-- Collapsible content -->
                </nav>
       
        <@wp.show frame=4 />
        <@wp.show frame=5 />
        <@wp.show frame=6 />
        <@wp.show frame=7 />
        <@wp.show frame=8 />
        <@wp.show frame=9 />
        <@wp.show frame=10 />
        <@wp.show frame=11 />
        <@wp.show frame=12 />
        <@wp.show frame=13 />

    </div>
        
        <!-- Bootstrap core js -->
        <script type="text/javascript"  src="<@wp.resourceURL />static/js/bootstrap.min.js"></script>
        <!-- MDB core js -->
        <script type="text/javascript" src="<@wp.resourceURL />static/js/mdb.min.js"></script>

    </body>
</html>
');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('insurance_home','Insurance pages','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>go Seed Home</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
		<defaultWidget code="back_to_seed" />
	</frame>
	<frame pos="1">
		<descr>search bar</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
		<defaultWidget code="search_form" />
	</frame>
	<frame pos="2">
		<descr>choose language</descr>
		<sketch x1="10" y1="0" x2="11" y2="0" />
		<defaultWidget code="search_form" />
	</frame>
	<frame pos="3">
		<descr>brand logo</descr>
		<sketch x1="0" y1="1" x2="1" y2="1" />
		<defaultWidget code="brand_insurance" />
	</frame>
	<frame pos="4">
		<descr>Navigation bar</descr>
		<sketch x1="6" y1="1" x2="8" y2="1" />
	</frame>
	<frame pos="5">
		<descr>login button</descr>
		<sketch x1="9" y1="1" x2="11" y2="1" />
		<defaultWidget code="Login_buttons" />
	</frame>
	<frame pos="6">
		<descr>breadcrumb</descr>
		<sketch x1="0" y1="2" x2="11" y2="2" />
	</frame>
	<frame pos="7">
		<descr>100% column</descr>
		<sketch x1="0" y1="3" x2="11" y2="4" />
	</frame>
	<frame pos="8">
		<descr>100% column</descr>
		<sketch x1="0" y1="5" x2="11" y2="6" />
	</frame>
	<frame pos="9" main="true">
		<descr>100% column</descr>
		<sketch x1="0" y1="7" x2="11" y2="8" />
	</frame>
	<frame pos="10">
		<descr>100% column</descr>
		<sketch x1="0" y1="9" x2="11" y2="10" />
	</frame>
	<frame pos="11">
		<descr>100% column</descr>
		<sketch x1="0" y1="11" x2="11" y2="12" />
	</frame>
	<frame pos="12">
		<descr>100% column</descr>
		<sketch x1="0" y1="13" x2="11" y2="14" />
	</frame>
	<frame pos="13">
		<descr>Footer</descr>
		<sketch x1="0" y1="15" x2="11" y2="15" />
	</frame>
	<frame pos="14">
		<descr>Footer</descr>
		<sketch x1="0" y1="16" x2="11" y2="16" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="SALES_INSURANCE" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
              <@wp.fragment code="keycloak" escapeXml=false/>
              <@wp.fragment code="insurance_inclusions" escapeXml=false />

    </head>
    <body class="insurance">

        <!--Navbar-->
        <nav class="navbar first-nav navbar-expand-lg navbar-light ">

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse navbars" id="basicExampleNav">
                <div class="first-header">
                    <div class="back-button">
                        <@wp.show frame=0 />
                    </div>
                    <div class="search-language">
                        <@wp.show frame=1 />
                        <@wp.show frame=2 />
                    </div>
                </div>
            </div>
            <!-- Collapsible content -->

        </nav>
        <nav class="navbar second-nav navbar-expand-lg navbar-light ">

            <@wp.show frame=3 />

            <!-- Collapse button -->
            <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target=".navbars" aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse navbars" id="basicExampleNav2">

                <@wp.show frame=4 />

                <!-- Links -->
                <ul class="navbar-nav ml-auto">
                    <@wp.show frame=5 />
                </ul>
                
                <div class="d-block d-sm-block d-md-none ">
                    <@wp.show frame=1 />
                    <@wp.show frame=2 />
                </div>

            </div>
            <!-- Collapsible content -->

        </nav>
        <!--/.Navbar-->

        <@wp.show frame=6 />
        <@wp.show frame=7 />
        <@wp.show frame=8 />
        <@wp.show frame=9 />
        <@wp.show frame=10 />
        <@wp.show frame=11 />
        <@wp.show frame=12 />
        <@wp.show frame=13 />
        <@wp.show frame=14 />

        <@wp.fragment code="insurance_inclusions_footer" escapeXml=false />

    </body>
</html>
');



INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('keycloak',NULL,NULL,'<script src="http://quickstart-kc-sales-demo.lab.entando.org/auth/js/keycloak.js"></script>
<script>
  const beginKCLoad = (function() {
    function createKcDispatcher(payload) {
      return () => window.dispatchEvent(new CustomEvent(''keycloak'', { detail: payload }));
    }

    function initKeycloak() {
      const keycloak = Keycloak(''/entando-de-app/keycloak.json'');

      keycloak.onReady = () => {
        createKcDispatcher({ eventType: ''onReady'' })();
      };
      keycloak.onAuthSuccess = () => {
        createKcDispatcher({ eventType: ''onAuthSuccess'' });
        localStorage.setItem(''token'', keycloak.token);
      };
      keycloak.onAuthError = () => {
        createKcDispatcher({ eventType: ''onAuthError'' });
      };
      keycloak.onAuthRefreshSuccess = () => {
        createKcDispatcher({ eventType: ''onAuthRefreshSuccess'' });
        localStorage.setItem(''token'', keycloak.token);
      };
      keycloak.onAuthRefreshError = () => {
        createKcDispatcher({ eventType: ''onAuthRefreshError'' });
      };
      keycloak.onAuthLogout = () => {
        createKcDispatcher({ eventType: ''onAuthLogout'' });
      };
      keycloak.onTokenExpired = () => {
        createKcDispatcher({ eventType: ''onTokenExpired'' });
      };
      const onInit = (isAuth) => {
        createKcDispatcher({ eventType: ''onInit'' })();
        if (isAuth) {
          localStorage.setItem(''token'', keycloak.token);
        }
      };

      window.entando = {
        ...(window.entando || {}),
        keycloak,
      };

      window.entando.keycloak
        .init({
          onLoad: ''check-sso'',
          promiseType: ''native'',
          enableLogging: true,
        })
        .then(onInit)
        .catch(e => {
          console.log(e);
          console.log(''Failed to initialize Keycloak'');
        });
    }
    return initKeycloak;
  })();
 beginKCLoad();
</script>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('insurance_inclusions',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<link rel="stylesheet" href="<@wp.resourceURL />static/css/all.css">
<link href="<@wp.resourceURL />static/css/bootstrap.min.css" rel="stylesheet">
<link href="<@wp.resourceURL />static/css/mdb.min.css" rel="stylesheet">
<link rel="stylesheet" href="<@wp.resourceURL />static/css/seed.css" rel="stylesheet">
<link rel="stylesheet" href="<@wp.resourceURL />static/css/media-queries.css" rel="stylesheet">
<link rel="stylesheet" href="<@wp.resourceURL />static/css/seed-insurance.css" rel="stylesheet">
<link rel="stylesheet" href="<@wp.resourceURL />static/css/media-queries-insurance.css" rel="stylesheet">
<script type="text/javascript" src="<@wp.resourceURL />static/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('insurance_inclusions_footer',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
 <script type="text/javascript"  src="<@wp.resourceURL />static/js/bootstrap.min.js"></script>
 <script type="text/javascript" src="<@wp.resourceURL />static/js/mdb.min.js"></script>
',NULL,0);
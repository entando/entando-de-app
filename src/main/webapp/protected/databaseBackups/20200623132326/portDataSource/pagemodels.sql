INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('service','Service Page','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Sample Frame</descr>
		<sketch x1="0" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Sample Frame</descr>
		<sketch x1="0" y1="1" x2="11" y2="1" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title><@wp.currentPage param="title" /></title>
</head>
<body>
<h1><@wp.currentPage param="title" /></h1>
<a href="<@wp.url page="homepage" />" >Home</a><br>
<div><@wp.show frame=0 /></div>
<div><@wp.show frame=1 /></div>
  <@wp.fragment code="keycloak" escapeXml=false/>
</body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('loginpagemodel','Login page model','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Form frame</descr>
		<sketch x1="0" y1="0" x2="11" y2="0" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title><@wp.currentPage param="title" /></title>
  <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />

  <script src="http://quickshift-kc-sales-demo.lab.entando.org/auth/js/keycloak.js"></script>
  <script>
    const keycloak = Keycloak(''/entando-de-app/keycloak.json'');
    function createKcDispatcher(payload) {
      return () =>
        window.dispatchEvent(
          new CustomEvent("keycloak", { detail: payload })
        );
    }
    keycloak.onReady = createKcDispatcher({ eventType: "onReady" });
    keycloak.onAuthSuccess = createKcDispatcher({
      eventType: "onAuthSuccess"
    });
    keycloak.onAuthError = createKcDispatcher({
      eventType: "onAuthError"
    });
    keycloak.onAuthRefreshSuccess = createKcDispatcher({
      eventType: "onAuthRefreshSuccess"
    });
    keycloak.onAuthRefreshError = createKcDispatcher({
      eventType: "onAuthRefreshError"
    });
    keycloak.onAuthLogout = createKcDispatcher({
      eventType: "onAuthLogout"
    });
    keycloak.onTokenExpired = createKcDispatcher({
      eventType: "onTokenExpired"
    });
    const onInit = createKcDispatcher({ eventType: "onInit" });
    window.entando = {
      ...(window.entando || {}),
      keycloak
    };
    window.entando.keycloak.init({ onLoad: "check-sso" }).success(onInit);
  </script>
</head>
<body>
<div><@wp.show frame=0 /></div>
</body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('ng_dashboard','NG Dashboard','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>brand</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
	</frame>
	<frame pos="1">
		<descr>navbar</descr>
		<sketch x1="2" y1="0" x2="7" y2="0" />
	</frame>
	<frame pos="2">
		<descr>login widget</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
	</frame>
	<frame pos="3">
		<descr>Search</descr>
		<sketch x1="10" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="4">
		<descr>colonna 4</descr>
		<sketch x1="0" y1="1" x2="3" y2="2" />
	</frame>
	<frame pos="5">
		<descr>colonna 4</descr>
		<sketch x1="4" y1="1" x2="7" y2="2" />
	</frame>
	<frame pos="6">
		<descr>colonna 4</descr>
		<sketch x1="8" y1="1" x2="11" y2="2" />
	</frame>
	<frame pos="7">
		<descr>Notification bar widget</descr>
		<sketch x1="0" y1="3" x2="1" y2="4" />
	</frame>
	<frame pos="8">
		<descr>Notification bar widget</descr>
		<sketch x1="2" y1="3" x2="3" y2="4" />
	</frame>
	<frame pos="9">
		<descr>Notification bar widget</descr>
		<sketch x1="4" y1="3" x2="5" y2="4" />
	</frame>
	<frame pos="10">
		<descr>Notification bar widget</descr>
		<sketch x1="6" y1="3" x2="7" y2="4" />
	</frame>
	<frame pos="11">
		<descr>Notification bar widget</descr>
		<sketch x1="8" y1="3" x2="9" y2="4" />
	</frame>
	<frame pos="12">
		<descr>Notification bar widget</descr>
		<sketch x1="10" y1="3" x2="11" y2="4" />
	</frame>
	<frame pos="13">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="5" x2="11" y2="6" />
	</frame>
	<frame pos="14">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="7" x2="11" y2="8" />
	</frame>
	<frame pos="15">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="9" x2="11" y2="10" />
	</frame>
	<frame pos="16">
		<descr>footer</descr>
		<sketch x1="0" y1="11" x2="11" y2="12" />
	</frame>
	<frame pos="17">
		<descr>footer</descr>
		<sketch x1="0" y1="13" x2="11" y2="14" />
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
            <@wp.fragment code="keycloak" escapeXml=false />
            <@wp.fragment code="angular" escapeXml=false />

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
                                <a class="nav-link" href="#">Business</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Grow</a>
                            </li>
                            <#if (Session.currentUser != "guest")>
                              <li class="nav-item">
                                  <a class="nav-link" href="<@wp.url page="mortgages" />">Mortgages and Lending</a>
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
                        <@wp.show frame=2 />
                        <@wp.show frame=3 />
                    </div>
                    <!-- Collapsible content -->
                </nav>
                <div class="dashboard-container ">   
                    <h1 class="current-page">
                        <@wp.currentPage param="title" />
                    </h1>
                    <div class="row ">
                      <div class="col-12 col-lg-4">
                        <@wp.show frame=4 />
                      </div>
                      <div class="col-12 col-lg-4">
                        <@wp.show frame=5 />
                      </div>
                      <div class="col-12 col-lg-4">
                        <@wp.show frame=6 />
                      </div>
                    </div>
                    <div class="row">
                        <div class="NotificationBar">

                            <@wp.show frame=7 />
                            <@wp.show frame=8 />
                            <@wp.show frame=9 />
                            <@wp.show frame=10 />

                            <div class="NotificationBar__btn">
                                <img class="CheckingCard__icon" src="<@wp.imgURL />dashboard/Frametransfer.png" />
                                Transfer Money
                            </div>
                            <div class="NotificationBar__btn">
                                <img class="CheckingCard__icon" src="<@wp.imgURL />dashboard/Framepay.png" />

                                Pay bills
                            </div>
                            <div class="NotificationBar__btn">
                                <img class="CheckingCard__icon" src="<@wp.imgURL />dashboard/Framemoney.png" />

                                Send money
                            </div>
                            <div class="NotificationBar__btn">
                                <img class="CheckingCard__icon" src="<@wp.imgURL />dashboard/Frameinvest.png" />

                                Investments
                            </div>
<div class="NotificationBar__btn">
                            <@wp.show frame=11 />
  </div>
<div class="NotificationBar__btn">
                            <@wp.show frame=12 />
  </div>

                        </div>
                    </div>
                    <div class="row">
                      <div class="col-12">
                        <@wp.show frame=13 />
                      </div>
                    </div>
                    <div class="row">
                        <@wp.show frame=14 />
                    </div>
                    <div class="row">
                        <@wp.show frame=15 />
                    </div>
                </div>
                <@wp.show frame=16 />
                <@wp.show frame=17 />
            </div>

            <script type="text/javascript"  src="<@wp.resourceURL />static/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="<@wp.resourceURL />static/js/mdb.min.js"></script>
            <script type="text/javascript" src="<@wp.resourceURL />static/js/datatables.min.js"></script>

        </body>
    </html>');
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
                            <a class="nav-link" href="#">Business</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Grow</a>
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
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('dashboard','Seed Dashboard','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>brand</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
	</frame>
	<frame pos="1">
		<descr>navbar</descr>
		<sketch x1="2" y1="0" x2="7" y2="0" />
	</frame>
	<frame pos="2">
		<descr>login widget</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
	</frame>
	<frame pos="3">
		<descr>Search</descr>
		<sketch x1="10" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="4">
		<descr>colonna 4</descr>
		<sketch x1="0" y1="1" x2="3" y2="2" />
	</frame>
	<frame pos="5">
		<descr>colonna 4</descr>
		<sketch x1="4" y1="1" x2="7" y2="2" />
	</frame>
	<frame pos="6">
		<descr>colonna 4</descr>
		<sketch x1="8" y1="1" x2="11" y2="2" />
	</frame>
	<frame pos="7">
		<descr>Notification bar widget</descr>
		<sketch x1="0" y1="3" x2="1" y2="4" />
	</frame>
	<frame pos="8">
		<descr>Notification bar widget</descr>
		<sketch x1="2" y1="3" x2="3" y2="4" />
	</frame>
	<frame pos="9">
		<descr>Notification bar widget</descr>
		<sketch x1="4" y1="3" x2="5" y2="4" />
	</frame>
	<frame pos="10">
		<descr>Notification bar widget</descr>
		<sketch x1="6" y1="3" x2="7" y2="4" />
	</frame>
	<frame pos="11">
		<descr>Notification bar widget</descr>
		<sketch x1="8" y1="3" x2="9" y2="4" />
	</frame>
	<frame pos="12">
		<descr>Notification bar widget</descr>
		<sketch x1="10" y1="3" x2="11" y2="4" />
	</frame>
	<frame pos="13">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="5" x2="11" y2="6" />
	</frame>
	<frame pos="14">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="7" x2="11" y2="8" />
	</frame>
	<frame pos="15">
		<descr>colonna 12</descr>
		<sketch x1="0" y1="9" x2="11" y2="10" />
	</frame>
	<frame pos="16">
		<descr>footer</descr>
		<sketch x1="0" y1="11" x2="11" y2="12" />
	</frame>
	<frame pos="17">
		<descr>footer</descr>
		<sketch x1="0" y1="13" x2="11" y2="14" />
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
			<@wp.fragment code="angular" escapeXml=false />
          
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
                                <a class="nav-link" href="#">Business</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Grow</a>
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
                        <@wp.show frame=2 />
                        <@wp.show frame=3 />
                    </div>
                    <!-- Collapsible content -->
                </nav>
                <div class="dashboard-container ">   
                    <h1 class="current-page">
                        <@wp.currentPage param="title" />
                    </h1>
                    <div class="row ">
                      <div class="col-12 col-lg-4">
                        <@wp.show frame=4 />
                      </div>
                      <div class="col-12 col-lg-4">
                        <@wp.show frame=5 />
                      </div>
                      <div class="col-12 col-lg-4">
                        <@wp.show frame=6 />
                      </div>
                    </div>
                    <div class="row">
                        <div class="NotificationBar">

                            <@wp.show frame=8 />
                            <@wp.show frame=9 />
                            <@wp.show frame=10 />

                            <div class="NotificationBar__btn">
                                <@wp.show frame=7 />
                            </div>
                            <div class="NotificationBar__btn">
                                <img class="CheckingCard__icon" src="<@wp.imgURL />dashboard/Framepay.png" />

                                Pay bills
                            </div>
                            <div class="NotificationBar__btn">
                                <img class="CheckingCard__icon" src="<@wp.imgURL />dashboard/Framemoney.png" />

                                Send money
                            </div>
                            <div class="NotificationBar__btn">
                                <img class="CheckingCard__icon" src="<@wp.imgURL />dashboard/Frameinvest.png" />

                                Investments
                            </div>
							<div class="NotificationBar__btn">
                           		<@wp.show frame=11 />
  							</div>
							<div class="NotificationBar__btn">
                            	<@wp.show frame=12 />
  							</div>
                        </div>
                    </div>
                    <div class="row">
                      <div class="col-12">
                        <@wp.show frame=13 />
                      </div>
                    </div>
                    <div class="row">
                        <@wp.show frame=14 />
                    </div>
                    <div class="row">
                        <@wp.show frame=15 />
                    </div>
                </div>
                <@wp.show frame=16 />
                <@wp.show frame=17 />
            </div>

            <script type="text/javascript"  src="<@wp.resourceURL />static/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="<@wp.resourceURL />static/js/mdb.min.js"></script>
            <script type="text/javascript" src="<@wp.resourceURL />static/js/datatables.min.js"></script>

        </body>
    </html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('pda_smart_inbox','PDA Smart Inbox','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Search</descr>
		<sketch x1="7" y1="0" x2="8" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Notifications</descr>
		<sketch x1="9" y1="0" x2="10" y2="0" />
	</frame>
	<frame pos="2">
		<descr>Authentication</descr>
		<sketch x1="11" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="3">
		<descr>User details</descr>
		<sketch x1="0" y1="1" x2="1" y2="1" />
	</frame>
	<frame pos="4">
		<descr>Navigation</descr>
		<sketch x1="0" y1="2" x2="1" y2="3" />
	</frame>
	<frame pos="5">
		<descr>Task list widget</descr>
		<sketch x1="2" y1="1" x2="11" y2="1" />
	</frame>
	<frame pos="6">
		<descr>Task details widget</descr>
		<sketch x1="2" y1="2" x2="11" y2="3" />
	</frame>
	<frame pos="7">
		<descr>Notes</descr>
		<sketch x1="2" y1="4" x2="7" y2="4" />
	</frame>
	<frame pos="8">
		<descr>Attachments</descr>
		<sketch x1="8" y1="4" x2="11" y2="4" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <@wp.fragment code="entando_pda_css_reset" escapeXml=false />
        <@wp.fragment code="entando_pda_import_react" escapeXml=false />

        <@wp.fragment code="entando_pda_shared_css_js" escapeXml=false />
        <@wp.fragment code="entando_pda_styles" escapeXml=false />
      
        <link rel="icon" href="<@wp.info key=" systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />

        <@wp.fragment code="entando_pda_import_react" escapeXml=false />
	
    </head>

    <body>
        <@wp.fragment code="entando_keycloak_check" escapeXml=false />
        <div class="pda-content">
            <div class="pda-header">
                <@wp.fragment code="entando_pda_header" escapeXml=false />
            </div>

            <aside class="pda-sidebar">
              	<!-- SIDEBAR WIDGET (FRAME 2)-->
              	<@wp.show frame=3 />
              	<@wp.show frame=4 />
              	<!-- END OF SIDEBAR WIDGET (FRAME 2)-->
            </aside>

          	<main class="pda-main">
                <div class="frame-container container">
                    <div class="row white-bg">
                        <div class="col-sm-12">
                          	<@wp.show frame=5 />
                        </div>
                    </div>
                </div>
                <div class="frame-container container">
                    <div class="row white-bg">
                        <div class="col-sm-12">
    	                    <@wp.show frame=6 />
                        </div>
                    </div>
                </div>
                <div class="frame-container container">
                    <div class="row white-bg">
                        <div class="col-sm-8">
                          	<@wp.show frame=7/>
                        </div>
                        <div class="col-sm-4">
                          	<@wp.show frame=8 />
                        </div>
                    </div>
                </div>
          	</main>
        </div>
    </body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('pda_dashboard','PDA Dashboard','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Search</descr>
		<sketch x1="7" y1="0" x2="8" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Notifications</descr>
		<sketch x1="9" y1="0" x2="10" y2="0" />
	</frame>
	<frame pos="2">
		<descr>Authentication</descr>
		<sketch x1="11" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="3">
		<descr>User details</descr>
		<sketch x1="0" y1="1" x2="1" y2="1" />
	</frame>
	<frame pos="4">
		<descr>Navigation</descr>
		<sketch x1="0" y1="2" x2="1" y2="3" />
	</frame>
	<frame pos="5">
		<descr>Dashboard Title</descr>
		<sketch x1="2" y1="1" x2="11" y2="1" />
	</frame>
	<frame pos="6">
		<descr>Summary Card 1</descr>
		<sketch x1="2" y1="2" x2="4" y2="3" />
	</frame>
	<frame pos="7">
		<descr>Summary Card 2</descr>
		<sketch x1="5" y1="2" x2="6" y2="3" />
	</frame>
	<frame pos="8">
		<descr>Summary Card 3</descr>
		<sketch x1="7" y1="2" x2="8" y2="3" />
	</frame>
	<frame pos="9">
		<descr>Summary Card 4</descr>
		<sketch x1="9" y1="2" x2="11" y2="3" />
	</frame>
	<frame pos="10">
		<descr>Dashboard Graph</descr>
		<sketch x1="2" y1="4" x2="11" y2="6" />
	</frame>
	<frame pos="11">
		<descr>Performance Table</descr>
		<sketch x1="2" y1="7" x2="7" y2="11" />
	</frame>
	<frame pos="12">
		<descr>Leaderboard Table</descr>
		<sketch x1="8" y1="7" x2="11" y2="11" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>
      <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- Bootstrap core -->
    <link href="<@wp.resourceURL />static/css/bootstrap.min.css" rel="stylesheet">
    <@wp.fragment code="entando_keycloak_check" escapeXml=false />
    <@wp.fragment code="entando_pda_css_reset" escapeXml=false />
    <@wp.fragment code="entando_pda_import_react" escapeXml=false />

    <@wp.fragment code="entando_pda_shared_css_js" escapeXml=false />
    <@wp.fragment code="entando_pda_styles" escapeXml=false />
    
    <link rel="icon" href="<@wp.info key=" systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
  </head>
  <body>
    <div class="pda-content">
      <div class="pda-header">
        <@wp.fragment code="entando_pda_header" escapeXml=false />
      </div>
      <aside class="pda-sidebar">
        <!-- SIDEBAR WIDGET (FRAME 2)-->
        <@wp.show frame=3 />
        <@wp.show frame=4 />
        <!-- END OF SIDEBAR WIDGET (FRAME 2)-->
      </aside>
      <main class="pda-main">
        <div class="frame-container container dashboard-title">
          <div class="row">
            <div class="col-sm-12 white-bg">
              <@wp.show frame=5 />
            </div>
          </div>
        </div>
        <div class="frame-container container summary-cards">
          <div class="row">
            <div class="col-sm-6 col-md-3 white-bg">
              <@wp.show frame=6 />
            </div>
            <div class="col-sm-6 col-md-3 white-bg">
              <@wp.show frame=7 />
            </div>
            <div class="col-sm-6 col-md-3 white-bg">
              <@wp.show frame=8 />
            </div>
            <div class="col-sm-6 col-md-3 white-bg">
              <@wp.show frame=9 />
            </div>
          </div>
        </div>
        <div class="frame-container container overview-chart">
          <div class="row">
            <div class="col-sm-12 white-bg">
              <@wp.show frame=10 />
            </div>
          </div>
        </div>
        <div class="frame-container container rank-tables">
          <div class="row">
            <div class="col-sm-12 col-md-8 white-bg performance-table">
              <@wp.show frame=11 />
            </div>
            <div class="col-sm-12 col-md-4 white-bg leaderboard-table">
              <@wp.show frame=12 />
            </div>
          </div>
        </div>
      </main>
    </div>
  </body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('pda_keycloak','PDA Keycloak','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>No Frame Required</descr>
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Redirecting...</title>
    </head>

    <body>
        <@wp.fragment code="entando_keycloak_check" escapeXml=false />
        <@wp.fragment code="entando_keycloak_token_setter" escapeXml=false />
    </body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('pda_task_details','PDA Task details','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Search</descr>
		<sketch x1="7" y1="0" x2="8" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Notifications</descr>
		<sketch x1="9" y1="0" x2="10" y2="0" />
	</frame>
	<frame pos="2">
		<descr>Authentication</descr>
		<sketch x1="11" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="3">
		<descr>User details</descr>
		<sketch x1="0" y1="1" x2="1" y2="1" />
	</frame>
	<frame pos="4">
		<descr>Navigation</descr>
		<sketch x1="0" y1="2" x2="1" y2="3" />
	</frame>
	<frame pos="5">
		<descr>Task details widget</descr>
		<sketch x1="2" y1="1" x2="11" y2="1" />
	</frame>
	<frame pos="6">
		<descr>Task completion form widget</descr>
		<sketch x1="2" y1="2" x2="11" y2="2" />
	</frame>
	<frame pos="7">
		<descr>Task comments widget</descr>
		<sketch x1="2" y1="3" x2="7" y2="3" />
	</frame>
	<frame pos="8">
		<descr>Task attachments widget</descr>
		<sketch x1="8" y1="3" x2="11" y2="3" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <@wp.fragment code="entando_keycloak_check" escapeXml=false />
        <@wp.fragment code="entando_pda_css_reset" escapeXml=false />
        <@wp.fragment code="entando_pda_import_react" escapeXml=false />

        <@wp.fragment code="entando_pda_shared_css_js" escapeXml=false />
    	<@wp.fragment code="entando_pda_styles" escapeXml=false />

        
        <link rel="icon" href="<@wp.info key=" systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />

        <@wp.fragment code="entando_pda_import_react" escapeXml=false />

    </head>

    <body>
        <div class="pda-content">
            <div class="pda-header">
                <@wp.fragment code="entando_pda_header" escapeXml=false />
            </div>

            <aside class="pda-sidebar">
              	<!-- SIDEBAR WIDGET (FRAME 2)-->
              	<@wp.show frame=3 />
              	<@wp.show frame=4 />
              	<!-- END OF SIDEBAR WIDGET (FRAME 2)-->
            </aside>

          	<main class="pda-main">
                <div class="frame-container container">
                    <div class="row white-bg">
                        <div class="col-sm-12">
                          	<@wp.show frame=5 />
                        </div>
                    </div>
                </div>
                <div class="frame-container container">
                    <div class="row white-bg">
                        <div class="col-sm-12">
    	                    <@wp.show frame=6 />
                        </div>
                    </div>
                </div>
                <div class="frame-container container">
                    <div class="row white-bg">
                        <div class="col-sm-8">
                          	<@wp.show frame=7/>
                        </div>
                        <div class="col-sm-4">
                          	<@wp.show frame=8 />
                        </div>
                    </div>
                </div>
          	</main>
        </div>
    </body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('pda_single_widget','PDA Single Widget','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Search</descr>
		<sketch x1="7" y1="0" x2="8" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Notifications</descr>
		<sketch x1="9" y1="0" x2="10" y2="0" />
	</frame>
	<frame pos="2">
		<descr>Authentication</descr>
		<sketch x1="11" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="3">
		<descr>User details</descr>
		<sketch x1="0" y1="1" x2="1" y2="1" />
	</frame>
	<frame pos="4">
		<descr>Navigation</descr>
		<sketch x1="0" y1="2" x2="1" y2="3" />
	</frame>
	<frame pos="5">
		<descr>Main Widget</descr>
		<sketch x1="2" y1="1" x2="11" y2="3" />
	</frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <@wp.fragment code="entando_pda_css_reset" escapeXml=false />
        <@wp.fragment code="entando_pda_import_react" escapeXml=false />

        <@wp.fragment code="entando_pda_shared_css_js" escapeXml=false />
        <@wp.fragment code="entando_pda_styles" escapeXml=false />
      
        <link rel="icon" href="<@wp.info key=" systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />

        <@wp.fragment code="entando_pda_import_react" escapeXml=false />
	
    </head>

    <body>
        <@wp.fragment code="entando_keycloak_check" escapeXml=false />
        <div class="pda-content">
            <div class="pda-header">
                <@wp.fragment code="entando_pda_header" escapeXml=false />
            </div>

            <aside class="pda-sidebar">
              	<!-- SIDEBAR WIDGET (FRAME 2)-->
              	<@wp.show frame=3 />
              	<@wp.show frame=4 />
              	<!-- END OF SIDEBAR WIDGET (FRAME 2)-->
            </aside>

          	<main class="pda-main">
                <div class="frame-container container">
                    <div class="row white-bg">
                        <div class="col-sm-12">
                          	<@wp.show frame=5 />
                        </div>
                    </div>
                </div>
          	</main>
        </div>
    </body>
</html>');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('process_list','Process List','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>brand</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
	</frame>
	<frame pos="1">
		<descr>navbar</descr>
		<sketch x1="2" y1="0" x2="7" y2="0" />
	</frame>
	<frame pos="2">
		<descr>login widget</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
	</frame>
	<frame pos="3">
		<descr>empty space</descr>
		<sketch x1="10" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="4">
		<descr>main page</descr>
		<sketch x1="0" y1="1" x2="11" y2="3" />
	</frame>
	<frame pos="5">
		<descr>footer</descr>
		<sketch x1="0" y1="4" x2="11" y2="4" />
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
                            <a class="nav-link" href="#">Business</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Grow</a>
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
                      <@wp.show frame=2 />
                      <@wp.show frame=3 />
                </div>
                <!-- Collapsible content -->
                </nav>
       
          <div class="container" style="margin-bottom: 20px">
            <h1>Mortgage and Lending Status</h1>
            <@wp.show frame=4 />
          </div>
        
        <@wp.show frame=5 />

    </div>
        
        <!-- Bootstrap core js -->
        <script type="text/javascript"  src="<@wp.resourceURL />static/js/bootstrap.min.js"></script>
        <!-- MDB core js -->
        <script type="text/javascript" src="<@wp.resourceURL />static/js/mdb.min.js"></script>

    </body>
</html>
');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('simple_page','Simple Page','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>brand</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
	</frame>
	<frame pos="1">
		<descr>navbar</descr>
		<sketch x1="2" y1="0" x2="7" y2="0" />
	</frame>
	<frame pos="2">
		<descr>login widget</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
	</frame>
	<frame pos="3">
		<descr>empty space</descr>
		<sketch x1="10" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="4">
		<descr>main page</descr>
		<sketch x1="0" y1="1" x2="11" y2="3" />
	</frame>
	<frame pos="5">
		<descr>footer</descr>
		<sketch x1="0" y1="4" x2="11" y2="4" />
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
      
      <style>
        .mortgage-form button {
          background-color: #8cc63f;
         }
        
         .mortgage-form button:hover {
           background-color: #8cc63f;
           color: #4d5258;
          }
      </style>
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
                            <a class="nav-link" href="#">Business</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Grow</a>
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
                      <@wp.show frame=2 />
                      <@wp.show frame=3 />
                </div>
                <!-- Collapsible content -->
                </nav>
       
          <div class="container" style="margin-bottom: 20px">
            <h1>Mortgage Application Form</h1>
            <div class="mortgage-form">
	            <@wp.show frame=4 />
            </div>
          </div>
        
        <@wp.show frame=5 />

    </div>
        
        <!-- Bootstrap core js -->
        <script type="text/javascript"  src="<@wp.resourceURL />static/js/bootstrap.min.js"></script>
        <!-- MDB core js -->
        <script type="text/javascript" src="<@wp.resourceURL />static/js/mdb.min.js"></script>

    </body>
</html>
');
INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('portal_example','Portal example page','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>brand</descr>
		<sketch x1="0" y1="0" x2="1" y2="0" />
		<defaultWidget code="Brand-Logo" />
	</frame>
	<frame pos="1">
		<descr>navbar</descr>
		<sketch x1="2" y1="0" x2="7" y2="0" />
		<defaultWidget code="navigarion_bar">
			<properties>
				<property key="navSpec">code(homepage) + code(interest) + code(credit_card) + code(dashboard)</property>
			</properties>
		</defaultWidget>
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
                    
                   
                    
                   <div class="d-block d-sm-block d-md-none ">
                      
                      <@wp.show frame=2 />
                      <@wp.fragment code="language_choose" escapeXml=false/>
                      <@wp.show frame=3 />
                      
                    </div>
                </div>
                <div class="d-none d-lg-block d-xl-block">
                 <div class="d-flex">
                      <@wp.show frame=2 />
                      <@wp.fragment code="language_choose" escapeXml=false/>
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

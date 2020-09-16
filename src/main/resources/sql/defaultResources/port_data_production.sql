INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('seed_home','Seed homepage','<?xml version="1.0" encoding="UTF-8"?>
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
		<descr>search</descr>
		<sketch x1="8" y1="0" x2="9" y2="0" />
		<defaultWidget code="search_form" />
	</frame>
	<frame pos="3">
		<descr>login widget</descr>
		<sketch x1="10" y1="0" x2="11" y2="0" />
		<defaultWidget code="keyclock_login" />
	</frame>
	<frame pos="4">
		<descr>main banner</descr>
		<sketch x1="0" y1="1" x2="11" y2="2" />
		<defaultWidget code="breadcrumb" />
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
<#assign jpseo=JspTaglibs["/jpseo-aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="SALES_DEMO" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <@jpseo.currentPage param="description" var="metaDescrVar" />
        <#if (metaDescrVar??) && (metaDescrVar!="")>
                <meta name="description" content="${metaDescrVar}" />
        </#if>
        <@jpseo.seoMetaTag key="author" var="metaAuthorVar" />
        <#if (metaAuthorVar??) && (metaAuthorVar!="")>
                <meta name="author" content="${metaAuthorVar}" />
        </#if>
        <@jpseo.seoMetaTag key="keywords" var="metaKeywords" />
        <#if (metaKeywords??) && (metaKeywords!="")>
                <meta name="keywords" content="${metaKeywords}" />
        </#if>
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />

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

INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('keyclock_login', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">keycloak redirect</property>
<property key="it">keycloak redirect</property>
</properties>', NULL, NULL, NULL, NULL, 1, 'free');

INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('keyclock_login', 'keyclock_login', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#if (Session.currentUser.username != "guest") >
    <div style="display: flex; color: white; padding: 10px; height: 100%;">
      <span class="btn btn-warning" style="color: white">
<@wp.i18n key="WELCOME" />, 
<em>
  <#if (Session.currentUser.profile??) && (Session.currentUser.profile.displayName??)>
     <span>${Session.currentUser.profile.displayName}</span>
  <#else>
     ${Session.currentUser}</#if>
   </em>
  </span>
      <@wp.ifauthorized permission="enterBackend">
      <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />" class="btn btn-primary"><@wp.i18n key="ADMINISTRATION" /></a>
      </@wp.ifauthorized>
      <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action" class="btn btn-primary"><@wp.i18n key="LOGOUT" /></a>
      <@wp.pageWithWidget widgetTypeCode="userprofile_editCurrentUser" var="userprofileEditingPageVar" listResult=false />
      <#if (userprofileEditingPageVar??) >
      <a href="<@wp.url page="${userprofileEditingPageVar.code}" />" ><@wp.i18n key="userprofile_CONFIGURATION" /></a>
      </#if>
    </div>
 <#else>
    <script src="<@wp.info key="systemParam" paramName="keycloakAuthUrl" />/js/keycloak.js"></script>
    <script>
        var keycloak = Keycloak({
          realm: ''<@wp.info key="systemParam" paramName="keycloakRealm" />'',
          url: ''<@wp.info key="systemParam" paramName="keycloakAuthUrl" />'',
          clientId: ''<@wp.info key="systemParam" paramName="keycloakPublicClientId" />''
        });
        keycloak.init({ onLoad: ''check-sso'', checkLoginIframe: true }).success(function (authenticated) {
          if (keycloak.authenticated && keycloak.token) {
            localStorage.clear();
            location.href = ''<@wp.info key="systemParam" paramName="applicationBaseURL" />do/login?redirectTo=<@wp.url/>'';
          } 
        });
    </script>
    <form action="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/login" method="get" class="form-horizontal margin-medium-top">
        <input type="hidden" name="redirectTo" value="<@wp.url/>" />
        <input type="submit" value="Sign In" class="btn btn-primary" style="padding: 4px 24px" />
    </form>
</#if>', 1);

INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked) VALUES ('entando-widget-navigation_bar','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Bar</property>
<property key="it">Navigazione - Barra Orizzontale</property>
</properties>','<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>',NULL,NULL,NULL,1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-navigation_bar','entando-widget-navigation_bar',NULL,'<#assign c=JspTaglibs[ "http://java.sun.com/jsp/jstl/core" ]>
<#assign wp=JspTaglibs[ "/aps-core" ]>
<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />
<ul class="navbar-nav navbar-menu">
    <#assign homeClass=''class="home"''>
    <#if (currentPageCode=="home" )>
    <#assign homeClass=''class="home active"''>
    </#if>
    <@wp.nav var="page">
    <#if (previousPage?? && previousPage.code??)>
    <#assign previousLevel=previousPage.level>
    <#assign level=page.level>
    <@wp.freemarkerTemplateParameter var="level" valueName="level" />
    <@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
    <@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />
    </#if>
    <@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
    </@wp.nav>
    <#if (previousPage??)>
    <#assign previousLevel=previousPage.level>
    <#assign level=0>
    <@wp.freemarkerTemplateParameter var="level" valueName="level" />
    <@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
    <@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />
    <#if (previousLevel !=0 )>
    <#list 0..(previousLevel - 1) as ignoreMe>
</ul>
</li>
</#list>
<#else>
</ul>
</#if>
</#if>

<@wp.freemarkerTemplateParameter var="previousPage" valueName="" removeOnEndTag=true />','<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-3.4.1.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />

<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />
<ul class="nav">
<@wp.nav var="page">

<#if (previousPage?? && previousPage.code??)>
	<#assign previousLevel=previousPage.level>
	<#assign level=page.level>
        <@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />
</#if>

	<@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
</@wp.nav>

<#if (previousPage??)>
	<#assign previousLevel=previousPage.level>
        <#assign level=0>
	<@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />

        <#if (previousLevel != 0)>
        <#list 0..(previousLevel - 1) as ignoreMe>
            </ul></li>
        </#list>

	</#if>
</#if>

</ul>
<@wp.freemarkerTemplateParameter var="previousPage" valueName="" removeOnEndTag=true />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-navigation_bar_include',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]> 
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]> 
<#assign liClass='' class="nav-item dropdown no-son-page"''>
<#assign homeIcon="">
<#assign caret="">
<#assign ulClass='' ''>
<#assign aClassAndData="">
<#assign aURL=previousPage.url>
<#if (previousPage.voidPage)>
  <#assign aURL=''#'' />
</#if>
<#if (previousPage.code?contains("homepage"))>
  <#assign homeIcon=''<i class="icon-home"></i>&#32;''>
</#if>
<#if (previousPage.code==currentPageCode)>
  <#assign liClass='' class="nav-item active dropdown "''>
</#if>
<#if (previousLevel < level)>
  <#assign liClass='' class="nav-item dropdown "''>
    <#if (previousPage.code==currentPageCode)>
      <#assign liClass='' class="dropdown active"''>
    </#if>
    <#if previousPage.voidPage>
      <#assign liClass='' class="dropdown"''>
    </#if>
    <#if (previousLevel> 0) >
      <#assign liClass='' class="dropdown-submenu"''>
        <#if (previousPage.code==currentPageCode)>
          <#assign liClass='' class="dropdown-submenu active''>
        </#if>
        <#assign ulClass='' class="dropdown-menu"''>
    </#if>
    <#assign aClassAndData='' class="nav-link dropdown-toggle" data-toggle="dropdown"''>
      <#if (previousLevel==0)>
        <#assign caret='' ''>
          <#assign liClass='' class="nav-item dropdown "''>
      </#if>
</#if>
<#if (previousLevel==0)>
  <li ${liClass} padre>
</#if>
<#if (aURL !='''' )>
 
  <a href="${aURL}" ${aClassAndData} class="nav-link no-son-page">${homeIcon}${previousPage.title}${caret}</a>
</#if>


<#if (aURL=='''' )>
  <a href="#">
</#if>
<#if (previousLevel==level)>
  <#if (previousLevel==0)>
    </li>
  </#if>
</#if>
<#if (previousLevel < level)>
  <ul class="dropdown-menu">
</#if>
<#if (previousLevel> level)>
  <#list 1..(previousLevel - level) as ignoreMe>
    </ul>
  </#list>
  </li>
</#if>','<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>


<#assign liClass="">
<#assign homeIcon="">
<#assign caret="">
<#assign ulClass='' class="dropdown-menu"''>
<#assign aClassAndData="">
<#assign aURL=previousPage.url>

<#if (previousPage.voidPage)>
       <#assign aURL=''#'' />
</#if>

<#if (previousPage.code?contains("homepage"))>
     <#assign homeIcon=''<i class="icon-home"></i>&#32;''>
</#if>

<#if (previousPage.code == currentPageCode)>
     <#assign liClass='' class="active"''>
</#if>

<#if (previousLevel < level)>
    <#assign liClass='' class="dropdown"'' >

    <#if (previousPage.code == currentPageCode)>
	<#assign liClass='' class="dropdown active"''>
    </#if>

    <#if previousPage.voidPage>
	<#assign liClass='' class=" dropdown"'' >
    </#if>

    <#if (previousLevel > 0) >
	<#assign liClass='' class="dropdown-submenu"''>
	<#if (previousPage.code == currentPageCode)>
		<#assign liClass='' class="dropdown-submenu active"''>
    	</#if>

	<#assign ulClass='' class="dropdown-menu"''>
    </#if>

    <#assign aClassAndData='' class="dropdown-toggle" data-toggle="dropdown"''>

    <#if (previousLevel == 0)>
	<#assign caret='' <span class="caret"></span>''>
    </#if>
</#if>

<li ${liClass} >
	<a href="${aURL}"  ${aClassAndData} >
				<!-- [ ${previousLevel} ] -->
				${homeIcon}
				${previousPage.title}
				${caret}
	</a>

<#if (previousLevel == level)></li></#if>
<#if (previousLevel < level)>
    <ul ${ulClass}>
</#if>
<#if (previousLevel > level)>
     <#list 1..(previousLevel - level) as ignoreMe>
            </li></ul>
     </#list>
    </li>
</#if>',1);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup) VALUES ('breadcrumb','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Breadcrumb</property>
<property key="it">Briciole di pane</property>
</properties>',NULL,NULL,NULL,NULL,1,'free');
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('breadcrumb','breadcrumb',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.currentPage param="code" var="currentViewCode" />

<div class="navbar-position">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">

            <span class="noscreen">
                <@wp.i18n key="ESNB_YOU_ARE_HERE" />
            </span>
            <#assign first=true>
            <@wp.nav spec="current.path" var="currentTarget">
            <#assign currentCode=currentTarget.code>

            <!--            <#if first>
                        <span class="divider">/</span>
                        </#if>-->

            <#if !currentTarget.voidPage>
            <#if (currentCode == currentViewCode)>
            <li class="breadcrumb-item active" aria-current="page">${currentTarget.title}</li>
            <#else>
            <li class="breadcrumb-item">
                <a href="${currentTarget.url}">${currentTarget.title}</a>
            </li>
            </#if>
            <#else>
            ${currentTarget.title}
            </#if>
            <#assign first=false>
            </@wp.nav>
        </ol>
    </nav>
</div>
',NULL,1);

INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_SIGNOUT','en','Logout');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_SIGNOUT','it','Esci');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_PROFILE_CONFIGURATION','en','Profile Configuration');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_PROFILE_CONFIGURATION','it','Configurazione Profilo');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_SIGNIN','en','Log in');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_SIGNIN','it','Entra');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_PASSWORD','en','Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_PASSWORD','it','Password');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USERNAME','en','Username');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USERNAME','it','Username');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USER_STATUS_CREDENTIALS_INVALID','en','Invalid credentials');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USER_STATUS_CREDENTIALS_INVALID','it','Invalid credentials');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USER_STATUS_EXPIRED','en','User expired');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESLF_USER_STATUS_EXPIRED','it','User expired');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESNB_YOU_ARE_HERE','en','You''re here');
INSERT INTO localstrings (keycode,langcode,stringvalue) VALUES ('ESNB_YOU_ARE_HERE','it','Sei qui');






INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('OotbcHomepage','Homepage Template','<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Header</descr>
		<sketch x1="0" y1="0" x2="11" y2="0" />
	</frame>
	<frame pos="1">
		<descr>Colonna 12</descr>
		<sketch x1="0" y1="1" x2="11" y2="1" />
	</frame>
	<frame pos="2">
		<descr>Colonna 12</descr>
		<sketch x1="0" y1="2" x2="11" y2="2" />
	</frame>
	<frame pos="3">
		<descr>Colonna 12</descr>
		<sketch x1="0" y1="3" x2="11" y2="3" />
	</frame>
	<frame pos="4">
		<descr>Colonna 12</descr>
		<sketch x1="0" y1="4" x2="11" y2="4" />
	</frame>
	<frame pos="5">
		<descr>Colonna 12</descr>
		<sketch x1="0" y1="5" x2="11" y2="5" />
	</frame>
	<frame pos="6">
		<descr>Footer</descr>
		<sketch x1="0" y1="6" x2="11" y2="6" />
	</frame>
</frames>

',NULL,'<#assign jpseo=JspTaglibs["/jpseo-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - Entando
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <@jpseo.currentPage param="description" var="metaDescrVar" />
        <#if (metaDescrVar??) && (metaDescrVar!="")>
                <meta name="description" content="${metaDescrVar}" />
        </#if>
        <@jpseo.seoMetaTag key="author" var="metaAuthorVar" />
        <#if (metaAuthorVar??) && (metaAuthorVar!="")>
                <meta name="author" content="${metaAuthorVar}" />
        </#if>
        <@jpseo.seoMetaTag key="keywords" var="metaKeywords" />
        <#if (metaKeywords??) && (metaKeywords!="")>
                <meta name="keywords" content="${metaKeywords}" />
        </#if>
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
        <link rel="stylesheet" href="<@wp.resourceURL />ootbc-bundle/static/css/ootbc.css" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="header">
            <@wp.show frame=0 />
        </div>
        <div class="page__body">
            <@wp.show frame=1 />
            <@wp.show frame=2 />
            <@wp.show frame=3 />
            <@wp.show frame=4 />
            <@wp.show frame=5 />
        </div>
        <div class="page__footer">
            <@wp.show frame=6 />
        </div>
  </body>
</html>
');


INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid) VALUES ('ootbc-header-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Header</property>
<property key="it">Header</property>
</properties>','<config>
    <parameter name="menuItems" />
    <parameter name="logo" />
    <parameter name="theme" />
    <parameter name="sideNavigation" />
    <parameter name="logoRedirectPage" />
    <parameter name="tagline" />
    <parameter name="icons" />
    <action name="configSimpleParameter"/>
</config>',NULL,NULL,NULL,1,'free','{"resources":["ootbc-bundle/static/js/2.8887cab1.chunk.js","ootbc-bundle/static/js/main.0acb2ec5.chunk.js","ootbc-bundle/static/js/runtime-main.45dc1061.js"],"customElement":"header-config"}',NULL);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('ootbc-header-widget','ootbc-header-widget',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<script src="<@wp.resourceURL />ootbc-bundle/static/js/2.3b049955.chunk.js"></script>
<script src="<@wp.resourceURL />ootbc-bundle/static/js/main.3f90a792.chunk.js"></script>
<script src="<@wp.resourceURL />ootbc-bundle/static/js/runtime-main.b759d654.js"></script>
<link href="<@wp.resourceURL />ootbc-bundle/static/css/main.fbc3daf0.chunk.css" rel="stylesheet">
<#-- entando_resource_injection_point -->
<#-- Don''t add anything above this line. The build scripts will automatically link the compiled JS and CSS for you and add them above this line so that the widget can be loaded-->

<#-- This is the custom element -->
<@wp.currentWidget param="config" configParam="logo" var="configLogo" />
<@wp.currentWidget param="config" configParam="tagline" var="configTagline" />
<@wp.currentWidget param="config" configParam="theme" var="configTheme" />
<@wp.currentWidget param="config" configParam="sideNavigation" var="configSideNavigation" />
<@wp.currentWidget param="config" configParam="icons" var="configIcons" />
<@wp.currentWidget param="config" configParam="menuItems" var="configMenuItems" />

<header-widget
  logo="${configLogo}"
  logoAction="<@wp.url page="homepage" />"
  tagline="${configTagline}"
  theme="${configTheme}"
  sideNavigation="${configSideNavigation}"
  icons="${configIcons}"
  menuItems="${configMenuItems}"
  action="<@wp.url />"
  imgUrl="<@wp.imgURL />"
/>
',1);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid) VALUES ('ootbc-footer-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Footer</property>
<property key="it">Footer</property>
</properties>','<config>
    <parameter name="copyright" />
    <parameter name="theme" />
    <parameter name="linkSocial1" />
    <parameter name="linkSocial2" />
    <parameter name="linkSocial3" />
    <parameter name="linkSocial4" />
    <parameter name="linkSocial5" />
    <parameter name="linkSocial6" />
    <parameter name="page1" />
    <parameter name="page2" />
    <parameter name="page3" />
    <parameter name="page4" />
    <parameter name="social1" />
    <parameter name="social2" />
    <parameter name="social3" />
    <parameter name="social4" />
    <parameter name="social5" />
    <parameter name="social6" />
    <action name="configSimpleParameter"/>
</config>',NULL,NULL,NULL,1,'free','{"resources":["ootbc-bundle/static/js/2.ebab26f7.chunk.js","ootbc-bundle/static/js/main.580b8a09.chunk.js","ootbc-bundle/static/js/runtime-main.e2a7a9b2.js"],"customElement":"footer-config"}','ootbc-bundle');
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('ootbc-footer-widget','ootbc-footer-widget',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.currentWidget param="config" configParam="copyright" var="configCopyright" />
<@wp.currentWidget param="config" configParam="theme" var="configTheme" />

<@wp.currentWidget param="config" configParam="linkSocial1" var="configLinkSocial1" />
<@wp.currentWidget param="config" configParam="social1" var="configSocial1" />
<@wp.currentWidget param="config" configParam="linkSocial2" var="configLinkSocial2" />
<@wp.currentWidget param="config" configParam="social2" var="configSocial2" />
<@wp.currentWidget param="config" configParam="linkSocial3" var="configLinkSocial3" />
<@wp.currentWidget param="config" configParam="social3" var="configSocial3" />
<@wp.currentWidget param="config" configParam="linkSocial4" var="configLinkSocial4" />
<@wp.currentWidget param="config" configParam="social4" var="configSocial4" />
<@wp.currentWidget param="config" configParam="linkSocial5" var="configLinkSocial5" />
<@wp.currentWidget param="config" configParam="social5" var="configSocial5" />
<@wp.currentWidget param="config" configParam="linkSocial6" var="configLinkSocial6" />
<@wp.currentWidget param="config" configParam="social6" var="configSocial6" />

<@wp.currentWidget param="config" configParam="page1" var="configPage1" />
<@wp.currentWidget param="config" configParam="page2" var="configPage2" />
<@wp.currentWidget param="config" configParam="page3" var="configPage3" />
<@wp.currentWidget param="config" configParam="page4" var="configPage4" />

<#if !(configCopyright?has_content)>
    <#assign configCopyright="">
</#if>
<#if !(configTheme?has_content)>
    <#assign configTheme="">
</#if>

<#assign configCopyrightYear=.now?string(''yyyy'')>
<#assign copyrightSymbol="&#xA9;">

<link rel="stylesheet" type="text/css" href="<@wp.resourceURL />ootbc-bundle/static/css/footer.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="footer__ootb ${configTheme}">
    <div class="footer__ootb--column">
        <div class="footer__ootb--utilities">
        <#if configPage1?has_content>
            <#assign refPage1=configPage1?lower_case?replace(" ", "_", "r")>
            <a href="<@wp.url page="${refPage1}" />">
                ${configPage1}
            </a>
            <span>&nbsp;|&nbsp;</span>
        </#if>
        <#if configPage2?has_content>
            <#assign refPage2=configPage2?lower_case?replace(" ", "_", "r")>
            <a href="<@wp.url page="${refPage2}" />">
                ${configPage2}
            </a>
            <span>&nbsp;|&nbsp;</span>
        </#if>
        <#if configPage3?has_content>
            <#assign refPage3=configPage3?lower_case?replace(" ", "_", "r")>
            <a href="<@wp.url page="${refPage3}" />">
                ${configPage3}
            </a>
            <span>&nbsp;|&nbsp;</span>
        </#if>
        <#if configPage4?has_content>
            <#assign refPage4=configPage4?lower_case?replace(" ", "_", "r")>
            <a href="<@wp.url page="${refPage4}" />">
                ${configPage4}
            </a>
        </#if>
        </div>
        <div class="footer__ootb--copyright">
            <span>${copyrightSymbol} Copyright ${configCopyrightYear} ${configCopyright}</span>
        </div>
    </div>
    <div class="footer__ootb--column">
        <div class="footer__ootb--social-badge">
            <#if configLinkSocial1?has_content && configSocial1?has_content>
            <a href="${configLinkSocial1}" class="fa fa-${configSocial1}"></a>
            </#if>
            <#if configLinkSocial2?has_content && configSocial2?has_content>
            <a href="${configLinkSocial2}" class="fa fa-${configSocial2}"></a>
            </#if>
            <#if configLinkSocial3?has_content && configSocial3?has_content>
            <a href="${configLinkSocial3}" class="fa fa-${configSocial3}"></a>
            </#if>
            <#if configLinkSocial4?has_content && configSocial4?has_content>
            <a href="${configLinkSocial4}" class="fa fa-${configSocial4}"></a>
            </#if>
            <#if configLinkSocial5?has_content && configSocial5?has_content>
            <a href="${configLinkSocial5}" class="fa fa-${configSocial5}"></a>
            </#if>
            <#if configLinkSocial6?has_content && configSocial6?has_content>
            <a href="${configLinkSocial6}" class="fa fa-${configSocial6}"></a>
            </#if>
        </div>
    </div>
</div>
',1);
INSERT INTO widgetcatalog (code,titles,parameters,plugincode,parenttypecode,defaultconfig,locked,maingroup,configui,bundleid) VALUES ('ootbc-sitemap-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Sitemap</property>
<property key="it">Mappa del Sito</property>
</properties>',NULL,NULL,NULL,NULL,1,'free',NULL,'ootbc-bundle');
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('ootbc-sitemap-widget','ootbc-sitemap-widget',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />
<link rel="stylesheet" type="text/css" href="<@wp.resourceURL />ootbc-bundle/static/css/sitemap.css">

<div class="well well-small sitemap">
<h2>Site Map</h2>

<ul class="nav nav-list">
<@wp.nav spec="code(homepage).subtree(50)" var="page">
   <#if (previousPage?? && previousPage.code??)>
	<#assign previousLevel=previousPage.level>
	<#assign level=page.level>
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.fragment code="entando_widget_navigation_menu_include" escapeXml=false />
   </#if>
   <@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
</@wp.nav>
<#if (previousPage??)>
   <#assign previousLevel = previousPage.level>
   <#assign level=0>
   <@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
   <@wp.freemarkerTemplateParameter var="level" valueName="level" />
   <@wp.fragment code="entando_widget_navigation_menu_include" escapeXml=false />
   <#if (previousLevel != 0)>
	<#list 0..(previousLevel - 1) as ignoreMe>
		</ul></li>
	</#list>
   </#if>
</#if>
</ul>
</div>
<@wp.freemarkerTemplateParameter var="previousPage" valueName="" removeOnEndTag=true />
',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando_widget_navigation_menu_include',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign liClass="">
<#assign aClass="">
<#if (previousPage.code == currentPageCode)>
  <#assign liClass='' class="active" ''>
</#if>
<#if previousPage.voidPage>
 <#assign liClass='' class="nav-header" ''>
    <#assign aClass='' class="a-void" ''>
</#if>
<#if previousLevel == 0>
  <#assign aClass='' class="root-a" ''>
</#if>
<li ${liClass}>
   <#if (!previousPage.voidPage)>
   	<a href="${previousPage.url}"  ${aClass}>
   <#else>
        <a ${aClass}>
   </#if>
   <!-- [ ${previousLevel} ]-->
<#--  CHECK THIS
${homeIcon}
-->
   ${previousPage.title}
     </a>

   <#if (previousLevel == level)>
	</li>
   </#if>
   <#if (previousLevel < level)>
	<ul class="nav-list">
   </#if>
   <#if (previousLevel > level)>
	<#list 1..(previousLevel - level) as ignoreMe>
		</li></ul>
	</#list>
   </#if>
',1);

INSERT INTO pages (code,parentcode,pos) VALUES ('homepage_test','homepage', 3);
INSERT INTO pages (code,parentcode,pos) VALUES ('sitemap','homepage_test',1);
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('homepage_test','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home - test</property>
<property key="it">Home - test</property>
</properties>','OotbcHomepage',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf8</charset>
  <mimeType>text/html</mimeType>
</config>','2020-07-31 10:22:15');
INSERT INTO pages_metadata_online (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('sitemap','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Sitemap</property>
<property key="it">Sitemap</property>
</properties>','OotbcHomepage',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
</config>','2020-06-08 08:43:13');
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('homepage_test','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home - test</property>
<property key="it">Home - test</property>
</properties>','OotbcHomepage',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf8</charset>
  <mimeType>text/html</mimeType>
</config>','2020-07-31 10:22:15');
INSERT INTO pages_metadata_draft (code,groupcode,titles,modelcode,showinmenu,extraconfig,updatedat) VALUES ('sitemap','free','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Sitemap</property>
<property key="it">Sitemap</property>
</properties>','OotbcHomepage',1,'<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
  <charset>utf-8</charset>
  <mimeType>text/html</mimeType>
</config>','2020-06-08 08:43:13');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('homepage_test',6,'ootbc-footer-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="copyright">Entando - PI: 03264290929</property>
<property key="linkSocial2">https://www.linkedin.com/company/entando/</property>
<property key="linkSocial1">https://it-it.facebook.com/Entando/</property>
<property key="theme">blue_entando</property>
<property key="social2">linkedin</property>
<property key="page3">Sitemap</property>
<property key="social1">facebook</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('homepage_test',0,'ootbc-header-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="menuItems">[{menuItem=Smart Inbox, submenuItems=[Sea, Lake]}, {menuItem=Excursions, submenuItems=[]}]</property>
<property key="logo">Entando_light.svg</property>
<property key="theme">light</property>
<property key="sideNavigation">true</property>
<property key="logoRedirectPage">homepage</property>
<property key="tagline">Entando Ootb</property>
<property key="icons">[InfoCircle_BlueTheme.svg, Envelope_BlueTheme.svg, SignIn_BlueTheme.svg]</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('sitemap',1,'ootbc-sitemap-widget',NULL);
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('sitemap',0,'ootbc-header-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="menuItems">[{menuItem=Smart Inbox, submenuItems=[Sea, Lake]}, {menuItem=Excursions, submenuItems=[]}]</property>
<property key="logo">Entando_light.svg</property>
<property key="sideNavigation">true</property>
<property key="logoRedirectPage">homepage</property>
<property key="tagline">Entando Ootb</property>
<property key="icons">[InfoCircle_BlueTheme.svg, Envelope_BlueTheme.svg, SignIn_BlueTheme.svg]</property>
</properties>');
INSERT INTO widgetconfig_draft (pagecode,framepos,widgetcode,config) VALUES ('sitemap',6,'ootbc-footer-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="copyright">Entando - PI: 03264290929</property>
<property key="social2">linkedin</property>
<property key="social1">facebook</property>
<property key="linkSocial2">https://www.linkedin.com/company/entando/</property>
<property key="linkSocial1">https://it-it.facebook.com/Entando/</property>
<property key="page3">Sitemap</property>
<property key="theme">blue_entando</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('homepage_test',6,'ootbc-footer-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="copyright">Entando - PI: 03264290929</property>
<property key="linkSocial2">https://www.linkedin.com/company/entando/</property>
<property key="linkSocial1">https://it-it.facebook.com/Entando/</property>
<property key="theme">blue_entando</property>
<property key="social2">linkedin</property>
<property key="page3">Sitemap</property>
<property key="social1">facebook</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('homepage_test',0,'ootbc-header-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="menuItems">[{menuItem=Smart Inbox, submenuItems=[Sea, Lake]}, {menuItem=Excursions, submenuItems=[]}]</property>
<property key="logo">Entando_light.svg</property>
<property key="theme">light</property>
<property key="sideNavigation">true</property>
<property key="logoRedirectPage">homepage</property>
<property key="tagline">Entando Ootb</property>
<property key="icons">[InfoCircle_BlueTheme.svg, Envelope_BlueTheme.svg, SignIn_BlueTheme.svg]</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('sitemap',1,'ootbc-sitemap-widget',NULL);
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('sitemap',0,'ootbc-header-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="menuItems">[{menuItem=Smart Inbox, submenuItems=[Sea, Lake]}, {menuItem=Excursions, submenuItems=[]}]</property>
<property key="logo">Entando_light.svg</property>
<property key="theme">light</property>
<property key="sideNavigation">true</property>
<property key="logoRedirectPage">homepage</property>
<property key="tagline">Entando Ootb</property>
<property key="icons">[InfoCircle_BlueTheme.svg, Envelope_BlueTheme.svg, SignIn_BlueTheme.svg]</property>
</properties>');
INSERT INTO widgetconfig (pagecode,framepos,widgetcode,config) VALUES ('sitemap',6,'ootbc-footer-widget','<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="copyright">Entando - PI: 03264290929</property>
<property key="social2">linkedin</property>
<property key="social1">facebook</property>
<property key="linkSocial2">https://www.linkedin.com/company/entando/</property>
<property key="linkSocial1">https://it-it.facebook.com/Entando/</property>
<property key="page3">Sitemap</property>
<property key="theme">blue_entando</property>
</properties>');

INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('CNG_ATTACHMENTS', 'en', 'Attachments');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('CNG_ATTACHMENTS', 'it', 'Allegati');

INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('CNG_LINKS', 'en', 'Links');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('CNG_LINKS', 'it', 'Link');

INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('CNG_READ_MORE', 'en', 'View details');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('CNG_READ_MORE', 'it', 'Continua');

INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('NWS_ATTACHMENTS', 'en', 'Attachments');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('NWS_ATTACHMENTS', 'it', 'Allegati');

INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('NWS_LINKS', 'en', 'Links');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('NWS_LINKS', 'it', 'Link');

INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('NWS_READ_MORE', 'en', 'View details');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('NWS_READ_MORE', 'it', 'Continua');

INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('NWS_Latest', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News - Latest News</property>
<property key="it">Notizie - Ultime Notizie</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElements">4</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_it">Notizie</property>
<property key="linkDescr_it">Archivio</property>
<property key="pageLink">news</property>
<property key="title_en">News</property>
<property key="contentType">NWS</property>
<property key="modelId">10021</property>
<property key="linkDescr_en">Archive</property>
</properties>', 0, NULL);

INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('NWS_Archive', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News - Archive</property>
<property key="it">Notizie - Archivio</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">10</property>
<property key="title_it">Archivio Notizie</property>
<property key="userFilters">(attributeFilter=false;key=fulltext)+(attributeFilter=true;key=Date)</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_en">News Archive</property>
<property key="contentType">NWS</property>
<property key="modelId">10021</property>
</properties>', 0, NULL);

INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('homepage1','Homepage 1','<?xml version="1.0" encoding="UTF-8"?>
<frames>
  <frame pos="0">
      <descr>Logo</descr>
      <sketch x1="0" y1="0" x2="2" y2="0" />
  </frame>
  <frame pos="1">
      <descr>Navigation bar</descr>
      <sketch x1="3" y1="0" x2="5" y2="0" />
  </frame>
  <frame pos="2">
      <descr>Search</descr>
      <sketch x1="6" y1="0" x2="8" y2="0" />
  </frame>
  <frame pos="3">
      <descr>Login</descr>
      <sketch x1="9" y1="0" x2="11" y2="0" />
  </frame>
  <frame pos="4">
      <descr>Breadcrumb</descr>
      <sketch x1="0" y1="1" x2="11" y2="1" />
  </frame>
  <frame pos="5">
      <descr>Banner</descr>
      <sketch x1="0" y1="2" x2="11" y2="2" />
  </frame>
  <frame pos="6">
      <descr>News</descr>
      <sketch x1="0" y1="3" x2="11" y2="3" />
  </frame>
  <frame pos="7">
      <descr>Frame</descr>
      <sketch x1="0" y1="4" x2="11" y2="4" />
  </frame>
  <frame pos="8">
      <descr>Footer 1</descr>
      <sketch x1="0" y1="5" x2="11" y2="5" />
  </frame>
  <frame pos="9">
      <descr>Footer 2</descr>
      <sketch x1="0" y1="6" x2="11" y2="6" />
  </frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/carbon-components.min.css" rel="stylesheet">
        </head>
        <body>
          <div class="Homepage1 Homepage__header">
            <div class="Homepage__logo"><@wp.show frame=0 /></div>
            <div class="Homepage__menu"><@wp.show frame=1 /></div>
            <div class="Homepage__search"><@wp.show frame=2 /></div>
            <div class="Homepage__login"><@wp.show frame=3 /></div>
          </div>
          <div class="bx--grid">
            <div class="bx--row"><@wp.show frame=4 /></div>
            <div class="bx--row"><@wp.show frame=5 /></div>
            <div class="bx--row"><@wp.show frame=6 /></div>
            <div class="bx--row"><@wp.show frame=7 /></div>
          </div>
          <div class="Homepage__footer"><@wp.show frame=8 /></div>
          <div class="Homepage__footer"><@wp.show frame=9 /></div>
        </body>
</html>
');

INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('homepage2','Homepage 2','<?xml version="1.0" encoding="UTF-8"?>
<frames>
  <frame pos="0">
      <descr>Header</descr>
      <sketch x1="0" y1="0" x2="11" y2="0" />
  </frame>
  <frame pos="1">
      <descr>Frame 1</descr>
      <sketch x1="0" y1="1" x2="5" y2="1" />
  </frame>
  <frame pos="2">
      <descr>Frame 2</descr>
      <sketch x1="6" y1="1" x2="11" y2="1" />
  </frame>
  <frame pos="3">
      <descr>Frame 3</descr>
      <sketch x1="0" y1="2" x2="5" y2="2" />
  </frame>
  <frame pos="4">
      <descr>Frame 4</descr>
      <sketch x1="6" y1="2" x2="11" y2="2" />
  </frame>
  <frame pos="5">
      <descr>"Frame 5</descr>
      <sketch x1="0" y1="3" x2="5" y2="3" />
  </frame>
  <frame pos="6">
      <descr>Frame 6</descr>
      <sketch x1="6" y1="3" x2="11" y2="3" />
  </frame>
  <frame pos="7">
      <descr>Frame 7</descr>
      <sketch x1="0" y1="4" x2="5" y2="4" />
  </frame>
  <frame pos="8">
      <descr>Frame 8</descr>
      <sketch x1="6" y1="4" x2="11" y2="4" />
  </frame>
  <frame pos="9">
      <descr>Footer</descr>
      <sketch x1="0" y1="5" x2="11" y2="5" />
  </frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/carbon-components.min.css" rel="stylesheet">
        </head>
        <body>
          <div class="Homepage2 Homepage__header"><@wp.show frame=0 /></div>
          <div class="bx--grid">
            <div class="bx--row">
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=1 /></div>
                  <div><@wp.show frame=3 /></div>
                  <div><@wp.show frame=5 /></div>
                  <div><@wp.show frame=7 /></div>
              </div>
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=2 /></div>
                  <div><@wp.show frame=4 /></div>
                  <div><@wp.show frame=6 /></div>
                  <div><@wp.show frame=8 /></div>
                </div>
            </div>
          </div>
          <div class="Homepage__footer"><@wp.show frame=9 /></div>
        </body>
</html>
');

INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('homepage3','Homepage 3','<?xml version="1.0" encoding="UTF-8"?>
<frames>
  <frame pos="0">
      <descr>Header</descr>
      <sketch x1="0" y1="0" x2="11" y2="0" />
  </frame>
  <frame pos="1">
      <descr>Frame 1</descr>
      <sketch x1="0" y1="1" x2="5" y2="1" />
  </frame>
  <frame pos="2">
      <descr>Frame 2</descr>
      <sketch x1="6" y1="1" x2="11" y2="1" />
  </frame>
  <frame pos="3">
      <descr>Frame 3</descr>
      <sketch x1="0" y1="2" x2="5" y2="2" />
  </frame>
  <frame pos="4">
      <descr>Frame 4</descr>
      <sketch x1="6" y1="2" x2="11" y2="2" />
  </frame>
  <frame pos="5">
      <descr>"Frame 5</descr>
      <sketch x1="0" y1="3" x2="5" y2="3" />
  </frame>
  <frame pos="6">
      <descr>Frame 6</descr>
      <sketch x1="6" y1="3" x2="11" y2="3" />
  </frame>
  <frame pos="7">
      <descr>Frame 7</descr>
      <sketch x1="0" y1="4" x2="5" y2="4" />
  </frame>
  <frame pos="8">
      <descr>Frame 8</descr>
      <sketch x1="6" y1="4" x2="11" y2="4" />
  </frame>
  <frame pos="9">
      <descr>Frame 9</descr>
      <sketch x1="0" y1="5" x2="5" y2="5" />
  </frame>
  <frame pos="10">
      <descr>Frame 10</descr>
      <sketch x1="6" y1="5" x2="11" y2="5" />
  </frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/carbon-components.min.css" rel="stylesheet">
        </head>
        <body>
          <div class="Homepage3 Homepage__header"><@wp.show frame=0 /></div>
          <div class="bx--grid">
            <div class="bx--row">
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=1 /></div>
                  <div><@wp.show frame=3 /></div>
                  <div><@wp.show frame=5 /></div>
                  <div><@wp.show frame=7 /></div>
                  <div><@wp.show frame=9 /></div>
              </div>
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=2 /></div>
                  <div><@wp.show frame=4 /></div>
                  <div><@wp.show frame=6 /></div>
                  <div><@wp.show frame=8 /></div>
                  <div><@wp.show frame=10 /></div>
                </div>
            </div>
          </div>
        </body>
</html>
');

INSERT INTO pagemodels (code,descr,frames,plugincode,templategui) VALUES ('homepage4','Homepage 4','<?xml version="1.0" encoding="UTF-8"?>
<frames>
  <frame pos="0">
      <descr>Header</descr>
      <sketch x1="0" y1="0" x2="11" y2="0" />
  </frame>
  <frame pos="1">
      <descr>Frame 1</descr>
      <sketch x1="0" y1="1" x2="5" y2="2" />
  </frame>
  <frame pos="2">
      <descr>Frame 2</descr>
      <sketch x1="6" y1="1" x2="11" y2="1" />
  </frame>
  <frame pos="3">
      <descr>Frame 3</descr>
      <sketch x1="6" y1="2" x2="11" y2="2" />
  </frame>
  <frame pos="4">
      <descr>Frame 4</descr>
      <sketch x1="0" y1="3" x2="5" y2="4" />
  </frame>
  <frame pos="5">
      <descr>"Frame 5</descr>
      <sketch x1="6" y1="3" x2="11" y2="3" />
  </frame>
  <frame pos="6">
      <descr>Frame 6</descr>
      <sketch x1="6" y1="4" x2="11" y2="4" />
  </frame>
  <frame pos="7">
      <descr>Footer</descr>
      <sketch x1="0" y1="5" x2="11" y2="5" />
  </frame>
</frames>

',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/carbon-components.min.css" rel="stylesheet">
        </head>
        <body>
          <div class="Homepage4 Homepage__header"><@wp.show frame=0 /></div>
          <div class="bx--grid">
            <div class="bx--row">
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=1 /></div>
                  <div><@wp.show frame=4 /></div>
              </div>
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=2 /></div>
                  <div><@wp.show frame=3 /></div>
                  <div><@wp.show frame=5 /></div>
                  <div><@wp.show frame=6 /></div>
                </div>
            </div>
          </div>
          <div class="Homepage__footer"><@wp.show frame=7 /></div>
        </body>
</html>
');

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

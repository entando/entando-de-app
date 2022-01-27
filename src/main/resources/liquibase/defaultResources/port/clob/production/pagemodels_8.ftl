<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="systemParam" paramName="applicationBaseURL" var="appUrl" />

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <link rel="icon" href="${appUrl}favicon.png" type="image/png" />
        <!-- Custom OOTB page template styles -->
        <link rel="stylesheet" href="<@wp.resourceURL />static/css/ootb/page-templates/index.css" rel="stylesheet">
        <!-- Carbon Design System -->
        <@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />
        <@wp.fragment code="keycloak_auth" escapeXml=false />

        <@wp.outputHeadInfo type="CSS">
            <link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
        </@wp.outputHeadInfo>
        </head>
        <body>
          <header-fragment app-url="${appUrl}">
            <template>
                <@wp.show frame=0 />
                <@wp.show frame=1 />
                <@wp.show frame=2 />
                <@wp.show frame=3 />
            </template>
          </header-fragment>
          <div class="bx--grid Homepage__body">
            <div class="bx--row">
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=4 /></div>
                  <div><@wp.show frame=7 /></div>
              </div>
              <div class="bx--col-sm-4 bx--col-md-4 bx--no-gutter">
                  <div><@wp.show frame=5 /></div>
                  <div><@wp.show frame=6 /></div>
                  <div><@wp.show frame=8 /></div>
                  <div><@wp.show frame=9 /></div>
                </div>
            </div>
          </div>
          <div class="Homepage__footer"><@wp.show frame=10 /></div>
        </body>
</html>

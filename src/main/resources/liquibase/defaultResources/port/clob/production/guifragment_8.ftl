<#assign wp=JspTaglibs["/aps-core"]>

<@wp.currentPage param="code" var="currentPageCode" />

<@wp.fragment code="entando_ootb_carbon_include" escapeXml=false />

<#assign navstrs = [] />
<@wp.nav var="page">
  <#assign navstr = ["{\"code\": \"" + page.code + "\", \"title\": \"" + page.title + "\", \"level\": \"" + page.level + "\", \"url\": \""+ page.url +"\", \"voidPage\": " + page.voidPage?string("true", "false") + "}"]  />
  <#assign navstrs = navstrs + navstr />
</@wp.nav>
<#assign nav_json_string = navstrs?join(", ") />

<navigation-bar-widget
  current-page="${currentPageCode}"
  nav-items="[${nav_json_string?html}]"
></navigation-bar-widget>
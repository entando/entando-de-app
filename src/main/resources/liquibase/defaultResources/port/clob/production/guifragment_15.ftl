<#assign wp=JspTaglibs["/aps-core"]>

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
    <@wp.fragment code="legacy-navigation-menu_include" escapeXml=false />
  </#if>

  <@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
</@wp.nav>

<#if (previousPage??)>
  <#assign previousLevel=previousPage.level>
  <#assign level=0>
  <@wp.freemarkerTemplateParameter var="level" valueName="level" />
  <@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
  <@wp.fragment code="legacy-navigation-menu_include" escapeXml=false />

  <#if (previousLevel != 0)>
    <#list 0..(previousLevel - 1) as ignoreMe>
      </ul></li>
    </#list>

  </#if>
</#if>

</ul>
<@wp.freemarkerTemplateParameter var="previousPage" valueName="" removeOnEndTag=true />
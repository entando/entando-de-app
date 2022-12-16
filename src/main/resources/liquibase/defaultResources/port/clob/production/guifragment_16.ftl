<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>


<#assign liClass="">
<#assign homeIcon="">
<#assign caret="">
<#assign ulClass=' class="dropdown-menu"'>
<#assign aClassAndData="">
<#assign aURL=previousPage.url>

<#if (previousPage.voidPage)>
  <#assign aURL='#' />
</#if>

<#if (previousPage.code?contains("homepage"))>
  <#assign homeIcon='<i class="icon-home"></i>&#32;'>
</#if>

<#if (previousPage.code == currentPageCode)>
  <#assign liClass=' class="active"'>
</#if>

<#if (previousLevel < level)>
  <#assign liClass=' class="dropdown"' >

  <#if (previousPage.code == currentPageCode)>
    <#assign liClass=' class="dropdown active"'>
  </#if>

  <#if previousPage.voidPage>
    <#assign liClass=' class=" dropdown"' >
  </#if>

  <#if (previousLevel > 0) >
    <#assign liClass=' class="dropdown-submenu"'>
    <#if (previousPage.code == currentPageCode)>
      <#assign liClass=' class="dropdown-submenu active"'>
    </#if>

    <#assign ulClass=' class="dropdown-menu"'>
  </#if>

  <#assign aClassAndData=' class="dropdown-toggle" data-toggle="dropdown"'>

  <#if (previousLevel == 0)>
    <#assign caret=' <span class="caret"></span>'>
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
</#if>
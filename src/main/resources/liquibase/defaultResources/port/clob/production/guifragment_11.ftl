<#assign wp=JspTaglibs["/aps-core"]>
<#assign liClass="">
<#assign aClass="">
<#if previousPage.voidPage>
 <#assign liClass=' class="nav-header" '>
    <#assign aClass=' class="a-void" '>
</#if>
<li ${liClass}>
<#if previousLevel != 0>
<#if (!previousPage.voidPage)>
<a href="${previousPage.url}"  ${aClass}>
<#else>
<a ${aClass}>
</#if>
${previousPage.title}</a>
<#else>
<strong>Pages</strong>
</#if>
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

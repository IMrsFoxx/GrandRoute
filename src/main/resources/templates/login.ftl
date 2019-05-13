<#import "parts/common.ftl" as c>
 <#import "parts/loginPage.ftl" as l>
<@c.page>
    ${message?ifExists}
    <@l.loginPage "/login" false/>
</@c.page>
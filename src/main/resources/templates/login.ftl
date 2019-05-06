<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as x>
<#import "parts/testLogin.ftl" as l>
<@c.page>
    ${message?ifExists}
    <@l.loginPage "/login" false/>
</@c.page>
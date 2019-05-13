 <#import "parts/common.ftl" as c>
 <#import "parts/login.ftl" as l>
 <#import "parts/loginPage.ftl" as x>
 <@c.page>
     ${message?ifExists}
 <@x.loginPage "/registration" true/>
 </@c.page>

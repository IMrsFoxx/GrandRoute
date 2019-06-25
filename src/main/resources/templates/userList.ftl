 <#import "parts/common.ftl" as c>

 <@c.page>
     <table cellspacing="0" id="blackText">
         <thead>
         <tr>
             <th>Name</th>
             <th>Role</th>
             <th>Active</th>
             <th>Online</th>
         </tr>
         </thead>
         <tbody>
         <#list users as user>
             <tr>
                 <td>${user.username}</td>
                 <td><#list user.roles as role>${role}<#sep>, </#list></td>
                 <td><#if user.active>Active<#else>Not Active</#if></td>
                 <td><a href="/user/${user.id}">edit</a></td>
             </tr>
         </#list>
         </tbody>
     </table>
 <style>
body{
    background-image: url(/static/image/bcgrCatalog2.jpg); /* Путь к фоновому изображению */
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
 </style>
 </@c.page>
<#import "parts/common.ftl" as c>

<@c.page>
     <table cellspacing="0" id="blackText">
         <thead>
         <tr>
             <th>Name</th>
             <th>Email</th>
             <th>Number</th>
             <th>Delete</th>
         </tr>
         </thead>
         <tbody>
         <#list conts as cont>
         <tr>
             <td>${cont.nameClient}</td>
             <td>${cont.emailClient}</td>
             <td>${cont.numberClient}></td>
             <td><a href="/ListContactUs/${cont.id_order}">Delete</a></td>
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
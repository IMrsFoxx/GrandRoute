<#import "parts/common.ftl" as c>

<@c.page>
    <table cellspacing="0" id="blackText">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Soname</th>
            <th>Passport</th>
            <th>Data come</th>
            <th>Data arrive</th>
            <th>Type Food</th>
            <th>Gym</th>
            <th>Swimming-pool</th>
            <th>SPA</th>
            <th>Type room</th>
        </tr>
        </thead>
        <tbody>
         <#list orders as order>
         <tr>
             <td>${order.getOrder_id()}</td>
             <td>${order.getNameClient()}</td>
             <td>${order.getSonameClient()}</td>
             <td>${order.getPassportClient()}</td>
             <td>${order.getDateCome()}</td>
             <td>${order.getDateArrive()}</td>
             <td><#list order.getFoodTypes() as food>${food}<#sep>, </#list></td>
             <td>${order.getGym()}</td>
             <td>${order.getSwimPool()}</td>
             <td>${order.getSpa()}</td>
             <td><#list order.getTypeRooms() as room>${room}<#sep>, </#list></td>
         </tr>
         </#list>
        </tbody>
    </table>
</@c.page>
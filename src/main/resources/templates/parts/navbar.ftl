<#include "security.ftl">
<#import "loginPage.ftl" as l>
<div class="container-fluid">
    <div class="row justify-content-end" id="ots">
        <div class="infoone col-lg-2">
            <p><i class="fab fa-sourcetree"></i> Switzerland,Oberdorfstra 23</p>
        </div>
        <div class="infotwo col-lg-2">
            <p><i class="far fa-envelope"></i>GrandRoute@gmail.com</p>
        </div>
        <div class="infothr col-lg-2">
            <p><i class="fas fa-phone-square"></i>+41 3382 275 66</p>
        </div>
        <div class="infthri col-lg-2">
            <div id="containerIntro">
                 <span>
                    <a href="https://github.com/Tim01Bro/WolfNetwork.git"><h3><i class="fab fa-github"></i></h3></a>
                    <a href="https://twitter.com"><h3><i class="fab fa-twitter"></i></h3></a>
                    <a href="https://wolfnetwrokinc@gmail.com"><h3><i class="fab fa-google-plus"></i></h3></a>
                 </span>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button id="lok" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end mr-5" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/greeting" id="kok"><p id="lol">Home</p></a>
            </li>
            </#if>
            <#if user??>
            <li class="nav-item ">
                <a class="nav-link" href="/Gallery"><p id="lol">Gallery</p></a>
            </li>
            </#if>
            <#if user??>
            <li class="nav-item ">
                <a class="nav-link" href="/mainorder/ServicePage"><p id="lol">Services</p></a>
            </li>
            </#if>
            <#if user??>
            <li class="nav-item ">
                <a class="nav-link" href="#"><p id="lol">Info</p></a>
            </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item ">
                <a class="nav-link" href="/user"><p id="lol">User List</p></a>
            </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item ">
                <a class="nav-link" href="/mainorder/orderList"><p id="lol">List order</p></a>
            </li>
            </#if>

        </ul>
        <div class="navbar-text mr-3" id="fonty"><#if user??> <h5>${name}</h5><@l.logout /> <#else>Please, <a href="/login">Log in</a></#if></div>

     </div>
</nav>

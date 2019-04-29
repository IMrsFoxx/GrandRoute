<#include "security.ftl">
<div class="container-fluid">
    <div class="row justify-content-end" id="ots">
        <div class="infoone col-lg-2">
            <p><i class="fab fa-sourcetree"></i> Dorfstrasse, 34, Switzerland</p>
        </div>
        <div class="infotwo col-lg-2">
            <p><i class="far fa-envelope"></i> GrandRoute@gmail.com</p>
        </div>
        <div class="infothr col-lg-2">
            <p><i class="fas fa-phone-square"></i> +41 3382 275 66</p>
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
            <li class="nav-item">
                <a class="nav-link" href="/greeting" id="kok"><p id="lol">Home</p> <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#"><p id="lol">Gallery</p></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#"><p id="lol">Serives</p></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#"><p id="lol">Info</p></a>
            </li>
            <#if isAdmin>
            <li class="nav-item ">
                <a class="nav-link" href="/user"><p id="lol">User List</p></a>
            </li>
            </#if>
        </ul>
        <div class="navbar-text">${name}</div>
     </div>
</nav>

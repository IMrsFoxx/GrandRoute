<#macro service>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
     <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="/static/css/serviceStyle.css">
    <link rel="stylesheet" href="/static/css/service.scss">
</head>
<body>
<div class="form">
        <div class="tab-content">
             <form method="post">

                <div class="top-row">

                    <div class="field-wrap">
                        <label>
                            Name <span  class="req">*</span>
                        </label>
                        <input type="text" autocomplete="off" name="Name">
                    </div>

                    <div class="field-wrap">
                        <label>
                            Soname <span class="req">*</span>
                        </label>
                        <input type="text" autocomplete="off" name="Soname">
                    </div>
                </div>

                <div class="field-wrap">
                    <label>
                        Passport <span class="req">*</span>
                    </label>
                    <input type="text" autocomplete="off" name="Passport">
                </div>
                <div class="field-wrap">
                     <div class="form-group">
                        <div class="container">
                            <div class='col-14'>
                                <div class="form-group">
                                    <div class="input-group date" id="datetimepicker7" data-target-input="nearest">
                                         <input type="text" autocomplete="off" name="Datacome" class="form-control datetimepicker-input" data-target="#datetimepicker7"/>
                                        <div class="input-group-append" data-target="#datetimepicker7" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class='col-14'>
                                <div class="form-group">
                                    <div class="input-group date" id="datetimepicker8" data-target-input="nearest">
                                        <label>
                                            Data come and arrive<span class="req">*</span>
                                        </label>
                                        <input type="text" autocomplete="off" name="Datearrive" class="form-control datetimepicker-input" data-target="#datetimepicker8"/>
                                        <div class="input-group-append" data-target="#datetimepicker8" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function () {
                                $('#datetimepicker7').datetimepicker();
                                $('#datetimepicker8').datetimepicker({
                                    useCurrent: false
                                });
                                $("#datetimepicker7").on("change.datetimepicker", function (e) {
                                    $('#datetimepicker8').datetimepicker('minDate', e.date);
                                });
                                $("#datetimepicker8").on("change.datetimepicker", function (e) {
                                    $('#datetimepicker7').datetimepicker('maxDate', e.date);
                                });
                            });
                        </script>
                </div>
                </div>

                <div class="field-wrap">
                     <select typeof="text" name="food" class="form-control" id="exampleFormControlSelect1">
                    <#list typeFood as food>
                     <option>${food}</option>
                    </#list>
                    </select>
                </div>
                 <div class="field-wrap">
                    <label>
                         Gym <span class="req">*</span>
                    </label>
                     <input type="text" name="Gym"  autocomplete="off"  id="exampleInputPassword1"  >
                </div>

                <div class="field-wrap">
                    <label>
                        Swim <span class="req">*</span>
                    </label>
                    <input type="text" name="Swim" autocomplete="off"  id="exampleInputPassword1"  >
                </div>

                <div class="field-wrap">
                    <label>
                        SPA <span class="req">*</span>
                    </label>
                    <input type="text" name="SPA" autocomplete="off" id="exampleInputPassword1"  >
                </div>

                <div class="field-wrap">
                    <select typeof="text" name="typeRoom" class="form-control" id="exampleFormControlSelect1">
                        <#list typeRoom as room>
                         <option>${room}</option>
                        </#list>
                    </select>
                </div>
                 <input type="hidden" name="_csrf" value="${_csrf.token}" />
                 <button type="submit" class="button button-block"/>Booking room</button>

            </form>

        </div>
    </div><!-- tab-content -->

 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="/static/js/index.js"></script>
</body>
</html>
</#macro>

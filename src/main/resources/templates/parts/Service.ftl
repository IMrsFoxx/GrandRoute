<#macro BookingRoom>
<form method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Name:</label>
        <input type="text" name="Name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name">
     </div>

    <div class="form-group">
        <label for="exampleInputPassword1">Soname</label>
        <input type="text" name="Soname" class="form-control" id="exampleInputPassword1" placeholder="Soname">
    </div>

    <div class="form-group">
        <label for="exampleInputPassword1">Passport</label>
        <input type="text" name="Passport" class="form-control" id="exampleInputPassword1" placeholder="Passport">
    </div>



    <div class="form-group">
        <div class="container">
            <div class='col-md-5'>
                <div class="form-group">
                    <div class="input-group date" id="datetimepicker7" data-target-input="nearest">
                        <input type="text" name="Datacome" class="form-control datetimepicker-input" data-target="#datetimepicker7"/>
                        <div class="input-group-append" data-target="#datetimepicker7" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class='col-md-5'>
                <div class="form-group">
                    <div class="input-group date" id="datetimepicker8" data-target-input="nearest">
                        <input type="text" name="Datearrive" class="form-control datetimepicker-input" data-target="#datetimepicker8"/>
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

    <div class="form-group">
        <label for="exampleInputPassword1">Type food</label>
        <select typeof="text" name="food" class="form-control" id="exampleFormControlSelect1">
            <#list typeFood as food>
            <option>${food}</option>
            </#list>
        </select>
    </div>

    <div class="form-group">
        <label for="exampleInputPassword1">SPA</label>
        <input type="text" name="SPA" class="form-control" id="exampleInputPassword1" placeholder="SPA">
    </div>

    <div class="form-group">
        <label for="exampleInputPassword1">Swimming-pool</label>
        <input type="text" name="Swim" class="form-control" id="exampleInputPassword1" placeholder="Swimming-poll">
    </div>

    <div class="form-group">
        <label for="exampleInputPassword1">Gym</label>
        <input type="text" name="Gym" class="form-control" id="exampleInputPassword1" placeholder="Gym">
    </div>

    <div class="form-group">
        <label for="exampleInputPassword1">Type room</label>
        <select typeof="text" name="typeRoom" class="form-control" id="exampleFormControlSelect1">
            <#list typeRoom as room>
                <option>${room}</option>
            </#list>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
</form>
</#macro>
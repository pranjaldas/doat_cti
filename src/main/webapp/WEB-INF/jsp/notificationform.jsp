<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notification form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
   <!--jquery cdn-->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
    <div class="container">
        <div class="form-card">

            <div class="form-row">
                <div class="form-group col-11">
                    <p class="font-weight-bold">
                        <label>Description about the Training Program:</label>
                        <textarea cols="2" rows="3" class="form-control" placeholder="Write about the Program"
                                   id="training_description" required></textarea>
                    </p>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-4">
                    <p class="font-weight-bold">
                        <label for="residential_pin">Training Program Name:</label></div>
                <div class="form-group col-6">
                    <input type="text" class="form-control" placeholder="Write name here" name="residential_pin"
                           id="training_name"
                           required/>
                    </p>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label><p class="font-weight-bold">Training Program Type:</label>
                </div>

                <div class="form-group col-md-6">
                    <select name="residential_district" id="training_type" class="form-control">
                        <option selected>Choose</option>
                        <option value="Induction">Induction</option>
                        <option value="Service">Service</option>
                        <option value="Basic">Basic</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-4">
                    <label><p class="font-weight-bold">Training Program Duration:</p></label>
                </div>
                <div class="form-group col-6">
                    <input type="text" class="form-control"  id="training_duration"
                           placeholder="Write duration of the program" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-4">
                    <label><p class="font-weight-bold">Training Program Start Date:</p></label>
                </div>
                <div class="form-group col-6">
                    <input class="form-control" type="date" id="training_start_date"  required>
                </div>
            </div>
           
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label><p class="font-weight-bold">Display in Noticeboard ?</label>
                </div>

                <div class="form-group col-md-6">
                    <select name="residential_state" id="training_display" class="form-control">
                        <option selected>Choose</option>
                        <option value=true>Yes</option>
                        <option value=false>No</option>
                    </select>
                </div>
            </div>
            <div  class="align-self-center mx-auto">
                <button type="button" id="save_training"  class="btn btn-success btn-lg">SAVE</button>
            </div>

    </div>
    <script>
        $(document).ready(function () {


            const saveTraining = (ev) => {
                ev.preventDefault();
                let training_program = {
                    training_prg_name: $("#training_name").val(),
                    training_prg_type: $("#training_type").val(),
                    training_description: $("#training_description").val(),
                    training_prg_duration: $("#training_duration").val(),
                    training_start_date: $("#training_start_date").val(),
                    display_status: $("#training_display").val()

                }
                console.log(training_program);
                var settings = {
                    "url": "http://localhost:8080/postTrainings",
                    "method": "POST",
                    "timeout": 0,
                    "headers": {
                        "Content-Type": "application/json"
                    },
                    "data": JSON.stringify(training_program),
    	         };
                $.ajax(settings).done(function (response) {
                    console.log(response);
                    if (response.status == "success") {
                        alert("Succesful");
                    };
                });
            };
            $("#save_training").click(function (event) {
                saveTraining(event);
            });

        });
    </script>
    
</body>
</html>
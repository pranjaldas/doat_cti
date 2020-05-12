$(document).ready(()=>{
    populateAdvertisement();
    function populateAdvertisement(){
        var settings = {
            "url": "http://localhost:8080/trainingsStatus",
            "method": "GET",
            "timeout": 0,
            "headers": {
              "Content-Type": "application/json"
            },
            "data": null,
          };
          $.ajax(settings).done(function (response) {
            console.log(response);
            var trainee_data = '';
            $.each(response.data, function (key, value) {
              trainee_data += '<table class=" table addTable" style="border: 2px solid black ">';
              trainee_data += '<thead>';
              trainee_data += '<tr>';
              trainee_data += '<td>' + '<b>' + "Subject: " + '</b>' + value.training_description + " To apply click " + '<button type="button" id="apply" class="btn btn-link" data-toggle="modal" data-target="#modalApplyTraining">here</button>' + '</td>';
              trainee_data += '</tr>';
              trainee_data += '</thead>';
              trainee_data += '<tbody>';
              trainee_data += '<tr>';
              trainee_data += '<td>' + '<b>' + "Training Program ID: " + '</b>' + '<span>' + value.training_prg_id + '</span>' + '</td>';
              trainee_data += '</tr>';
              trainee_data += '<tr>';
              trainee_data += '<td>' + '<b>' + "Training Program name: " + '</b>' + value.training_prg_name + '</td>';
              trainee_data += '</tr>';
              trainee_data += '<tr>';
              trainee_data += '<td>' + '<b>' + "Training Program Type: " + '</b>' + value.training_prg_type + '</td>';
              trainee_data += '</tr>';
              trainee_data += '<tr>';
              trainee_data += '<td>' + '<b>' + "Start date: " + '</b>' + value.training_start_date + '</td>';
              trainee_data += '</tr>';
              trainee_data += '<tr>';
              trainee_data += '<td>' + '<b>' + "Duration: " + '</b>' + value.training_prg_duration + '</td>';
              trainee_data += '</tr>';
              trainee_data += '</tbody>';
              trainee_data += '</table>';
            });
    
    
            $('#notification').append(trainee_data);
    
          });

    }


    //To display published Trainees
    publishTrainees();
    function publishTrainees(){
        var settings = {
            "url": "http://localhost:8080/selectedPublishApplications",
            "method": "GET",
            "timeout": 0,
            "headers": {
              "Content-Type": "application/json"
            },
            "data": null,
          };
          $.ajax(settings).done(function (response) {
            console.log(response);
            var trainee_data = '';
            var sn = 1;
            $.each(response.data, function (key, value) {
              trainee_data += '<tr>';
              trainee_data += '<td>' + sn + '</td>';
              trainee_data += '<td>' + value.name + '</td>';
              trainee_data += '<td>' + value.designation + '</td>';
              trainee_data += '<td>' + value.DDO_CODE + '</td>';
              trainee_data += '<td>' + value.employee_no + '</td>';
              trainee_data += '<td>' + value.training_prog_id + '</td>';
              trainee_data += '</tr>';
              sn++;
            });
            $('#trainee_table').append(trainee_data);
          });
    }

    //Test apply
    populateAutoComplete();
    function populateAutoComplete(){
        var settings = {
            "url": "http://localhost:8080/employees",
            "method": "GET",
            "timeout": 0,
            "headers": {
              "Content-Type": "application/json"
            },
            "data": null,
          };
          $.ajax(settings).done(function (response) {
            console.log(response);
            //to fill the array
            var empIdsuggestions=[];
            var i=0;
            $.each(response.data, function(key,value){
                empIdsuggestions[i]=value.employee_id;
                console.log("from response",value.employee_id);
                console.log("from the array:",empIdsuggestions[i]);
                i++;
            });
            console.log(empIdsuggestions);
            //now the magic begins
            $("#apply_emp_id_autocomplete").autocomplete({
                source:empIdsuggestions
                  
            },{
                autoFocus:true,
                delay:0,
                minlength:1
            });
           
        });
      }
    


})
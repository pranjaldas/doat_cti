$(document).ready(() => {
  //For Employee Card
  function fetchAllEmployees() {
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
      console.log("all Employees are", response);
      PopulateEmployeeTable(response.data);
    });
  }
  fetchAllEmployees();
  function PopulateEmployeeTable(employees) {
    var employee_data = '';
    $.each(employees, function (key, value) {

      employee_data += '<tr>'
        + '<td>' + value.employee_id + '</td>'
        + '<td>' + value.employee_name + '</td>'
        + '<td>' + value.department_id + '</td>'
        + '<td>' + value.designation + '</td>'
        + '<td>' + value.ddo_code + '</td>'
        + '<td>' + '<button type="button" id="#" class="btn btn-info btn-sm" data-toggle="modal" onclick="fillEmployeeModalPopup(this)" data-target="#exampleModalCenter">View</button>' + '</td>'
        + '</tr>';

    });
    $('#allEmployees').append(employee_data);

  }








  //For Trainee Card
  fetchTrainingProgram();
  function fetchTrainingProgram() {
    var settings = {
      "url": "http://localhost:8080/trainings",
      "method": "GET",
      "timeout": 0,
      "headers": {
        "Content-Type": "application/json"
      },
      "data": null,
    };
    $.ajax(settings).done(function (response) {


      PopulateDropDownList(response.data);

    });
  }
  //To populate dropdownlist

  function PopulateDropDownList(data) {
    console.log("ffrom populate", data);
    console.log("type of data", typeof (data));
    var training_dropdown_list = document.getElementById("trainings_dropdown");

    //Add the Options to the DropDownList.
    for (var i = 0; i < data.length; i++) {
      var option = document.createElement("OPTION");

      //Set Customer Name in Text part.
      option.innerHTML = data[i].training_prg_name;

      //Set CustomerId in Value part.
      option.value = data[i].training_prg_id;

      //Add the Option element to DropDownList.
      training_dropdown_list.options.add(option);
    }
  }
  //To convert csv to a json array and to a table
  $("#upload").bind("click", function () {
    if ($('#trainings_dropdown').val() == '') {
      var newDiv = $(document.createElement('div'));
      newDiv.html('please select a training program');
      newDiv.dialog({
        title: "ERROR !!! ",
        draggable: true,
        modal: true,
        buttons: [{
          text: "Ok",
          class: "btn btn-md btn-primary",
          click: function () {
            $(this).dialog("close");
          }
        }]
      });
      return false;
    }

    var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.csv|.txt)$/;
    if (regex.test($("#fileUpload").val().toLowerCase())) {
      if (typeof (FileReader) != "undefined") {
        var reader = new FileReader();
        reader.onload = function (e) {
          var employees = new Array();
          var rows = e.target.result.split("\r\n");
          for (var i = 0; i < rows.length; i++) {
            var cells = rows[i].split(",");
            if (cells.length > 1) {
              var employee = {};
              employee.employee_id = cells[0];
              employee.employee_name = cells[1];
              employee.emp_dep_no = cells[2];
              employee.emp_desig = cells[3];
              employee.emp_ddo_code = cells[4];
              employees.push(employee);
            }
          }
          console.log("The json data are :", employees)
          var trainee_data = '';
          $.each(employees, function (key, value) {
            trainee_data += '<tr>';
            trainee_data += '<td>' + value.employee_id + '</td>';
            trainee_data += '<td>' + value.employee_name + '</td>';
            trainee_data += '<td>' + value.emp_dep_no + '</td>';
            trainee_data += '<td>' + value.emp_desig + '</td>';
            trainee_data += '<td>' + value.emp_ddo_code + '</td>';
            trainee_data += '<td>' + '<button type="button" id="#" onclick="sayHii(this)" class="btn btn-success btn-sm">Select</button>' + '</td>';
            trainee_data += '<td>' + '<button type="button" id="#" class="btn btn-info btn-sm">Remove</button>' + '</td>';
            trainee_data += '</tr>';

          });
          $('#trainee_table').append(trainee_data);
        }
        reader.readAsText($("#fileUpload")[0].files[0]);
      } else {
        alert("This browser does not support HTML5.");
      }
    } else {
      alert("Please upload a valid CSV file.");
    }
  });
  //Code from here for the next job
  $("#remove").click(function () {
    $("#fileUpload").val('');

  });
  $("#remove_all").click(() => {
    $("#trainee_table tbody").remove();
  })

  function fetchAllApplications() {
    var settings = {
      "url": "http://localhost:8080/getApplications",
      "method": "GET",
      "timeout": 0,
      "headers": {
        "Content-Type": "application/json"
      },
      "data": null,
    };
    $.ajax(settings).done(function (response) {
      PopulateApplications(response.data);
    });
  }
  fetchAllApplications();
  function PopulateApplications(applications) {
    console.log("All Applications are ",applications);
    var application_data = '';
    
    $.each(applications, function (key, value) {

      application_data += '<tr>'
        + '<td>' + value.employee_no + '</td>'
        + '<td>' + value.training_prog_id + '</td>'
        + '<td>' + value.name + '</td>'
        + '<td>' + value.department_no + '</td>'
        + '<td>' + value.designation + '</td>'
        + '<td>' + value.DDO_CODE + '</td>'
        + '<td>' + value.application_status + '</td>'
        + '<td>' + '<button type="button" id="#" class="btn btn-sm btn-primary" data-toggle="modal"  data-target="#selected_trainee_modal">Update</button>' + '</td>'
        + '</tr>';

    });
    $('#applications_table').append(application_data);

  }


  // To publish all trainees
   $("#publish").click(function(){
    var settings = {
      "url": "http://localhost:8080/selectedApplications",
      "method": "GET",
      "timeout": 0,
      "headers": {
        "Content-Type": "application/json"
      },
      "data": null,
    };
    $.ajax(settings).done(function (response) {
     console.log("publish",response);
     $.each(response.data, function (key, value) {
      console.log("key is",key);
      console.log("value is",value);
      value.publish=true;
      var settings = {
        "url": "http://localhost:8080/postApplication",
        "method": "POST",
        "timeout": 0,
        "headers": {
          "Content-Type": "application/json"
        },
        "data": JSON.stringify(value),
      };
      $.ajax(settings).done(function (response) {
        console.log("updated data ",response)
      });
      
    });
    });
   });









  //For Training Programs
   //Calling the Function at document load
   updateAllTrainings()
                              
   function updateAllTrainings() {
     var settings = {
       "url": "http://localhost:8080/trainings",
       "method": "GET",
       "timeout": 0,
       "headers": {
         "Content-Type": "application/json"
       },
       "data": null,
     };
     $.ajax(settings).done(function (response) {

       var training_prg_data = '';
       $.each(response.data, function (key, value) {
         training_prg_data += '<tr>';
         training_prg_data += '<td>' + value.training_prg_id + '</td>';
         training_prg_data += '<td>' + value.training_prg_name + '</td>';
         training_prg_data += '<td>' + value.training_prg_type + '</td>';
         training_prg_data += '<td>' + value.training_prg_duration + '</td>';
         training_prg_data += '<td>' + value.training_start_date + '</td>';
         training_prg_data += '<td>' + value.training_create_date + '</td>';
         training_prg_data += '<td>' + value.training_status + '</td>';
         training_prg_data += '<td>' + value.display_status + '</td>';
         training_prg_data += '<td>' + '<button type="button" class="btn btn-success btn-sm" data-toggle="modal" onclick="fillTrainingModal(this)"  data-target="#previewTrainings">Privew & Update</button>' + '</td>';
         training_prg_data += '</tr>';

       });
       $('#all_training_programs').append(training_prg_data);
     });
     
   }
   



   const saveTraining = (ev) => {
     ev.preventDefault();

     if ($('#training_description').val() == '') {
       var newDiv = $(document.createElement('div'));
       newDiv.html('Form not submitted,please fillup the training description field');
       newDiv.dialog({
         title: "ERROR !!!",
         draggable: true,
         modal: true,
         buttons: [{
           text: "Ok",
           class: "btn btn-md btn-primary",
           click: function () {
             $(this).dialog("close");
           }
         }]
       });
       return false;
     }
     if ($('#training_name').val() == '') {
       var newDiv = $(document.createElement('div'));
       newDiv.html('Form not submitted, please fillup the training name field');
       newDiv.dialog({
         title: "ERROR !!!",
         draggable: true,
         modal: true,
         buttons: [{
           text: "Ok",
           class: "btn btn-md btn-primary",
           click: function () {
             $(this).dialog("close");
           }
         }]
       });
       return false;
     }
     if ($('#training_type').val() == '') {
       var newDiv = $(document.createElement('div'));
       newDiv.html('Form not submitted,please select the training type');
       newDiv.dialog({
         title: "ERROR !!!",
         draggable: true,
         modal: true,
         buttons: [{
           text: "Ok",
           class: "btn btn-md btn-primary",
           click: function () {
             $(this).dialog("close");
           }
         }]
       });
       return false;
     }
     if ($('#training_duration').val() == '') {
       var newDiv = $(document.createElement('div'));
       newDiv.html('Form not submitted, please fillup the training duration in months');
       newDiv.dialog({
         title: "ERROR !!! ",
         draggable: true,
         modal: true,
         buttons: [{
           text: "Ok",
           class: "btn btn-md btn-primary",
           click: function () {
             $(this).dialog("close");
           }
         }]
       });
       return false;
     }
     if ($('#training_start_date').val() == '') {
       var newDiv = $(document.createElement('div'));
       newDiv.html('Form not submitted, please fillup the training start date');
       newDiv.dialog({
         title: "ERROR !!! ",
         draggable: true,
         modal: true,
         buttons: [{
           text: "Ok",
           class: "btn btn-md btn-primary",
           click: function () {
             $(this).dialog("close");
           }
         }]
       });
       return false;
     }
     if ($('#training_display').val() == '') {
       var newDiv = $(document.createElement('div'));
       newDiv.html('Form not submitted, please select yes or no');
       newDiv.dialog({
         title: "ERROR !!! ",
         draggable: true,
         modal: true,
         buttons: [{
           text: "Ok",
           class: "btn btn-md btn-primary",
           click: function () {
             $(this).dialog("close");
           }
         }]
       });
       return false;
     }

     let training_program = {
       training_prg_name: $("#training_name").val(),
       training_prg_type: $("#training_type").val(),
       training_description: $("#training_description").val(),
       training_prg_duration: $("#training_duration").val(),
       training_start_date: $("#training_start_date").val(),
       training_status: "created",
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

       if (response.status == "success") {
         var newDiv = $(document.createElement('div'));
         newDiv.html('New training program has succesfully inserted into database !!!');
         newDiv.dialog({
           title: "Message from Server",
           draggable: true,
           modal: true,
           buttons: [{
             text: "Ok",
             class: "btn btn-md btn-primary",
             click: function () {
               $(this).dialog("close");
             }
           }]
         });
         $("#training_form")[0].reset();
         $("#all_training_programs tbody").remove();
         updateAllTrainings();
       };
     });

   };
   $("#save_training").click(function () {
     saveTraining(event);
   });


   





})
// End of document.ready()


function sayHii(x){
  var index=$(x).closest('tr').index();
  console.log("Trainee table index : ",index);
  
  var newDiv = $(document.createElement('div'));
  newDiv.html('Select button has clicked');
  newDiv.dialog({
    title: "BUTTON CLICKED ",
    draggable: true,
    modal: true,
    buttons: [{
      text: "Ok",
      class: "btn btn-md btn-primary",
      click: function () {
        $(this).dialog("close");
      }
    }]
  });
      
}

// Code to fill the Training program modal
function fillTrainingModal(x){
    
    var index=$(x).closest('tr').index();
    console.log("Trainee table index : ",index);
    var settings = {
      "url": "http://localhost:8080/trainings",
      "method": "GET",
      "timeout": 0,
      "headers": {
        "Content-Type": "application/json"
      },
      "data": null,
    };
    $.ajax(settings).done(function (response) {
      var data = response.data;
      console.log("The Selected data are: ",data);
      for (var i = 0; i < data.length; i++) {
          if (i === index) {
            console.log("selected data", data[i]);
            $("#prg_id").text(data[i].training_prg_id);
            $("#prg_description").text(data[i].training_description);
            $("#prg_name").text(data[i].training_prg_name);
            $("#prg_type").text(data[i].training_prg_type);
            $("#prg_start_date").text(data[i].training_start_date);
            $("#prg_duration").text(data[i].training_prg_duration);
            $("#prg_create_date").text(data[i].training_create_date);
            $("#prg_display").text(data[i].display_status);
            $("#prg_status").text(data[i].training_status);
          }
  
        }

    });
}

// Code to fill the employee modal
function fillEmployeeModalPopup(x) {
  var index = $(x).closest('tr').index();
  console.log("Id is ", index);


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
    console.log("all Employees from select row are", response.data);
    var data = response.data;
    for (var i = 0; i < data.length; i++) {
      if (i === index) {
        console.log("selected data", data[i]);
        $("#emp_id").text(data[i].employee_id);
        $("#emp_name").text(data[i].employee_name);
        $("#emp_dept").text(data[i].department_id);
        $("#emp_desig").text(data[i].designation);
        $("#emp_join_date").text(data[i].employee_join_date);
        $("#emp_ddo_code").text(data[i].ddo_code);
        $("#emp_original_salary").text(data[i].original_salary);
        $("#emp_current_salary").text(data[i].current_salary);
        $("#emp_region").text(data[i].region);
      }

    }

  });

  }













  


  




  



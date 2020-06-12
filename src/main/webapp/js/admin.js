  //Total Trainings
  fetchTotalTrainings();
  function fetchTotalTrainings(){
    $.getJSON( "http://localhost:8080/admin/totalTrainings", function(response) {
      $("#view_total_trainings").text(response.data);

    });
  }
  //Total Registrations
  fetchTotalRegistration();
  function fetchTotalRegistration() {
    var settings = {
      "url": "http://localhost:8080/countRegistration",
      "method": "GET",
      "timeout": 0,
      "headers": {
        "Content-Type": "application/json"
      },
      "data": null,
    };
    $.ajax(settings).done(function (response) {
      console.log("Total Registrations :", response);
      $("#totalRegistrations").text(response.data);
    });
  }
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
        + '<td>' +'<a type="button" title="View" data-toggle="modal" onclick="fillEmployeeModalPopup(this)" data-target="#exampleModalCenter" class="delete" onclick="updateApplication(this)" data-toggle="modal"  data-target="#selected_trainee_modal" style="align:center;"><i class="fa fa-eye" aria-hidden="true"></i></a>' + '</td>'
        + '</tr>';

    });
    $('#allEmployees').append(employee_data);

  }
  //Employee Search bar
  populateEmployeeInSearch();
  function populateEmployeeInSearch(){
   $.getJSON( "http://localhost:8080/employees", function(response) {
    
       var emoloyeeSuggestions = [];
       var i = 0;
       $.each(response.data, function (key, value) {
         emoloyeeSuggestions[i] = value.employee_id;
         i++;
       });
       console.log(emoloyeeSuggestions);
       //now the magic begins
       $("#search_employee_byId").autocomplete({
         source: emoloyeeSuggestions
 
       }, {
         autoFocus: true,
         delay: 0,
         minlength: 1
       });
 
   })
 
  }
  //test
  $("#allEmployees").on('click', '.delete', function () {
    var currentRow = $(this).closest("tr").index();
    var id = currentRow.find("td:eq(0)").text();
    console.log(id);
  });







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
            trainee_data += '<td>' + '<a type="button" title="Select" class="edit selectEmployee"   style="color: #00b300;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="fa fa-check" aria-hidden="true"></i></a>' + 
                            '<a type="button" title="Remove" class="edit remove"   style="color: #e60000;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="fa fa-times" aria-hidden="true"></i></a>' + '</td>';
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



  // code to read selected table row cell data (values).
  $("#trainee_table").on('click', '.selectEmployee', function () {
    var currentRow = $(this).closest("tr");
    var newDiv = $(document.createElement('div'));
    newDiv.html('Are you sure??');
    newDiv.dialog({
      title: "ALERT !!! ",
      draggable: true,
      modal: true,
      buttons: [{
        text: "yes",
        class: "btn btn-md btn-danger",
        click: function () {
          $(this).dialog("close");
          // get the current row

          var col1 = currentRow.find("td:eq(0)").text(); // get current row 1st TD value
          var col2 = currentRow.find("td:eq(1)").text(); // get current row 2nd TD
          var col3 = currentRow.find("td:eq(2)").text(); // get current row 3rd TD
          var col4 = currentRow.find("td:eq(3)").text();
          var col5 = currentRow.find("td:eq(4)").text();

          let object = {
            employee_no: col1,
            name: col2,
            department_no: col3,
            designation: col4,
            DDO_CODE: col5,
            training_prog_id: $("#trainings_dropdown").val(),
            publish: false,
            application_status: 'accepted',

          }
          console.log(object);
          var settings = {
            "url": "http://localhost:8080/checkApplication",
            "method": "POST",
            "timeout": 0,
            "headers": {
              "Content-Type": "application/json"
            },
            "data": JSON.stringify(object),
          };
          $.ajax(settings).done(function (response) {
            console.log(response);
            if (response.status == "success") {
              fetchAllApplications();
              var newDiv = $(document.createElement('div'));
              newDiv.html('Succesfully inserted!!!');
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

            }
            else {
              var newDiv = $(document.createElement('div'));
              newDiv.html('Error occured, may be Employee Id or Department Id is not valid!!!');
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

            }

            $('#applications_table').refresh();
          });
          currentRow.remove();


        }
      }]
    });











  });
  //To Remove the Row
  $("#trainee_table").on('click', '.remove', function () {
    var currentRow = $(this).closest("tr");
    var newDiv = $(document.createElement('div'));
    newDiv.html('Do you want to remove this Employee???');
    newDiv.dialog({
      title: "ALERT !!! ",
      draggable: true,
      modal: true,
      buttons: [{
        text: "Yes",
        class: "btn btn-md btn-danger",
        click: function () {
          currentRow.remove();
          $(this).dialog("close");
        }
      }]
    });


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
    $('#applications_table tbody').empty();
    console.log("All Applications are ", applications);
    var application_data = '';

    $.each(applications, function (key, value) {

      application_data += '<tr>'
        + '<td>' + value.application_id + '</td>'
        + '<td>' + value.employee_no + '</td>'
        + '<td>' + value.training_prog_id + '</td>'
        + '<td>' + value.name + '</td>'
        + '<td>' + value.department_no + '</td>'
        + '<td>' + value.designation + '</td>'
        + '<td>' + value.application_status + '</td>'
        + '<td>' +'<a type="button" title="Update" class="edit" onclick="updateApplication(this)" data-toggle="modal"  data-target="#updateApplicationModal" style="color: #FFC107;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE254;</i></a>'+
                '<a type="button" class="delete"  title="Delete" onclick="deleteApplication(this)" style="color: #E34724;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE872;</i></a>' + '</td>'
        + '</tr>';

    });
    $('#applications_table').append(application_data);

  }
  
//Selected trainee Update
function updateApplication(x) {
  var currentRow=$(x).closest('tr');
  var applicationId=currentRow.find("td:eq(0)").text(); 
  $.getJSON('http://localhost:8080/admin/findApplication/'+applicationId,function(response){
    console.log("Applicatiion",response);
    var data=response.data;
    $("#editApp_application_id").val(data.application_id);
    $("#editApp_name").val(data.name);
    $("#editApp_employee_id").val(data.employee_no);
    $("#editApp_department_id").val(data.department_no);
    $("#editApp_ddo_code").val(data.ddo_CODE);
    $("#editApp_designation").val(data.designation);
    $("#editApp_status").val(data.application_status);
    $("#editApp_regid").val(data.reg_no);


  })
  

}
//to delete a Application
function deleteApplication(x){
  var currentRow=$(x).closest('tr');
  var application_id=currentRow.find("td:eq(0)").text(); 
  console.log("app Id",application_id);
  swal({
    title: "Are you sure?",
    text: "Once deleted, you will not be able to recover this imaginary file!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
    .then((willDelete) => {
      if (willDelete) {
        var loading = new Loading({
          title: ' Please Wait',
          direction: 'hor',
          discription: 'Sending data...',
          defaultApply: true,
        });
        var settings = {
          "url": "http://localhost:8080/admin/deleteApplication/" + application_id,
          "method": "DELETE",
          "timeout": 0,
          "headers": {
            "Content-Type": "application/json"
          },
          "data": null,
        };
        $.ajax(settings).done(function (response) {
          console.log(response);
          if (response.status == "success") {
            fetchAllApplications();
            loading.out();
            swal("Poof! Deleted successfully!", {
              icon: "success",
            });
          }
         
          loading.out();
          alert("not deleted");
          
        });
      }
    });
}


  // To publish all trainees
  $("#publish").click(function () {
    if ($("#applications_table tbody").children().length == 0) {
      var newDiv = $(document.createElement('div'));
      newDiv.html('No Applications to publish');
      newDiv.dialog({
        title: "ALERT !!! ",
        draggable: true,
        modal: true,
        buttons: [{
          text: "close",
          class: "btn btn-md btn-danger",
          click: function () {
            $(this).dialog("close");
          }
        }]
      });
      return false;
    }
    if ($("#applications_table tbody").children().length !== 0) {
      var newDiv = $(document.createElement('div'));
      newDiv.html('Are You sure you want to publish ???');
      newDiv.dialog({
        title: "ALERT !!! ",
        draggable: true,
        modal: true,
        buttons: [{
          text: "Yes",
          class: "btn btn-md btn-danger",
          click: function () {
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
              console.log("publish", response);
              $.each(response.data, function (key, value) {
                console.log("key is", key);
                console.log("value is", value);
                value.publish = true;
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
                  console.log("updated data ", response)
                });

              });
            });
            $(this).dialog("close");
          }
        }]
      });
      return true;
    }





  });
  //For Training Programs
  //Calling the Function at document load
  updateAllTrainings()


  function updateAllTrainings() {
    $('#all_training_programs tbody').empty();
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
        training_prg_data += '<td>' + value.training_start_date + '</td>';
        training_prg_data += '<td>' + value.training_end_date + '</td>';
        training_prg_data += '<td>' + value.training_create_date + '</td>';
        training_prg_data += '<td>' + value.training_status + '</td>';
        training_prg_data += '<td>' + value.display_status + '</td>';
        training_prg_data += '<td>' +' <a type="button" class="edit" title="Edit" data-toggle="modal" onclick="fillTrainingModal(this)" style="color: #FFC107;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;" data-target="#previewTrainings"><i class="material-icons">&#xE254;</i></a>'
                             +'<a type="button" class="delete" onclick="deleteTraining(this)" title="Delete" style="color: #E34724;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE872;</i></a>' + '</td>';
        training_prg_data += '</tr>';

      });
      $('#all_training_programs').append(training_prg_data);
    });

  }

   //to Delete training program
  
function deleteTraining(x){
  var currentRow = $(x).closest("tr");
  var training_prg_id=currentRow.find("td:eq(0)").text();
  swal({
    title: "Are you sure?",
    text: "Once deleted, you will not be able to recover this imaginary file!",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
    .then((willDelete) => {
      if (willDelete) {
        var loading = new Loading({
          title: ' Please Wait',
          direction: 'hor',
          discription: 'Sending data...',
          defaultApply: true,
        });
       
        console.log("Selected row", training_prg_id);
        var settings = {
          "url": "http://localhost:8080/deleteTraining/" + training_prg_id,
          "method": "DELETE",
          "timeout": 0,
          "headers": {
            "Content-Type": "application/json"
          },
          "data": null,
        };
        $.ajax(settings).done(function (response) {
          console.log(response);
          if (response.status == "success") {
            loading.out();
            updateAllTrainings();
            swal("Poof! Deleted successfully!", {
              icon: "success",
            });
          }
          else if (response.status == "conflict") {
            loading.out();
            swal("ERROR !!!", "Not deleted, May be training has beeing used", "error");
          }
          else {
            loading.out();
            alert("not deleted");
          }
        });
      }
    });
}
 populateTrainers();
 function populateTrainers(){
  $.getJSON( "http://localhost:8080/admin/trainers", function(response) {
    console.log("trainers are",response)
    
      //to fill the array
      var trainerSuggestions = [];
      var i = 0;
      $.each(response.data, function (key, value) {
        trainerSuggestions[i] = value.trainer_name+' ,'+value.trainer_id;
        i++;
      });
      console.log(trainerSuggestions);
      //now the magic begins
      $("#training_prg_trainer").autocomplete({
        source: trainerSuggestions

      }, {
        autoFocus: true,
        delay: 0,
        minlength: 1
      });

  })

 }



  const saveTraining = (ev) => {
    ev.preventDefault();

    if ($('#training_description').val() == '') {
      swal("ERROR !!!", "Form not submitted,please fillup the training description field", "error");
      return false;
    }
    if ($('#training_name').val() == '') {
      swal("ERROR !!!", "Form not submitted, please fillup the training name field", "error");
      return false;
    }
    if ($('#training_type').val() == '') {
      swal("ERROR !!!", "Form not submitted, please select the training type", "error");
      return false;
    }
    if ($('#training_end_date').val() == '') {
      swal("ERROR !!!", "Form not submitted, please fillup the training end date", "error");
      return false;
    }
    if ($('#training_start_date').val() == '') {
      swal("ERROR !!!", "Form not submitted,  please fillup the training start date", "error");
      return false;
    }
    if ($('#training_display').val() == '') {
      swal("ERROR !!!", "Form not submitted, please select yes or no", "error");
      return false;
    }
    if ($('#training_prg_trainer').val() == '') {
      swal("ERROR !!!", "Form not submitted,please select a trainer", "error");
      return false;
    }
    // to view the loading animation
    var loading = new Loading({
      title: ' Please Wait',
      direction: 'hor',
      discription: 'Sending data...',
      defaultApply: true,
    });

    let training_program = {
      training_prg_name: $("#training_name").val(),
      training_prg_type: $("#training_type").val(),
      training_description: $("#training_description").val(),
      training_end_date: $("#training_end_date").val(),
      training_start_date: $("#training_start_date").val(),
      training_status: "created",
      training_prg_trainer_id:$("#training_prg_trainer").val(),
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
        loading.out();
        swal("Success!", "New Training program has successfully inserted!", "success");
        $("#training_form")[0].reset();
        updateAllTrainings();
      };
    });

  };
  $("#save_training").click(function () {
    saveTraining(event);
  });


  //Events
  $("#sendEvent").click(() => {

    const colours = ["#78bc6d", "#d08244", "#103e36", "#fd8311", "#088da5", "#4a6855", "#0094fb", "#419c99", "#b3e835"];

    let event = {
      text: $("#event_description").val(),
      start: $("#event_start_date").val() + "T23:00:00.000Z",
      end: $("#event_end_date").val() + "T23:00:00.000Z",
      color: colours[Math.floor(Math.random() * colours.length)]
    }

    var settings = {
      "url": "http://localhost:8080/postEvent",
      "method": "POST",
      "timeout": 0,
      "headers": {
        "Content-Type": "application/json"
      },
      "data": JSON.stringify(event),
    };
    $.ajax(settings).done(function (response) {
      console.log("The event save:", response);
    });
  })




// End of document.ready()





function sayHii(x) {
  var index = $(x).closest('tr').index();
  console.log("Trainee table index : ", index);

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
function fillTrainingModal(x) {

  var index = $(x).closest('tr').index();
  console.log("Trainee table index : ", index);
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
    console.log("The Selected data are: ", data);
    for (var i = 0; i < data.length; i++) {
      if (i === index) {
        console.log("selected data", data[i]);
        $("#prg_id").text(data[i].training_prg_id);
        $("#prg_description").text(data[i].training_description);
        $("#prg_name").text(data[i].training_prg_name);
        $("#prg_type").text(data[i].training_prg_type);
        $("#prg_start_date").text(data[i].training_start_date);
        $("#prg_trainer").text(data[i].training_prg_trainer_id);
        $("#prg_end_date").text(data[i].training_end_date);
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


























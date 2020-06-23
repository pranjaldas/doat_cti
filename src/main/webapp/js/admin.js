  //For accordion
  $("#import-alert-success").hide();
  $("#set-alert-success").hide();
  $(function() {
    $( "#accordian" ).accordion({
       collapsible: true,
       heightStyle: "content"
    });
 });
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

//for the toaster messages

toastr.options = {
  "closeButton": false,
  "debug": false,
  "newestOnTop": false,
  "progressBar": false,
  "positionClass": "toast-top-right",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "500",
  "timeOut": "3000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
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
  //Criteria set to select trainee_table
  populateDesig();
  function populateDesig(){
    var desigSuggestions = ['Tester','Director','Developer','Software Engineer','Human Resource','Marketing Head','Sales Officer','Analyser'];
    var i = 0;
    $.each(desigSuggestions, function (key, value) {
        desigSuggestions[i] = value;
        i++;
    });
    console.log(desigSuggestions);
    //now the magic begins

    $("#criteria_desig").autocomplete({
        source: desigSuggestions

    }, {
        autoFocus: true,
        delay: 0,
        minlength: 1
    });
  }
  $("#criteria_add_desig").click(() => {
    if ($("#criteria_desig").val() == "") {
        swal("ERROR !!!","Please Enter a Designation","error");
        return false;
    }
    var selected = $("#criteria_desig").val();
    var test = false;
    $('#criteria_desig_list li').each(function () {
        if ($(this).text() == selected) {

            test = true;
        }
    });
    if (test == true) {
      swal("ERROR !!!","Already Select","error");
        $("#criteria_desig").val('');
        return false;
    }
    var li = document.createElement('li');  // create li element.
    li.setAttribute('class', 'list-group-item');
    li.innerHTML = selected;
    $("#criteria_desig_list").append(li);
    empIdsuggestions = $.grep(empIdsuggestions, function (value) {
        return value != selected;
    });
    $("#criteria_desig_list").val('');
    test = false;

})
var join_date_criteria='';
var designation_criteria = [];

$("#criteria_set").click(()=>{
  join_date_criteria=$("#join_date_criteria_set").val();
  if (($("#criteria_desig_list").has("li").length === 0)) {
    swal("ERROR !!!", "please select any designation criteria", "error");
    return false;
  }
  if (join_date_criteria=='') {
    swal("ERROR !!!", "please select a join date criteria", "error");
    return false;
  }

  $("#criteria_desig_list li").each(function () {
    // if(!$.inArray($(this).text(), designation_criteria))array.push($(this).text());
    // designation_criteria.push($(this).text());
    if (designation_criteria.indexOf($(this).text()) === -1) designation_criteria.push($(this).text());
  });
  toastr.success("Criterias Set Successfully");

})
$("#criteria_reset").click(()=>{
  $("#join_date_criteria_set").val('');
  $("#criteria_desig_list").empty();
  join_date_criteria='';
  designation_criteria=[];
  console.log(join_date_criteria,designation_criteria);
})





  //To convert csv to a json array and to a table
  $("#upload").bind("click", function () {
    $("#trainee_table tbody").empty();
    if ($('#trainings_dropdown').val() == '') {
      swal("ERROR !!!", "Form not submitted, please select a Training program","error")
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
              employee.emp_join_date = cells[2];
              employee.emp_dep_no = cells[3];
              employee.emp_desig = cells[4];
              employee.emp_ddo_code = cells[5];
              employees.push(employee);
            }
          }
          console.log("The json data are :", employees)
          var trainee_data = '';
          $.each(employees, function (key, value) {
            trainee_data += '<tr>';
            trainee_data += '<td>' + value.employee_id + '</td>';
            trainee_data += '<td>' + value.employee_name + '</td>';
            trainee_data += '<td>' + value.emp_join_date + '</td>';
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
        toastr.success("CSV imported Successfully");
      } else {
        swal("ERROR !!!","Browser doesnot support HTML5","error");
      }
    } else {
      swal("ERROR !!!","Please upload a valid csv file","error");
    }
  
  });



  // code to read selected table row cell data (values).
  $("#trainee_table").on('click', '.selectEmployee', function () {
    if(join_date_criteria=='' || jQuery.isEmptyObject(designation_criteria)){
      swal("ERROR !!!", "No Criterias selected..","error");
      return false;
    }
    
    var currentRow = $(this).closest("tr");
    swal({
      title: "Are you sure?",
      text: "You want to insert it?",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
      .then((willInsert) => {
        if (willInsert) {
          var col1 = currentRow.find("td:eq(0)").text(); // get current row 1st TD value
          var col2 = currentRow.find("td:eq(1)").text(); // get current row 2nd TD
          var col3 = currentRow.find("td:eq(2)").text();
          var col4 = currentRow.find("td:eq(3)").text(); // get current row 3rd TD
          var col5 = currentRow.find("td:eq(4)").text();
          var col6 = currentRow.find("td:eq(5)").text();

          let object = {
            employee_no: col1,
            reg_no:"Unregistered",
            name: col2,
            join_date:col3,
            department_no: col4,
            designation: col5,
            DDO_CODE: col6,
            training_prog_id: $("#trainings_dropdown").val(),
            publish: false,
            application_status: 'accepted',

          }
          
          console.log(object.join_date);
          if(!isValidDate(object.join_date)){
            swal("ERROR !!!", "Date format exception, please select yyyymmdd format in the  CSV file","error");
            return false;
          }
          console.log(object.designation);
          var criteriaDate=new Date(join_date_criteria);
          var joinDate=new Date(object.join_date)
          if(criteriaDate > joinDate ){
            console.log(" join date criteria passed selected");
            if(designation_criteria.indexOf(object.designation) !== -1){
              console.log(" join date criteria and designation criteria passed selected");
              applyTrainingAfterCriteriaApproved(object,currentRow);
            }
            else{
              swal("Opps !!!","The Employee do not pass the designation criteria","error");
            }
            
          }
          else{
            swal("Opps !!!","The Employee do not pass the join date criteria","error");
          }

        }
      });
    
          // get the current row  
   });
   function isValidDate(dateString) {
    var regEx = /^\d{4}-\d{2}-\d{2}$/;
    if(!dateString.match(regEx)) return false;  // Invalid format
    var d = new Date(dateString);
    var dNum = d.getTime();
    if(!dNum && dNum !== 0) return false; // NaN value, Invalid date
    return d.toISOString().slice(0,10) === dateString;
  }


 function applyTrainingAfterCriteriaApproved(application,currentRow){
  var loading = new Loading({
    title: ' Please Wait',
    direction: 'hor',
    discription: 'Sending data...',
    defaultApply: true,
  });
  var settings = {
    "url": "http://localhost:8080/checkApplication",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": JSON.stringify(application),
  };
  $.ajax(settings).done(function (response) {
    console.log(response);
    if (response.status == "success") {
    loading.out();
    fetchAllApplications();
    currentRow.remove();
     swal("Poof!!!","Inserted successfully!!!","success");

    }
    else {
      loading.out();
      swal("Message From Server !!!","Error occured, may be Employee Id or Department Id is not valid!!!","error");

    }

    $('#applications_table').refresh();
  });

 }








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
    $("#trainee_table body").empty();

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
        + '<td>' + value.reg_no + '</td>'
        + '<td>' + value.designation + '</td>'
        + '<td>' + value.application_status + '</td>'
        + '<td>' +'<a type="button" title="Message" class="message" onclick="messageApplicant(this)"   style="color: #fc0303;margin: 0 5px;min-height: 30px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="fa fa-envelope" aria-hidden="true"></i></a>'+
                  '<a type="button" title="Update" class="edit" onclick="updateApplication(this)" data-toggle="modal"  data-target="#updateApplicationModal" style="color: #FFC107;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE254;</i></a>'+
                  '<a type="button" class="delete"  title="Delete" onclick="deleteApplication(this)" style="color: #E34724;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE872;</i></a>' + '</td>'
        + '</tr>';

    });
    $('#applications_table').append(application_data);

  }
 var application_id_store='';
 var reg_id_store='';
//message Applicant
function messageApplicant(x){
  
  var currentRow=$(x).closest('tr');
  
  if(currentRow.find("td:eq(4)").text() == "Unregistered"){
    swal("ERROR !!!", "No Registration number is available for this Applicant.","error");
    return false;
  }
  else{
    application_id_store=currentRow.find("td:eq(0)").text();
    reg_id_store=currentRow.find("td:eq(4)").text();
    $("#message_applicant").modal('show');
    
  }  
}
$("#admin_msg_send").click((event) => {
  event.preventDefault(event);
  console.log(application_id_store,reg_id_store);
  console.log("Mail",$("#mail_check").val(),);
  var loading = new Loading({
    title: ' Please Wait',
    direction: 'hor',
    discription: 'Sending data...',
    defaultApply: true,
  });
  console.log('type of regid',typeof(reg_id_store));
  var message={
    mail:document.getElementById("mailCheck").checked,
    application_id:application_id_store,
    trainee_reg_id:reg_id_store,
    title:$("#admin_msg_title").val(),
    subject:$("#admin_msg_subject").val(),
    senderSignature:'ADMIN',
    admin_read: false,
    trainee_read:false
  }
  console.log(message);
  var settings = {
    "url": "http://localhost:8080/postNotification",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": JSON.stringify(message),
  };
  $.ajax(settings).done(function (response) {
    if(response.status == "success"){
      loading.out();
      console.log(response);
      getNotifications();
      $("#message_applicant").modal('hide');
      $("#admin_msg_title").val('');
      $("#admin_msg_subject").val('');
      swal("SUCCESS","Message Send succesfully","success");
     
    }
    else if(response.status == "not registered"){
      loading.out();
      swal("ERROR","This applicant is not registered","error");
    }
    else{
      loading.out();
      swal("ERROR","Mail not send","error");
    }
  });
   
})
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

  // Code to fill the Training program modal
  function fillTrainingModal(x) {

    var currentRow = $(x).closest("tr");
    var training_prg_id=currentRow.find("td:eq(0)").text();
    console.log(training_prg_id);
    $.getJSON("http://localhost:8080/admin/getTraining/"+training_prg_id,(response)=>{
      console.log(response);
      fillTheTrainingViewModal(response.data);
    });
   
  }
  function fillTheTrainingViewModal(data){
    

    $("#prg_id").text(data.training_prg_id);
    $("#prg_description").text(data.training_description);
    $("#prg_name").text(data.training_prg_name);
    $("#prg_type").text(data.training_prg_type);
    $("#prg_start_date").text(data.training_start_date);
    $("#prg_end_date").text(data.training_end_date);
    $("#prg_create_date").text(data.training_create_date);
    $("#prg_display").text(data.display_status);
    $("#prg_status").text(data.training_status);
    $("#prg_trainer").text(data.training_prg_trainer_id);
    var trairsArray=data.training_prg_trainer_id.split(',');
    console.log(trairsArray);
    // var ul_list=$("#prg_trainer");
    // $.each(trairsArray,function(key,value){
    //   console.log(value,key);
    //   var list = document.createElement('li');
    //   list.innerHTML(value);
    //   ul_list.append(list);
      
    // })   
    // var cont = document.getElementById('#prg_trainer');

    // // create ul element and set the attributes.
    // var ul = document.createElement('ul');
    // ul.setAttribute('style', 'padding: 0; margin: 0;');
    // ul.setAttribute('id', 'theList');

    // for (i = 0; i <= trairsArray.length - 1; i++) {
    //     var li = document.createElement('li');     // create li element.
    //     li.innerHTML = trairsArray[i];      // assigning text to li using array value.
    //     li.setAttribute('style', 'display: block;');    // remove the bullets.

    //     ul.appendChild(li);     // append li to ul.
    // }

    // cont.appendChild(ul);  


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
            swal("ERROR !!!", "Not deleted, May be training has been beeing in use", "error");
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
        trainerSuggestions[i] = value.trainer_name+':'+value.trainer_id;
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
 $("#add_trainer_to_list").click(() => {
  if ($("#training_prg_trainer").val() == "") {
    swal("ERROR !!!", "Please select a trainer", "error");
    return false;
     
  }
  var selected = $("#training_prg_trainer").val();
  var test = false;
  $('#trainer_list_selected li').each(function () {
      if ($(this).text() == selected) {
          test = true;
      }
  });
  if (test == true) {
      swal("ERROR!!!","Already selected trainer","error");
      $("#training_prg_trainer").val('');
      return false;
  }
  var li = document.createElement('li');  // create li element.
  li.innerHTML = selected;
  li.setAttribute('class', 'list-group-item');
  $("#trainer_list_selected").append(li);
  $("#training_prg_trainer").val('');
  test = false;

});



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
    if (($("#trainer_list_selected").has("li").length === 0)) {
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
    var trainerArray = [];
    $('#trainer_list_selected li').each(function () {
      trainerArray.push($(this).text());
    });

    let training_program = {
      training_prg_name: $("#training_name").val(),
      training_prg_type: $("#training_type").val(),
      training_description: $("#training_description").val(),
      training_end_date: $("#training_end_date").val(),
      training_start_date: $("#training_start_date").val(),
      training_status: "created",
      training_prg_trainer_id:trainerArray.toString(),
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
        $('#trainer_list_selected').empty();
        updateAllTrainings();
      };
    });

  };
  $("#save_training").click(function () {
    saveTraining(event);
  });





  // //Events
  // $("#sendEvent").click(() => {

  //   const colours = ["#78bc6d", "#d08244", "#103e36", "#fd8311", "#088da5", "#4a6855", "#0094fb", "#419c99", "#b3e835"];

  //   let event = {
  //     text: $("#event_description").val(),
  //     start: $("#event_start_date").val() + "T23:00:00.000Z",
  //     end: $("#event_end_date").val() + "T23:00:00.000Z",
  //     color: colours[Math.floor(Math.random() * colours.length)]
  //   }

  //   var settings = {
  //     "url": "http://localhost:8080/postEvent",
  //     "method": "POST",
  //     "timeout": 0,
  //     "headers": {
  //       "Content-Type": "application/json"
  //     },
  //     "data": JSON.stringify(event),
  //   };
  //   $.ajax(settings).done(function (response) {
  //     console.log("The event save:", response);
  //   });
  // })




// End of document.ready()

//Notifications
getNotifications();
function getNotifications(){
  $.getJSON("http://localhost:8080/getAllNotification", function(response){
    console.log(response);
    fillNoyifications(response.data);
  })
}
function fillNoyifications(list){
  $("#admin_notifications").empty();
  var data='';
  $.each(list,(key,value)=>{
    
      data+='<div type="button" onclick="alerting('+value.id+')"  class="alert alert-light notification" data-toggle="modal" data-target="#notification_details_modal">'
            +'<div class="row"><div class="col-8" class="float-left"><i class="fa fa-envelope" aria-hidden="true"></i> '      
            + value.title+'</div><div class="col-2"><p><b>Time:</b> '
            + value.notificatio_create_time+'</p></div><div class="col-2"><p><b>Date: </b>'
            + value.notificatio_create_date+'</p></div></div></div>';
    
  })
  
  $("#admin_notifications").append(data);

}



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


























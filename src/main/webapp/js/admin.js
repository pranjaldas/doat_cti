  //For accordion
  $("#import-alert-success").hide();
  $("#set-alert-success").hide();
  $(function() {
    $( "#accordian" ).accordion({
       collapsible: true,
       heightStyle: "content"
    });
 });
 //Accordion 
$(function () {
  $("#replyAccordion").accordion({
    collapsible: false,
    heightStyle: "content"
  });
});
$(function () {
  $("#sendMsgAccordion").accordion({
    collapsible: false,
    heightStyle: "content"
  });
});
$(function () {
  $("#accordian_select_objection").accordion({
    collapsible: false,
    heightStyle: "content"
  });
});
//Release Calendar
 
$("#publishCalendar").click((event)=>{
  event.preventDefault();
  if($("#calendar_month").val()==''){
    swal("ERROR !!!", "Please select the month","error");
    return false;
  }
  if($("#calendar_year").val()==''){
    swal("ERROR !!!", "Please select the year","error");
    return false;
  }
  var loading = new Loading({
    title: ' Please Wait',
    direction: 'hor',
    discription: 'Sending data...',
    defaultApply: true,
  });
  var calendar={
    month:$("#calendar_month").val()+' '+$("#calendar_year").val()
  }
  console.log(calendar);
  var settings = {
    "url": "http://localhost:8080/admin/postCalendar",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": JSON.stringify(calendar),
  };
  $.ajax(settings).done(function (response) {
    if(response.status == "success"){
      loading.out();
      $("#releaseCalendarModal").modal('hide');
      $("#calendar_month").val('');
      $("#calendar_year").val('');
      swal("Success","Successfully published","success");
    }
    else{
      loading.out();
      swal("ERROR !!!","Already published this month","error");
    }
  });
})






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
      "url": "http://localhost:8080/allemployees",
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
        + '<td>' + value.employee_join_date + '</td>'
        + '<td>' + value.department_id + '</td>'
        + '<td>' + value.designation + '</td>'
        + '<td>' + value.employee_retire_date + '</td>'
        + '<td>' + value.ddo_code + '</td>'
        + '<td>' + value.manager + '</td>'
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
    var desigSuggestions = ['System Operator','Asst. System Administrator','Tester','Director','Developer/Technician','Software Engineer','Human Resource','Marketing Head','Sales Officer','Analyser','Jr. Assistant','System Administrator','Lower Division Assistant','Grade IV','Clerk','Sr. Assistant'];
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
    // empIdsuggestions = $.grep(empIdsuggestions, function (value) {
    //     return value != selected;
    // });
    $("#criteria_desig_list").val('');
    test = false;

})
var experience_criteria='';
var retirement_criteria='';
var designation_criteria = [];

$("#criteria_set").click(()=>{
  experience_criteria=$("#experience_criteria").val();
  retirement_criteria=$("#retirement_criteria").val();
  if (($("#criteria_desig_list").has("li").length === 0)) {
    swal("ERROR !!!", "please select any designation criteria", "error");
    return false;
  }
  if ( experience_criteria=="") {
    swal("ERROR !!!", "Please select minimum years of experience after join date", "error");
    return false;
  }
  if ( retirement_criteria=="") {
    swal("ERROR !!!", "Please select minimum years left for retirement.", "error");
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
  $("#experience_criteria").val('');
  $("#retirement_criteria").val('');
  $("#criteria_desig").val('');
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
              employee.emp_retire_date = cells[5];
              employee.emp_email = cells[6];
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
            trainee_data += '<td>' + value.emp_retire_date + '</td>';
            trainee_data += '<td>' + value.emp_email + '</td>';
            trainee_data += '<td>' + '<a type="button" title="Select" class="edit selectEmployee"   style="color: #00b300;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="fa fa-check" aria-hidden="true"></i></a>' + 
                            '<a type="button" title="Remove" class="edit remove"   style="color: #e60000;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="fa fa-times" aria-hidden="true"></i></a>' + '</td>';
            trainee_data += '</tr>';

          });
          $('#trainee_table').append(trainee_data);
        }
        reader.readAsText($("#fileUpload")[0].files[0]);
        toastr.success("CSV imported Successfully");
        //Do stuffs here
       
        $("#accordian").children(":last").trigger( "expand" );

      } else {
        swal("ERROR !!!","Browser doesnot support HTML5","error");
      }
    } else {
      swal("ERROR !!!","Please upload a valid csv file","error");
    }
  
  });



  // code to read selected table row cell data (values).
  $("#trainee_table").on('click', '.selectEmployee', function () {
    //Checking only one criteria because of all inputs need to give before set criteria
    if(experience_criteria=='' || jQuery.isEmptyObject(designation_criteria)){
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
          var col7= currentRow.find("td:eq(6)").text();

          let application = {
            employee_no: col1,
            reg_no:"Unregistered",
            reason:"",
            name: col2,
            application_status:'',
            join_date:col3,
            department_no: col4,
            designation: col5,
            applicant_email:col7,
            retire_date:col6,
            training_prog_id: $("#trainings_dropdown").val(),
            publish: false,
            applicant_email:col7,
          }
          
          console.log(application.join_date);
          if(!isValidDate(application.join_date)){
            swal("ERROR !!!", "Join Date format exception, please select yyyymmdd format in the  CSV file","error");
            return false;
          }
          if(!isValidDate(application.retire_date)){
            swal("ERROR !!!", "Retire Date format exception, please select yyyymmdd format in the  CSV file","error");
            return false;
          }
           var passStatus=checkIfPassCriterias(application.designation);
           var checkExp=checkExperienceCriteria(application.join_date);
           var checkRetire=checkRetirementCriteria(application.retire_date);
           console.log(checkExp);
           console.log(checkRetire);
           console.log(passStatus)
           console.log(criteria_fail_reasons.toString());
          

          
          
          if(passStatus==true && checkRetire ==true && checkExp==true){
           
            swal({
              title: "Congratulations, passed all criteria",
              text: "Application will be Accepted.",
              icon: "success",
              buttons: true,
              dangerMode: true,
            })
              .then((willInsert) => {
                if (willInsert) {
                  console.log("pass");
                  application.application_status='accepted';
                  applyTrainingAfterCriteriaChecked(application,currentRow);
                  criteria_fail_reasons=[];
                }
                criteria_fail_reasons=[];
              });
            
          }
          else{
                 
            swal({
              title: "Some Criterias Failed",
              text: "Application will be rejected.",
              icon: "warning",
              buttons: true,
              dangerMode: true,
            })
              .then((willInsert) => {
                if (willInsert) {
                  application.reason=criteria_fail_reasons.toString();
                  application.application_status='rejected';
                  applyTrainingAfterCriteriaChecked(application,currentRow);
                  criteria_fail_reasons=[]
                }
                criteria_fail_reasons=[];
              });
          
          
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

  var criteria_fail_reasons=[];
  function checkIfPassCriterias(designation){
    if(!designation_criteria.includes(designation)){
      console.log("desig fail");
      criteria_fail_reasons.push("Failed Required designation criteria");
      return false;
    }
    console.log("desig pass");
    return true; 
  }
  function checkExperienceCriteria(join_date){
    var joinDate= new Date(join_date);  
    var year=joinDate.getFullYear();
  
    var month=joinDate.getMonth();
    
    var day=joinDate.getDay();
  
    var joindateAndexp=new Date(year+parseInt(experience_criteria),month,day);
   
    console.log("Join Date after exp",joindateAndexp);

    var todayDate= new Date();
    
    if(joindateAndexp>todayDate){
      console.log("exp fail");
      criteria_fail_reasons.push("Minimum experience criteria failed");
      return false;
    }
    else{
      console.log("exp pass");
      return true;
    }

  }
  function checkRetirementCriteria(retire_date){
    var retireDate= new Date(retire_date); 
    var todayDate= new Date(); 
    var year=todayDate.getFullYear();
  
    var month=todayDate.getMonth();
    
    var day=todayDate.getDay();
  
    var todayDateAndinput=new Date(year+parseInt(retirement_criteria),month,day);
   
    console.log("Join Date after exp",todayDateAndinput);

    if(todayDateAndinput>retireDate){
      console.log("retirement fail");
      criteria_fail_reasons.push("Minimum retirement criteria failed");
      return false;
    }
    else{
      console.log("retirement pass");
      return true;

    }

  }


 function applyTrainingAfterCriteriaChecked(application,currentRow){
  console.log("In apply");
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
      fetchRejectedApplications()
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
 function findTrainingStartDate(training_prog_id){
   console.log("inside get start date");
   
   $.getJSON("http://localhost:8080/admin/getTraining/"+training_prog_id,(response)=>{
     var data= response.data;
     console.log(response);
     return data.training_start_date.toString();
   });
   
 }



 fetchRejectedApplications();

 function fetchRejectedApplications() {
  var settings = {
    "url": "http://localhost:8080/admin/getRejectedApplications",
    "method": "GET",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": null,
  };
  $.ajax(settings).done(function (response) {
    populateRejectedApplications(response.data);
  });
}
function populateRejectedApplications(applications){
  $('#rejected_applications_table tbody').empty();
    
    var application_data = '';

    $.each(applications, function (key, value) {
      application_data += '<tr>'
        + '<td>' + value.application_id + '</td>'
        + '<td>' + value.training_prog_id + '</td>'
        + '<td>' + value.name + '</td>'
        + '<td>' + value.reg_no + '</td>'
        + '<td>' + value.designation + '</td>'
        + '<td>' + value.manager + '</td>'
        + '<td>' + value.application_status + '</td>'
        + '<td>' +'<a type="button" title="Message" class="message" onclick="messageApplicant(this)"   style="color: #fc0303;margin: 0 5px;min-height: 30px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="fa fa-envelope" aria-hidden="true"></i></a>'+
                  '<a type="button" title="Update" class="edit" onclick="updateRejectApplication(this)" data-toggle="modal"  data-target="#rejected_application_details" style="color: #FFC107;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE254;</i></a>'+
                  '<a type="button" class="delete"  title="Delete" onclick="deleteApplication(this)" style="color: #E34724;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE872;</i></a>' + '</td>'
        + '</tr>';

    });
    $('#rejected_applications_table').append(application_data);
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
        + '<td>' + value.training_prog_id + '</td>'
        + '<td>' + value.name + '</td>'
        + '<td>' + value.reg_no + '</td>'
        + '<td>' + value.designation + '</td>'
        + '<td>' + value.manager + '</td>'
        + '<td>' + value.application_status + '</td>'
        + '<td>' +'<a type="button" title="Message" class="message" onclick="messageApplicant(this)"   style="color: #fc0303;margin: 0 5px;min-height: 30px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="fa fa-envelope" aria-hidden="true"></i></a>'+
                  '<a type="button" title="Update" class="edit" onclick="updateAcceptApplication(this)" data-toggle="modal"  data-target="#accepted_application_details" style="color: #FFC107;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE254;</i></a>'+
                  '<a type="button" class="delete"  title="Delete" onclick="deleteApplication(this)" style="color: #E34724;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE872;</i></a>' + '</td>'
        + '</tr>';

    });
    $('#applications_table').append(application_data);

  }
  //To populate pending registed applications
  fetchPendingApplications()
  function fetchPendingApplications(){
    $.getJSON("http://localhost:8080/admin/getPendingApplications", function(response){
        populatePendingApplications(response.data);
    })
   
  }
  function populatePendingApplications(data){
    $("#registered_applications_table tbody").empty();
    var trainee_data = '';
    $.each(data, function (key, value) {
      trainee_data += '<tr>';
      trainee_data += '<td>' + value.application_id + '</td>';
      trainee_data += '<td>' + value.training_prog_id + '</td>';
      trainee_data += '<td>' + value.employee_no + '</td>';
      trainee_data += '<td>' + value.reg_no + '</td>';
      trainee_data += '<td>' + value.name + '</td>';
      trainee_data += '<td>' + value.training_apply_date + '</td>';
      trainee_data += '<td>' + value.application_status + '</td>';
      trainee_data += '<td>' + '<a type="button" title="Select" onclick="selectApplication(this)"  style="color: #00b300;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="fa fa-check" aria-hidden="true"></i></a>' +'</td>'; 
      trainee_data += '</tr>';

    });
    $('#registered_applications_table').append(trainee_data);

  }
function selectApplication(x){
  if(experience_criteria=='' || jQuery.isEmptyObject(designation_criteria)){
    swal("ERROR !!!", "Please set the criterias based on the training program.","error");
    return false;
  }
  var currentRow=$(x).closest('tr');
  var applicationId=currentRow.find("td:eq(0)").text(); 
  $.getJSON("http://localhost:8080/admin/findApplication/"+applicationId,(response)=>{
    console.log(response);
    var application= response.data;
    var passStatus=checkIfPassCriterias(application.designation);
    var checkExp=checkExperienceCriteria(application.join_date);
    var checkRetire=checkRetirementCriteria(application.retire_date);
   
    if(passStatus==true && checkRetire ==true && checkExp==true){
           
      swal({
        title: "Congratulations, passed all criteria",
        text: "Application will be Accepted.",
        icon: "success",
        buttons: true,
        dangerMode: true,
      })
        .then((willInsert) => {
          if (willInsert) {
            application.passCriteria=true;
            updatePendingApplications(application)          
            criteria_fail_reasons=[];
          }
          criteria_fail_reasons=[];
        });
      
    }
    else{
           
      swal({
        title: "Some Criterias Failed",
        text: "Application will be rejected.",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
        .then((willInsert) => {
          if (willInsert) {
            application.passCriteria=false;
            application.reason=criteria_fail_reasons.toString();
            updatePendingApplications(application)
            criteria_fail_reasons=[];
          }
          criteria_fail_reasons=[];
        });
    
    
    }

  })

}
function updatePendingApplications(application){
  var settings = {
    "url": "http://localhost:8080/admin/updatePendingApplication",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": JSON.stringify(application),
  };
  $.ajax(settings).done(function (response) {
    console.log(response);
    if(response.status == "success"){
      fetchPendingApplications();
      fetchRejectedApplications();
      fetchAllApplications();
    }
  });
}




 var application_id_store='';
 var reg_id_store='';
 var receiver_store='';
//message Applicant
function messageApplicant(x){
  
  var currentRow=$(x).closest('tr');
  var applicationId=currentRow.find("td:eq(0)").text();
  $.getJSON("http://localhost:8080/admin/findApplication/"+applicationId,(response)=>{
    var data = response.data;
    application_id_store=data.application_id;
    reg_id_store=data.reg_no;
    receiver_store=data.name;
    if(reg_id_store == "Unregistered"){
      emailApplicant(data);
      $("#email_applicant").modal('show');
     
    }
    else{
      application_id_store=currentRow.find("td:eq(0)").text();
      reg_id_store=currentRow.find("td:eq(3)").text();
      receiver_store=currentRow.find("td:eq(2)").text();
      $("#message_applicant").modal('show');   
    } 

  })
   
}
function emailApplicant(data){
  $("#email_address").val(data.applicant_email);
  $("#email_subject").val("Hellow Mr. "+data.name);

}

$("#admin_msg_send").click((event) => {
  event.preventDefault(event);
  if($("#admin_msg_title").val()==''){
    swal("ERROR !!!","Please give a Title",'error');
    return false;
  }
  if($("#admin_msg_subject").val()==''){
    swal("ERROR !!!","Please give a subject",'error');
    return false;
  }
  var loading = new Loading({
    title: ' Please Wait',
    direction: 'hor',
    discription: 'Sending data...',
    defaultApply: true,
  });
  var message={
    mail:document.getElementById("mailCheck").checked,
    application_id:application_id_store,
    recipient_reg_id:reg_id_store,
    recipient_name:receiver_store,
    recipient_read:false,
    title:$("#admin_msg_title").val(),
    subject:$("#admin_msg_subject").val(),
    sender_name:'ADMIN',
    sender_reg_id:'ADMINREG001',
    sender_read: true,
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
function updateRejectApplication(x) {
  var currentRow=$(x).closest('tr');
  var applicationId=currentRow.find("td:eq(0)").text(); 
  $.getJSON('http://localhost:8080/admin/findApplication/'+applicationId,function(response){
    console.log("Applicatiion",response);
    var data=response.data;
    $("#reject_application_id").text(data.application_id);
    $("#reject_name").text(data.name);
    $("#reject_employee_id").text(data.employee_no);
    $("#reject_department_id").text(data.department_no);
    $("#reject_designation").text(data.designation);
    $("#reject_status").text(data.application_status);
    $("#view_reject_reason").text(data.reason);
    $("#reject_regid").text(data.reg_no);


  });

}
function updateAcceptApplication(x) {
  var currentRow=$(x).closest('tr');
  var applicationId=currentRow.find("td:eq(0)").text(); 
  $.getJSON('http://localhost:8080/admin/findApplication/'+applicationId,function(response){
    console.log("Applicatiion",response);
    var data=response.data;
    $("#accept_application_id").text(data.application_id);
    $("#accept_name").text(data.name);
    $("#accept_employee_id").text(data.employee_no);
    $("#accept_department_id").text(data.department_no);
    $("#accept_designation").text(data.designation);
    $("#accept_status").text(data.application_status);
    $("#accept_regid").text(data.reg_no);

  });
}
// To reject a application
$("#rejectbtn_App").click((event)=>{
  event.preventDefault();
  if($("#acceptToreject_reasons").val()==''){
    swal("ERROR !!!", "Please give reasons","error");
    return false;
  }
  var application_id=$("#accept_application_id").text();
  swal({
    title: "Are you sure?",
    text: "You want to select this applicant.",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
    .then((willSelect) => {
      if (willSelect) {
        var loading = new Loading({
          title: ' Please Wait',
          direction: 'hor',
          discription: 'Sending data...',
          defaultApply: true,
        });
        $.getJSON("http://localhost:8080/admin/findApplication/"+application_id, (response)=>{
          if(response.status == "success"){
            var application = response.data;
            application.reason=$("#acceptToreject_reasons").val();
            var settings = {
              "url": "http://localhost:8080/admin/rejectSelectedOrAcceptedApplication",
              "method": "POST",
              "timeout": 0,
              "headers": {
                "Content-Type": "application/json"
              },
              "data": JSON.stringify(application),
            };
            $.ajax(settings).done(function (response) {
              if(response.status == "success"){
                loading.out();
                swal("Success","Application selected Succesfully","success");
                fetchAllApplications();
                fetchRejectedApplications();
                $("#accepted_application_details").modal('hide');
              }
              else{
                alert("IDK");
              }
            });

          }
          else{
            loading.out();
            swal("Error","Something went wrong","error");
          }
        })
      }
    });


})
//To select accepted applications
$("#selectbtn_acceptApp").click((event)=>{
  event.preventDefault();
  var application_id=$("#accept_application_id").text();
  swal({
    title: "Are you sure?",
    text: "You want to select this applicant.",
    icon: "warning",
    buttons: true,
    dangerMode: true,
  })
    .then((willSelect) => {
      if (willSelect) {
        var loading = new Loading({
          title: ' Please Wait',
          direction: 'hor',
          discription: 'Sending data...',
          defaultApply: true,
        });
        $.getJSON("http://localhost:8080/admin/findApplication/"+application_id, (response)=>{
          if(response.status == "success"){
            var application = response.data;
            var settings = {
              "url": "http://localhost:8080/admin/selectAcceptedApplication",
              "method": "POST",
              "timeout": 0,
              "headers": {
                "Content-Type": "application/json"
              },
              "data": JSON.stringify(application),
            };
            $.ajax(settings).done(function (response) {
              if(response.status == "success"){
                loading.out();
                swal("Success","Application selected Succesfully","success");
                fetchAllApplications();
                $("#accepted_application_details").modal('hide');
              }
              else{
                alert("Najanu :) ki hoise moi");
              }
            })

          }
          else{
            loading.out();
            swal("Error","Something went wrong","error");
          }
        })
      }
    });


})

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
            fetchRejectedApplications();
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
      swal("ERROR !!!", "No applications to publish","error")
      return false;
    }
    if ($("#applications_table tbody").children().length !== 0) {
      var loading = new Loading({
        title: ' Please Wait',
        direction: 'hor',
        discription: 'Sending data...',
        defaultApply: true,
      });
      $.getJSON("http://localhost:8080/admin/publishSelectedApplications",(response)=>{
        if(response.status == "success"){
          loading.out();
          swal("SUCCESS","Published Successfully","success");
        }
        else{
          loading.out();
          swal("EROOR","No selected applications available","error");
        }
      })
           
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
    
    $("#prg_trainer").empty();
    $("#prg_id").text(data.training_prg_id);
    $("#prg_description").text(data.training_description);
    $("#prg_name").text(data.training_prg_name);
    $("#prg_type").text(data.training_prg_type);
    $("#prg_start_date").text(data.training_start_date);
    $("#prg_end_date").text(data.training_end_date);
    $("#prg_create_date").text(data.training_create_date);
    $("#prg_display").text(data.display_status);
    $("#prg_status").text(data.training_status);
    // $("#prg_trainer").text(data.training_prg_trainer_id);
    let trairsArray=data.training_prg_trainer_id.split(',');
    ul = document.createElement('ul');
    document.getElementById('prg_trainer').appendChild(ul);
    trairsArray.forEach(function (item) {
      let li = document.createElement('li');
      ul.appendChild(li);
      li.innerHTML += item;
    });
    
    // var trairsArray=data.training_prg_trainer_id.split(',');
    // console.log(trairsArray);
    
    // var list=trairsArray.map(trainer => {
    //   `<li>${trainer}</li>`
    // })
    // console.log(list);
    // $("#prg_trainer").append(list);
    // $.each(trairsArray,function(key,value){
    //   console.log(value,key);
    //   var list = document.createElement('li');
    //   list.innerHTML(value);
    //   ul_list.append(list);
      
    // })   
    

    // create ul element and set the attributes.
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




// Global variable for admin regId;
var admin_reg_id='ADMINREG001';
//Notifications
getNotifications();
function getNotifications(){
  var trainee_reg_id='ADMINREG001';
  $.getJSON("http://localhost:8080/getTheNotificationbyReg/"+trainee_reg_id, function(response){
    console.log(response);
    fillNoyifications(response.data);
  })
}
function fillNoyifications(list){
  $("#admin_notifications").empty();
  var data='';
  $.each(list,(key,value)=>{
    if(value.sender_reg_id==admin_reg_id){
      data+='<div type="button" onclick="displaySentMsg('+value.id+')"  class="alert alert-light notification" data-toggle="modal" data-target="#admin_sent_msg_details">'
            +'<div class="row"><div class="col-8" class="float-left"><i class="fa fa-envelope" aria-hidden="true"></i> '      
            + value.title+'</div><div class="col-2"><p><b>Time:</b> '
            + value.notificatio_create_time+'</p></div><div class="col-2"><p><b>Date: </b>'
            + value.notificatio_create_date+'</p></div></div></div>';
    }
    else{
      if (value.recipient_read  == true) {
        data += '<div type="button" onclick="displayMsg(' + value.id + ')"  class="alert alert-success notification" data-toggle="modal" data-target="#toAdmin_msg_details">'
          + '<div class="row"><div class="col-8" class="float-left"><i class="fa fa-envelope" aria-hidden="true"></i> '
          + value.title + '</div><div class="col-2"><p><b>Time:</b> '
          + value.notificatio_create_time + '</p></div><div class="col-2"><p><b>Date: </b>'
          + value.notificatio_create_date + '</p></div></div></div>';
      }
      else {
        data += '<div type="button" onclick="displayMsg(' + value.id + ')"  class="alert alert-danger notification" data-toggle="modal" data-target="#toAdmin_msg_details">'
          + '<div class="row"><div class="col-8" class="float-left"><i class="fa fa-envelope" aria-hidden="true"></i><b> '
          + value.title + '</b></div><div class="col-2"><p><b>Time:</b> '
          + value.notificatio_create_time + '</p></div><div class="col-2"><p><b>Date: </b>'
          + value.notificatio_create_date + '</p></div></div></div>';
      }
    }
    
      
    
  })
  
  $("#admin_notifications").append(data);

}
function displaySentMsg(x){
  console.log("Notification Id",x);
  $.getJSON("http://localhost:8080/getTheNotification/" + x, (response) => {
    console.log(response);
    var data = response.data;
    reg_id = data.trainee_reg_id;
    $("#send_msg_to").text(data.recipient_name);
    $("#send_msg_sub").text(data.subject);
    $("#send_msg_ref_app_id").text(data.application_id);
    $("#send_msg_time").text(data.notificatio_create_time);
    $("#send_msg_date").text(data.notificatio_create_date);
  });

}
function displayMsg(x){
  console.log("Msg Id:",x);
  $.getJSON("http://localhost:8080/getTheNotification/" + x, (response) => {
    console.log(response);
    var data = response.data;
    fillViewMessageModal(data);
    
  });
  //to update the notification as read
  var settings1 = {
    "url": "http://localhost:8080/updateAdminNotification/" + x,
    "method": "GET",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
  };
  $.ajax(settings1).done(function (response) {
    console.log("Inside Update particuler msg as read");
    getNotifications();
  });
}
function fillViewMessageModal(data) {
  $("#msg_from").text(data.sender_name);
  $("#the_msg").text(data.subject);
  $("#msg_ref_app_id").text(data.application_id);
  $("#msg_time").text(data.notificatio_create_time);
  $("#msg_date").text(data.notificatio_create_date);
}
// //To reply a msg
// $("#msg_rly_send").click(() => {
//   var reg_id='';
//   $.getJSON("http://localhost:8080/getTheNotification/" + x, (response) => {
//     console.log(response);
//   });
//   var reply = {
//     senderSignature: "ADMIN",
//     mail: false,
//     application_id: $("#msg_ref_app_id").text(),
//     trainee_reg_id: $("#view_regid").text(),
//     receiver:  $("#msg_from").text(),
//     title: $("#msg_rly_title").val(),
//     subject: $("#msg_rly_subject").val(),
//     admin_read: true,
//     trainee_read: false
//   }
//   console.log(reply);
//   var settings = {
//     "url": "http://localhost:8080/postNotification",
//     "method": "POST",
//     "timeout": 0,
//     "headers": {
//       "Content-Type": "application/json"
//     },
//     "data": JSON.stringify(reply),
//   };
//   $.ajax(settings).done(function (response) {
//     console.log(response);
//     if (response.status == "success") {
//       $("#notification_details_modal").modal('hide');
//       updateNotifications(reply.trainee_reg_id);
//       swal("SUCCESS ", "Message send successfully", "success");
//     }
//   });
// })



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


























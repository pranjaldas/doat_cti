$(document).ready(() => {
  //to hide the alert box
  $("#success-alert").hide();
  $("#failure-alert").hide();
 //to set interval of slideshow
  $('.carousel').carousel({
    interval: 1000
  })


  populateAdvertisement();
  function populateAdvertisement() {
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
        trainee_data += '<td>' + '<b>' + "Subject: " + '</b>' + value.training_description + " To apply click " + '<button type="button" id="apply"  class="btn btn-link" data-toggle="modal" data-target="#modalApplyTraining">here</button>' + '</td>';
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



  //Registration of Trainee 

  fetchDepartment();
  function fetchDepartment(){
    var settings = {
      "url": "http://localhost:8080/getDept",
      "method": "GET",
      "timeout": 0,
      "headers": {
        "Content-Type": "application/json"
      },
      "data": null,
    };
    $.ajax(settings).done(function (response) {
        console.log(response);
        populateDepartment(response.data);
    });
    
  }
  function populateDepartment(data){
    console.log("From populate ",data);
    var deptDropDown=document.getElementById("department_name");
    //Add the Options to the DropDownList.
    for (var i = 0; i < data.length; i++) {
      var option = document.createElement("OPTION");

      //Set Customer Name in Text part.
      option.innerHTML = data[i].department_name;

      //Set CustomerId in Value part.
      option.value = data[i].department_id;

      //Add the Option element to DropDownList.
      deptDropDown.options.add(option);
    }

  }
  populateEmpIdAutoComplete();
  function populateEmpIdAutoComplete() {
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
      var empIdsuggestions = [];
      var i = 0;
      $.each(response.data, function (key, value) {
        empIdsuggestions[i] = value.employee_id;
        i++;
      });
      console.log(empIdsuggestions);
      //now the magic begins
      $("#emp_id").autocomplete({
        source: empIdsuggestions

      }, {
        autoFocus: true,
        delay: 0,
        minlength: 1
      });

    });
  }



// // Validation of registration

  var myInput = document.getElementById("psw");
//   var letter = document.getElementById("letter");
//   var capital = document.getElementById("capital");
//   var number = document.getElementById("number");
//   var length = document.getElementById("length");
  var register=$("#registerButton");
  

//   // When the user clicks on the password field, show the message box
  myInput.onfocus = function () {
    document.getElementById("message").style.display = "block";
  }

//   // When the user clicks outside of the password field, hide the message box
  myInput.onblur = function () {
    document.getElementById("message").style.display = "none";
  }

//   // When the user starts to type something inside the password field
  myInput.onkeyup = function () {
    // Validate lowercase letters
    var lowerCaseLetters = /[a-z]/g;
    if (myInput.value.match(lowerCaseLetters)) {
      letter.classList.remove("invalid");
      letter.classList.add("valid");
    } else {
      letter.classList.remove("valid");
      letter.classList.add("invalid");
    }

//     // Validate capital letters
    var upperCaseLetters = /[A-Z]/g;
    if (myInput.value.match(upperCaseLetters)) {
      capital.classList.remove("invalid");
      capital.classList.add("valid");
    } else {
      capital.classList.remove("valid");
      capital.classList.add("invalid");
    }
 // Validate numbers
    var numbers = /[0-9]/g;
    if (myInput.value.match(numbers)) {
      number.classList.remove("invalid");
      number.classList.add("valid");
    } else {
      number.classList.remove("valid");
      number.classList.add("invalid");
    }

    // Validate length
    if (myInput.value.length >= 8) {
      length.classList.remove("invalid");
      length.classList.add("valid");
    } else {
      length.classList.remove("valid");
      length.classList.add("invalid");
    }
  }

//   var psw = document.getElementById("psw")
//     , conpassword = document.getElementById("conpassword");

//   function validatePassword() {
//     if (psw.value != conpassword.value) {
//       conpassword.setCustomValidity("Passwords Don't Match");
//     } else {
//       conpassword.setCustomValidity('');
//     }
//   }

//   psw.onchange = validatePassword;
//   conpassword.onkeyup = validatePassword;


 register.click(function (event) {
   event.preventDefault();
    
    var data=$("#emp_id").val();
    var data1=$("#fname").val();
    var data2=$("#department_name").val();
    var data3=$("#phone").val();
    var data4=$("#email").val();
    var data5=$("#psw").val();
    var data6=$("#conpassword").val();

    if (data2 == '') {
      swal("ERROR !!!", "Please select your department...", "error");
      return false;
    }
    if (data == '') {
      swal("ERROR !!!", "Please select your unique EmployeeId...", "error");
      return false;
    }
    if (data1 == '') {
      swal("ERROR !!!", "Please enter your full name...", "error");
      return false;
    }
    
    if (data3 == '') {
      swal("ERROR !!!", "Please enter your phone number...", "error");
      return false;
    }
    if (data4 == '') {
      swal("ERROR !!!", "Please enter your email address...", "error");
      return false;
    }
    if (data5 == '') {
      swal("ERROR !!!", "Please give a valid password as suggested...", "error");
      return false;
    }
    if (data5 != data6) {
      swal("ERROR !!!", "Password do not matches...", "error");
      return false;
    }
    // to view the loading animation
    var loading = new Loading({
      title: ' Please Wait',
      direction: 'hor',
      discription: 'Sending data...',
      defaultApply: true,
    });
   
    let registration_object = {
      reg_id:"REGNO00978WER",
      name: data1,
      department_no:data2,
      employee_no: data,
      phone:data3,
      email:data4,
      password: data5
     

    }
    console.log(registration_object);
    var settings = {
      "url": "http://localhost:8080/postRegistration",
      "method": "POST",
      "timeout": 0,
      "headers": {
        "Content-Type": "application/json"
      },
      "data": JSON.stringify(registration_object),
    };
    $.ajax(settings).done(function (response) {
      console.log(response);
      if (response.status == "success") {
        loading.out();
        $("#success-alert").fadeTo(3000, 500).slideUp(500, function(){
          $("#success-alert").slideUp(500);
          $("#register_employee")[0].reset();
        });
        
       
      }
      else{
        loading.out();    
        $("#failure-alert").fadeTo(3000, 500).slideUp(500, function(){
          $("#failure-alert").slideUp(500);
        
        });
      }
    });


  });


// For event handler

  mobiscroll.settings = {
    theme: 'windows',
    themeVariant: 'light',
    lang: 'en'
  };

  $(function () {

    var inst = $('#demo-desktop-month-view').mobiscroll().eventcalendar({

      lang: 'en',                // Specify language like: lang: 'pl' or omit setting to use default
      theme: 'windows',                        // Specify theme like: theme: 'ios' or omit setting to use default
      themeVariant: 'light',                   // More info about themeVariant: https://docs.mobiscroll.com/4-10-3/eventcalendar#opt-themeVariant
      display: 'inline',                       // Specify display mode like: display: 'bottom' or omit setting to use default
      calendarHeight: 614,                     // More info about calendarHeight: https://docs.mobiscroll.com/4-10-3/eventcalendar#opt-calendarHeight
      view: {                                  // More info about view: https://docs.mobiscroll.com/4-10-3/eventcalendar#opt-view
        calendar: {
          labels: true                     // More info about labels: https://docs.mobiscroll.com/4-10-3/eventcalendar#opt-labels
        }
      },
      onEventSelect: function (event, inst) {  // More info about onEventSelect: https://docs.mobiscroll.com/4-10-3/eventcalendar#event-onEventSelect
        mobiscroll.toast({

          message: event.event.text
        });
      }
    }).mobiscroll('getInst');

    // from test dummy data

      
      var settings = {
        "url": "http://localhost:8080/getEvents",
        "method": "GET",
        "timeout": 0,
        "headers": {
          "Content-Type": "application/json"
        },
        "data": null,
      };
      $.ajax(settings).done(function (response) {
        let eventss=response.data;
        console.log("The events are:",eventss);
        inst.setEvents(eventss);
      });

        
      
      //end dummy data


    });

    





 











  //To display published Trainees
  publishTrainees();
  function publishTrainees() {
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
  
  // function test() {
  //   jQuery.ajax({
  //     url: 'http://localhost:8080/employees',
  //     type: 'get',

  //     "headers": {
  //       "Content-Type": "application/json"
  //     },
  //     success: function (response) {
  //       console.log(response);
  //       return (response.data);

  //     },
  //     error: function () {
  //       return "Hello";
  //     }
  //   });

  // }
  // function testTwo() {
  //   var data = test();
  //   console.log("test2", data);

  // }
  // testTwo();



})

function testMethod(id){
  console.log(id);
}
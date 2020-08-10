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
//to hide the alert box
$("#success-alert").hide();
$("#failure-alert").hide();
$("#login-failure-alert").hide();
$("#used-email-failure-alert").hide();
$("#user-regId-failure-alert").hide();
$("#user-auth-failure-alert").hide();
$("#trainingIdnotValid-failure-alert").hide();
//to set interval of slideshow
$('.carousel').carousel({
  interval: 1000
})

publishTraineesInAdvertisement();
function publishTraineesInAdvertisement() {
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
   
  });
}

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
      trainee_data += '<table class="table table-light table-striped addTable" style="border: 2px solid black ">';
      trainee_data += '<thead>';
      trainee_data += '<tr>';
      trainee_data += '<td>' + '<b>' + "Subject: " + '</b>' + value.training_description + " To apply click here" + '<a type="button"  onclick="applyTraining(this)" class="btn btn-link" data-toggle="modal" data-target="#applyModal"><i style="color:blue" class="fa fa-hand-o-right" aria-hidden="true"></i></a>' + '</td>';
      trainee_data += '</tr>';
      trainee_data += '</thead>';
      trainee_data += '<tbody>';
      trainee_data += '<tr>';
      trainee_data += '<td>' + '<b>' + "Training Program ID: " + '</b>' + '<span class="id">' + value.training_prg_id + '</span>' + '</td>';
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
      trainee_data += '<td>' + '<b>' + "End Date: " + '</b>' + value.training_end_date + '</td>';
      trainee_data += '</tr>';
      trainee_data += '</tbody>';
      trainee_data += '</table>';
    });


    $('#notification').append(trainee_data);

  });

}
//To apply training 
// This piece of code took my whole day but finally I did it, 2020-06-01
var selected_id = "";
function applyTraining(x) {
  selected_id = $(x).parents("table").find(".id").text();
  console.log(selected_id);
}
$("#apply_training_button").click(() => {


  var application = {
    training_prg_id: selected_id,
    username: $("#apply_username").val(),
    password: $("#apply_password").val(),
    reg_id: $("#apply_reg_id").val()
  }
  console.log(application);
  var loading = new Loading({
    title: ' Please Wait',
    direction: 'hor',
    defaultApply: true,
  });
  var settings = {
    "url": "http://localhost:8080/applyTraining",
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
      $("#apply_form")[0].reset();
      $('#applyModal').modal('hide');
      var newDiv = $(document.createElement('div'));
      newDiv.html('Poof! Applied successfully!');
      newDiv.dialog({
        title: "SUCCESS !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
        buttons: [{
          text: "Ok",
          class: "btn btn-md btn-primary",
          click: function () {
            $(this).dialog("close");
          }
        }]
      });
    }
    else if (response.status == "Wrong Input") {
      loading.out();
      $("#user-auth-failure-alert").fadeTo(1000, 500).slideUp(500, function () {
        $("#user-auth-failure-alert").slideUp(500);
      });
    }
    else if (response.status == "Not Found") {
      loading.out();
      $("#user-regId-failure-alert").fadeTo(1000, 500).slideUp(500, function () {
        $("#user-regId-failure-alert").slideUp(500);
      });

    }
    else if (response.status == "Overrite") {
      loading.out();
      $("#apply_form")[0].reset();
      $('#applyModal').modal('hide');
      var newDiv = $(document.createElement('div'));
      newDiv.html('Opps! you have already applied');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
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
      alert("IDK");
    }

  });

})


//Registration of Trainee 
$("#register_employee")[0].reset();
Captcha();
var captcha;
function Captcha() {
  var alpha = ['A', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  var i;
  for (i = 0; i < 6; i++) {
    var a = alpha[Math.floor(Math.random() * alpha.length)];
    var b = alpha[Math.floor(Math.random() * alpha.length)];
    var c = alpha[Math.floor(Math.random() * alpha.length)];
    var d = alpha[Math.floor(Math.random() * alpha.length)];
    var e = alpha[Math.floor(Math.random() * alpha.length)];
    var f = alpha[Math.floor(Math.random() * alpha.length)];
    var g = alpha[Math.floor(Math.random() * alpha.length)];
  }
  captcha = a + "  " + b + "  " + c + "  " + d + "  " + e + "  " + f + "  " + g;
  document.getElementById("mainCaptcha").value = captcha
  console.log("CAptcha is ",captcha.replace(/\s/g, ''));
}

fetchDepartment();
function fetchDepartment() {
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
function populateDepartment(data) {
  console.log("From populate ", data);
  var deptDropDown = document.getElementById("department_name");
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
var empIdsuggestions = [];
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
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");
var register = $("#registerButton");


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

var psw = document.getElementById("psw")
  , conpassword = document.getElementById("conpassword");

function validatePassword() {
  if (psw.value != conpassword.value) {
    conpassword.setCustomValidity("Passwords Don't Match");
  } else {
    conpassword.setCustomValidity('');
  }
}

psw.onchange = validatePassword;
conpassword.onkeyup = validatePassword;

function isValidEmailAddress(emailAddress) {
  var pattern = new RegExp("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
  return pattern.test(emailAddress);
};
register.click(function (event) {
  event.preventDefault();
  var data = $("#emp_id").val();
  var data1 = $("#fname").val();
  var data2 = $("#department_name").val();
  var data3 = $("#phone").val();
  var data4 = $("#email").val();
  var data5 = $("#psw").val();
  var data6 = $("#conpassword").val();
 
  if (data2 == '') {   
    var newDiv = $(document.createElement('div'));
      newDiv.html('Please select your department...');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
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
  if (data == '') {
    var newDiv = $(document.createElement('div'));
      newDiv.html('Please select your unique EmployeeId...');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
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
  if(empIdsuggestions.includes($("#emp_id").val()) ==false){
    var newDiv = $(document.createElement('div'));
      newDiv.html('The entered Employee Id is not Valid...');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
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
  if (data1 == '') {
    var newDiv = $(document.createElement('div'));
    newDiv.html('Please enter your full name...');
    newDiv.dialog({
      title: "ERROR !!!",
      draggable: true,
      modal: true,
      show: { effect: "bounce", duration: 500 },
      hide: { effect: "explode", duration: 500 },
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

  if (data3 == '') {

    var newDiv = $(document.createElement('div'));
    newDiv.html('Please enter your phone number...');
    newDiv.dialog({
      title: "ERROR !!!",
      draggable: true,
      modal: true,
      show: { effect: "bounce", duration: 500 },
      hide: { effect: "explode", duration: 500 },
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
  if (data4 == '') {
    var newDiv = $(document.createElement('div'));
      newDiv.html('Please enter your email address...');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
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
  if (!isValidEmailAddress(data4)) {
    var newDiv = $(document.createElement('div'));
      newDiv.html('Not a valid email address...');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
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
  
  if (data5 == '') {
    var newDiv = $(document.createElement('div'));
      newDiv.html('Please give a valid password as suggested...');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
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
  if (data5 != data6) {
    var newDiv = $(document.createElement('div'));
    newDiv.html('Please do not matches...');
    newDiv.dialog({
      title: "ERROR !!!",
      draggable: true,
      modal: true,
      show: { effect: "bounce", duration: 500 },
      hide: { effect: "explode", duration: 500 },
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
  if(captcha.replace(/\s/g, '')!=$("#conCaptcha").val()){
    var newDiv = $(document.createElement('div'));
    newDiv.html('Captcha Do not matches...');
    newDiv.dialog({
      title: "ERROR !!!",
      draggable: true,
      modal: true,
      show: { effect: "bounce", duration: 500 },
      hide: { effect: "explode", duration: 500 },
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

  // to view the loading animation
  var loading = new Loading({
    title: ' Please Wait',
    direction: 'hor',
    discription: 'Sending data...',
    defaultApply: true,
  });

  let registration_object = {
    name: data1,
    department_no: data2,
    employee_no: data,
    phone: data3,
    email: data4,
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
      Captcha();
      $("#success-alert").fadeTo(3000, 500).slideUp(500, function () {
        $("#success-alert").slideUp(500);
        $("#register_employee")[0].reset();
      });


    }
    else if (response.status == "emailNotSendfailure") {
      loading.out();
      $("#failure-alert").fadeTo(3000, 500).slideUp(500, function () {
        $("#failure-alert").slideUp(500);

      });
    }
    else {
      loading.out();
      $("#used-email-failure-alert").fadeTo(3000, 500).slideUp(500, function () {
        $("#failure-alert").slideUp(500);

      });
    }
  });


});
//Calendar download
populateReleasedCaleders();
function populateReleasedCaleders(){
  $.getJSON( "http://localhost:8080/getMonthlyCaleders", function(response){
    console.log("All calenders", response);
    fillCalendarTable(response.data);
  })
}
function fillCalendarTable(data){
  var calendar_row = '';
  var i=1;
  $.each(data, function (key, value){
    
    calendar_row += '<tr>'
           + '<td>' + i + '</td>'
           + '<td>' + value.month + '</td>'
           + '<td align="center"><button onclick="download(this)"><i class="fa fa-file-pdf-o" style="font-size:36px;color:red"></button></i>'+'</td>'
           + '</tr>';
    i++;      
  })
  $("#calendar_download").append(calendar_row);

}

function download(x) {
  var index = $(x).closest('tr');
  var col1 = index.find("td:eq(1)").text();

  var monthArray = col1.split(" ", 1);
  var monthValue = monthArray.toString();

  var map = new Map([['January', 01], ['February', 02], ['March', 03], ['April', 04], ['May', 05],
  ['June', 06], ['July', 07], ['August', 08], ['September', 09], ['October', 10], ['November', 11], ['December', 12]]);
  var month = map.get(monthValue);
  console.log(month);

  $.getJSON('http://localhost:8080/testNative/' + month, (response) => {
    console.log(response);
    var json = response.data;
    // Convert JSON to HTML Table.
    var table = document.createElement("TABLE");
    table.border = "1";

    //Add the header row.
    var row = table.insertRow(-1);
    for (var i = 0; i < Object.keys(json[0]).length; i++) {
      var headerCell = document.createElement("TH");
      headerCell.innerHTML = Object.keys(json[0])[i];
      row.appendChild(headerCell);
    }

    //Add the data rows.
    for (var i = 0; i < Object.keys(json).length; i++) {
      row = table.insertRow(-1);
      for (var j = 0; j < Object.keys(json[0]).length; j++) {
        var cell = row.insertCell(-1);
        cell.innerHTML = json[i][Object.keys(json[0])[j]];
      }
    }
    table.setAttribute("class", "table table-striped  table-bordered");

    var title = document.createElement("h1");               // Create a <p> element
    title.innerText = "Calendar " + col1;

    //Append the Table to the HTML DIV.
    var dvTable = document.getElementById("dvTable");
    dvTable.innerHTML = "";
    dvTable.appendChild(title);
    dvTable.appendChild(table);
    // Convert Table to PDF.
    html2canvas(document.getElementById('dvTable'), {
      onrendered: function (canvas) {
        var data = canvas.toDataURL();
        var docDefinition = {
          content: [{
            image: data,
            width: 500
          }]
        };
        pdfMake.createPdf(docDefinition).download(col1 + '.pdf');

        //Remove the Table.
        dvTable.innerHTML = "";
      }
    });
  })






  //   var json = [{
  //     "Training ID": "TRAI34HJK",
  //     "Training Type": "Induction",
  //     "Start Date": "2020-05-06",
  //     "End Date": "2020-06-12",
  //     "Trainer Name":"Ramesh Goyel",
  // }, {
  //     "Training ID": "TRAI345yu",
  //     "Training Type": "Service Training",
  //     "Start Date": "2020-05-12",
  //     "End Date": "2020-06-29",
  //     "Trainer Name":"Phunsukh Wangru",
  // },{
  //     "Training ID": "TRAI34HJK",
  //     "Training Type": "Demo Training",
  //     "Start Date": "2020-05-01",
  //     "End Date": "2020-06-12",
  //     "Trainer Name":"Ramesh Goyel",
  // }];



}



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


// Login  code 
function loginUser(){
  if (localStorage.getItem("user") === null) {
    $("#myLoginModal").modal('show');
  }
  else{
    var user=$.parseJSON(localStorage.getItem('user'));
    console.log(user);
    login(user);
 
  }
 
};
$("#login").click(() => {
 
  var user = {
    username: $("#username").val(),
    password: $("#password").val()
  }
  login(user);
})
function login(user){
  var loading = new Loading({
    title: ' Please Wait,Logging you in',
    direction: 'hor',
    defaultApply: true,
  });
  var settings = {
    "url": "http://localhost:8080/login",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": JSON.stringify(user),
  };
  $.ajax(settings).done(function (response) {

    if (response.status == "success") {
      localStorage.setItem('user', JSON.stringify(user));
      loading.out();
      console.log(response);
      fillUserProfile(response.data);
      var data = response.data;
      fillprofileViewApplicationTable(data.applications);
      updateNotifications(data.reg_id);
      $("#profile").show();
      $("#home").hide();
      $('#myLoginModal').modal('hide');
      toastr.success('You Logged in Succesfully.');

      if (response.unread_msg !== 0) {
        setTimeout(() => {
          toastr.info('You have ' + data.unread_msg + ' new Notifications unread.');
        }, 2000);
      }

    }
    else {
      loading.out();
      $("#login-failure-alert").fadeTo(1000, 500).slideUp(500, function () {
        $("#login-failure-alert").slideUp(500);
      });
    }

  });

}
//To view notifications

function updateNotifications(reg_id) {
  console.log(reg_id);

  var settings = {
    "url": "http://localhost:8080/getTheNotificationbyReg/" + reg_id,
    "method": "GET",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
  };
  $.ajax(settings).done(function (response) {
    if (response.status == "success") {
      notificationFill(response.data,reg_id);
    }
  });


}


function notificationFill(list,reg_id) {
  $("#noti_body").empty();
  console.log('noti', list);

  var data = '';
  $.each(list, (key, value) => {
    var sender = $("#view_username").text();
    console.log("Sender is:", sender);
    if (value.sender_reg_id !== reg_id) {
      if (value.recipient_read == true) {
        data += '<div type="button" onclick="alerting(' + value.id + ')"  class="alert alert-success notification" data-toggle="modal" data-target="#notification_details_modal">'
          + '<div class="row"><div class="col-8" class="float-left"><i class="fa fa-envelope" aria-hidden="true"></i> '
          + value.title + '</div><div class="col-2"><p><b>Time:</b> '
          + value.notificatio_create_time + '</p></div><div class="col-2"><p><b>Date: </b>'
          + value.notificatio_create_date + '</p></div></div></div>';
      }
      else {
        data += '<div type="button" onclick="alerting(' + value.id + ')"  class="alert alert-danger notification" data-toggle="modal" data-target="#notification_details_modal">'
          + '<div class="row"><div class="col-8" class="float-left"><i class="fa fa-envelope" aria-hidden="true"></i><b> '
          + value.title + '</b></div><div class="col-2"><p><b>Time:</b> '
          + value.notificatio_create_time + '</p></div><div class="col-2"><p><b>Date: </b>'
          + value.notificatio_create_date + '</p></div></div></div>';
      }

    } else {
      data += '<div type="button" onclick="sendMsgDetails(' + value.id + ')"  class="alert alert-secondary notification" data-toggle="modal" data-target="#view_send_msg_modal">'
        + '<div class="row"><div class="col-8" class="float-left"><i class="fa fa-envelope" aria-hidden="true"></i> '
        + value.title + '</div><div class="col-2"><p><b>Time:</b> '
        + value.notificatio_create_time + '</p></div><div class="col-2"><p><b>Date: </b>'
        + value.notificatio_create_date + '</p></div></div></div>';

    }
  })

  $("#noti_body").append(data);

}
function sendMsgDetails(i) {
  console.log(i);
  $.getJSON("http://localhost:8080/getTheNotification/" + i, (response) => {
    console.log(response);
    var data = response.data;
    $("#send_msg_to").text(data.recipient_name);
    $("#send_msg_sub").text(data.subject);
    $("#send_msg_ref_app_id").text(data.application_id);
    $("#send_msg_time").text(data.notificatio_create_time);
    $("#send_msg_date").text(data.notificatio_create_date);

  });
}

function alerting(i) {
  var reg_id = '';
  console.log(i);
  $.getJSON("http://localhost:8080/getTheNotification/" + i, (response) => {
    console.log(response);
    var data = response.data;
    reg_id = data.recipient_reg_id;
    fillViewMessageModal(response.data);
  });
  //to update the notification as read
  var settings1 = {
    "url": "http://localhost:8080/updateNotification/" + i,
    "method": "GET",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
  };
  $.ajax(settings1).done(function (response) {
    console.log("After Update :", response.data);
    updateNotifications(reg_id);
  });

}
function fillViewMessageModal(data) {
  $("#msg_from").text(data.sender_name);
  $("#the_msg").text(data.subject);
  $("#msg_ref_app_id").text(data.application_id);
  $("#msg_from_reg_id").text(data.sender_reg_id);
  $("#msg_time").text(data.notificatio_create_time);
  $("#msg_date").text(data.notificatio_create_date);
}
//To reply a msg
$("#msg_rly_send").click(() => {
  var reply = {
    sender_name: $("#view_regname").text(),
    mail: false,
    application_id: $("#msg_ref_app_id").text(),
    sender_reg_id: $("#view_regid").text(),
    recipient_reg_id: $("#msg_from_reg_id").text(),
    title: $("#msg_rly_title").val(),
    subject: $("#msg_rly_subject").val(),
    recipient_read: false,
    sender_read: true
  }
  console.log(reply);
  var settings = {
    "url": "http://localhost:8080/postNotification",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": JSON.stringify(reply),
  };
  $.ajax(settings).done(function (response) {
    console.log(response);
    if (response.status == "success") {
      $("#notification_details_modal").modal('hide');
      updateNotifications(reply.sender_reg_id);
      var newDiv = $(document.createElement('div'));
      newDiv.html('Message send successfully...');
      newDiv.dialog({
        title: "SUCCESS !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 800 },
        hide: { effect: "explode", duration: 800 },
        buttons: [{
          text: "Ok",
          class: "btn btn-md btn-primary",
          click: function () {
            $(this).dialog("close");
          }
        }]
      });
      
    }
  });
})







//To view Applied Trainings
function fillprofileViewApplicationTable(list) {
  console.log(list);
  $('#profile_applications_table tbody').empty();

  var applications_data = '';
  var i = 1;
  $.each(list, function (key, value) {
    console.log(value)


    applications_data += '<tr class="text-secondary text-center">'
      + '<td>' + i + '</td>'
      + '<td>' + value.application_id + '</td>'
      + '<td>' + value.training_prog_id + '</td>'
      + '<td>' + value.training_apply_date + '</td>'
      + '<td>' + value.application_status + '</td>'
      + '<td>' + '<a type="button" class="edit text-danger" title="Raise Objection"  onclick="raiseObjection(this)" style="color: #f20202;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;" ><img src="img/object.png" style="width: 28px; height: 28px" /></i></a>&nbsp;&nbsp;' 
               + '<a type="button" class="edit text-primary" title="Upload Document" data-toggle="modal" data-target="#upload_document_modal" style="color: #FFC107;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;" ><img src="img/upload.png" style="width:22px;height: 22px" /></a>&nbsp;&nbsp;' 
               + '<a type="button" id="'+value.application_id+'"  class="applicationInfo text-success" title="Application Details" data-toggle="modal" data-target="#application_details_update"  style="color: #FFC107;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;" ><img src="img/info.png" style="width:22px;height: 22px" /></a>'+'</td>'
      + '</tr>';
    i++;
  });
  $('#profile_applications_table').append(applications_data);

}
//Fill Application full Details

$("body").on('click','.applicationInfo',function(){
  let application_id=$(this).attr('id');
  $.getJSON("http://localhost:8080/user/applicationDetails/"+application_id,(response)=>{
      console.log(response);
      let data=response.data;
      $("#app_id_view").text(data.application_id);
      $("#app_apply_date").text(data.training_apply_date);
      $("app_status_view").text(data.application_status);
      $("#app_note_view").text(data.note);
      $("#training_id_view").text(data.training_prog_id);
      $("#training_type_view").text(data.training_prg_type);
      $("#training_start_view").text(data.training_start_date);
      $("#training_end_view").text(data.training_end_date);
      $("#view_document_description").text(data.document_detail);
     

  })
})


//To Raise raiseObjection
var objection_applications=[];
var objection_from='';

function raiseObjection(x){
  objection_applications=[];
  objection_from='';
  var loading = new Loading({
    title: ' Please Wait',
    direction: 'hor',
    defaultApply: true,
  });

  var currentRow = $(x).closest('tr');
  var applicationId = currentRow.find("td:eq(1)").text();
  var training_prg_id = currentRow.find("td:eq(2)").text();
  $.getJSON("http://localhost:8080/user/raiseObjection/" + applicationId, (response) => {
    if (response.status == "success") {
      loading.out();
      console.log(response);
      objection_applications = response.data;
      objection_from = applicationId;
      fillObjectionModal(response.data, training_prg_id);
      $("#objection_list_modal").modal('show');

    }
    else if (response.status == "not found") {
      loading.out();
      var newDiv = $(document.createElement('div'));
      newDiv.html('Not a valid application id');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
        buttons: [{
          text: "Ok",
          class: "btn btn-md btn-primary",
          click: function () {
            $(this).dialog("close");
          }
        }]
      });
      
    }
    else if (response.status == "unauthorised") {
      loading.out();
      var newDiv = $(document.createElement('div'));
      newDiv.html('Sorry You are not authorised to raise objection');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 400 },
        hide: { effect: "explode", duration: 500 },
        buttons: [{
          text: "Ok",
          class: "btn btn-md btn-primary",
          click: function () {
            $(this).dialog("close");
          }
        }]
      });
      
    }
    else if (response.status == "no juniors applied") {
      loading.out();
      var newDiv = $(document.createElement('div'));
      newDiv.html('There are no any juniors that applied for this training program');
      newDiv.dialog({
        title: "ERROR",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
        buttons: [{
          text: "Ok",
          class: "btn btn-md btn-primary",
          click: function () {
            $(this).dialog("close");
          }
        }]
      });
     
    }
    else if (response.status == "no juniors selected") {
      loading.out();
      var newDiv = $(document.createElement('div'));
      newDiv.html('There are no any juniors that selected for this training program');
      newDiv.dialog({
        title: "ERROR",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 400 },
        hide: { effect: "explode", duration: 500 },
        buttons: [{
          text: "Ok",
          class: "btn btn-md btn-primary",
          click: function () {
            $(this).dialog("close");
          }
        }]
      });

    }
  });
}
function fillObjectionModal(applications,prg_id){
  $("#objection_list tbody").empty();
  $("#objection_training_id").text(prg_id);
  var applications_data= '';
  var i= 1;
  $.each(applications, function (key, value){
    applications_data += '<tr>'
    + '<td>' + i + '</td>'
    + '<td>' + value.application_id + '</td>'
    + '<td>' + value.name + '</td>'
    + '</tr>';
    i++;
  })
  $("#objection_list").append(applications_data);

}
$("#send_objection").click(() => {
  var reg_id=$("#view_regid").text();
  console.log(objection_applications);
  $.each(objection_applications,(key,value) => {
    var settings = {
      "url": "http://localhost:8080/user/sendObjectionNotification/" + objection_from,
      "method": "POST",
      "timeout": 0,
      "headers": {
        "Content-Type": "application/json"
      },
      "data": JSON.stringify(value),
    };
    $.ajax(settings).done(function (response) {
      if(response.status == "sent objection"){
        updateNotifications(reg_id);
        console.log(response.data);
      }

    });

  });
  
 
  
})



function fillUserProfile(data) {

  $("#view_regid").text(data.reg_id);
  $("#view_regname").text(data.name);
  $("#view_username").text(data.email);
  $("#view_useremail").text(data.email);
  $("#view_userphone").text(data.phone);
  $("#view_depid").text(data.department_no);
  $("#view_dep_name").text(data.department_name);
  $("#view_dept_loc").text(data.department_loc);
  $("#view_empid").text(data.employee_id);
  $("#view_name").text(data.name);
  $("#view_join_date").text(data.employee_join_date);
  $("#view_desig").text(data.designation);
  $("#view_region").text(data.region);
  $("#view_ddo_code").text(data.ddo_code);

}
//to Update Registration

function fillRegistrationModal() {
  var regid = $("#view_regid").text();
  $("#editReg_registration_id").val(regid);
  $("#editReg_name").val($("#view_regname").text());
  $("#editReg_username").val($("#view_username").text());
  $("#editReg_phone").val($("#view_userphone").text());
  $("#editReg_email").val($("#view_useremail").text());

}
$("#saveRegUpdates").click(() => {
  var regId = $("#editReg_registration_id").val();
  var registrationUpdateDTO = {
    reg_id: $("#editReg_registration_id").val(),
    name: $("#editReg_name").val(),
    email: $("#editReg_email").val(),
    username: $("#editReg_username").val(),
    phone: $("#editReg_phone").val(),
    password: $("#editReg_password").val()
  }
  var settings = {
    "url": "http://localhost:8080/user/updateRegistration/" + regId,
    "method": "PUT",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": JSON.stringify(registrationUpdateDTO),
  };
  $.ajax(settings).done(function (response) {
    console.log("Updated registration", response);
    var data = response.data;
    if (response.status == "success") {
      $("#view_regid").text(data.reg_id);
      $("#view_regname").text(data.name);
      $("#view_username").text(data.email);
      $("#view_useremail").text(data.email);
      $("#view_userphone").text(data.phone);
    }


  });


})
autocompleteTrainingID();
function autocompleteTrainingID() {
  $.getJSON("http://localhost:8080/trainings", function (response) {
    console.log("trainers are", response)

    //to fill the array
    var trainerSuggestions = [];
    var i = 0;
    $.each(response.data, function (key, value) {
      trainerSuggestions[i] = value.training_prg_id;
      i++;
    });
    console.log("autocomplete", trainerSuggestions);
    //now the magic begins
    $("#profile_apply").autocomplete({
      source: trainerSuggestions

    }, {
      autoFocus: true,
      delay: 0,
      minlength: 1
    });

  })

}
$("#profile_apply_training_button").click(() => {

  var loading = new Loading({
    title: ' Please Wait',
    direction: 'hor',
    defaultApply: true,
  });

  let application = {
    reg_no: $("#view_regid").text(),
    employee_no: $("#view_empid").text(),
    name: $("#view_name").text(),
    department_no: $("#view_depid").text(),
    designation: $("#view_desig").text(),
    DDO_CODE: $("#view_ddo_code").text(),
    training_prog_id: $("#profile_apply").val(),
    publish: false,
    application_status: 'pending',

  }
  console.log(application)
  var settings = {
    "url": "http://localhost:8080/user/applyTraining",
    "method": "POST",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
    "data": JSON.stringify(application),
  };
  $.ajax(settings).done(function (response) {
    console.log(response);
    if (response.status === "success") {
      var newDiv = $(document.createElement('div'));
      newDiv.html('Poof! Applied successfully...');
      newDiv.dialog({
        title: "SUCCESS !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
        buttons: [{
          text: "Ok",
          class: "btn btn-md btn-primary",
          click: function () {
            $(this).dialog("close");
          }
        }]
      });
      updateApplicationsOfTrainee();
      $("#applyTrainingfromProfileModal").modal('hide');
      $("#profile_apply").val('');
      loading.out();
      console.log("I m executing")
    }
    else if (response.status === "Overrite") {
      loading.out();
      var newDiv = $(document.createElement('div'));
      newDiv.html('You have already applied...');
      newDiv.dialog({
        title: "ERROR !!!",
        draggable: true,
        modal: true,
        show: { effect: "bounce", duration: 500 },
        hide: { effect: "explode", duration: 500 },
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
      loading.out();
      $("#trainingIdnotValid-failure-alert").fadeTo(1000, 500).slideUp(500, function () {
        $("#trainingIdnotValid-failure-alert").slideUp(500);
      });
    }

  });


})

function updateApplicationsOfTrainee() {
  console.log("inside");
  var reg_no = $("#view_regid").text();
  console.log(reg_no);
  var settings = {
    "url": "http://localhost:8080/admin/findApplicationsByregID/" + reg_no,
    "method": "GET",
    "timeout": 0,
    "headers": {
      "Content-Type": "application/json"
    },
  };
  $.ajax(settings).done(function (response) {
    console.log("his applications", response);
    fillprofileViewApplicationTable(response.data);
  })

}


// For event handler
var calendarEl = document.getElementById('view_calendar');
var calendar = new FullCalendar.Calendar(calendarEl, {
  plugins: ['interaction', 'dayGrid', 'timeGrid', 'list'],
  header: {
    left: 'prev,next today',
    center: 'title',
    right: 'dayGridMonth,listWeek'
  },
  defaultDate: '2020-05-27',
  navLinks: true, // can click day/week names to navigate views

  weekNumbers: true,
  weekNumbersWithinDays: true,
  weekNumberCalculation: 'ISO',

  editable: true,
  eventLimit: true, // allow "more" link when too many events
  events: [
    {
      title: 'All Day Event',
      start: '2020-02-01'
    },
    {
      title: 'Long Event',
      start: '2020-02-07',
      end: '2020-02-10'
    },
    {
      groupId: 999,
      title: 'Repeating Event',
      start: '2020-02-09T16:00:00'
    },
    {
      groupId: 999,
      title: 'Repeating Event',
      start: '2020-02-16T16:00:00'
    },
    {
      title: 'Conference',
      start: '2020-02-11',
      end: '2020-02-13'
    },
    {
      title: 'Meeting',
      start: '2020-02-12T10:30:00',
      end: '2020-02-12T12:30:00'
    },
    {
      title: 'Lunch',
      start: '2020-02-12T12:00:00'
    },
    {
      title: 'Meeting',
      start: '2020-02-12T14:30:00'
    },
    {
      title: 'Happy Hour',
      start: '2020-02-12T17:30:00'
    },
    {
      title: 'Dinner',
      start: '2020-02-12T20:00:00'
    },
    {
      title: 'Birthday Party',
      start: '2020-02-13T07:00:00'
    },
    {
      title: 'Click for Google',
      url: 'http://google.com/',
      start: '2020-02-28'
    },
    {
      title: 'Conference',
      start: '2020-05-11',
      end: '2020-05-15'
    },
    {
      title: 'Induction Training',
      start: '2020-05-12T10:30:00',
      end: '2020-06-12T12:30:00'
    },
    {
      title: 'Basic Training',
      start: '2020-04-12T12:00:00',
      end: '2020-05-12T12:30:00'
    },
    {
      title: 'Service Training',
      start: '2020-04-12T09:00:00',
      end: '2020-05-12T12:30:00'
    },
    {
      title: 'Click for Google',
      url: 'http://google.com/',
      start: '2020-05-28'
    }
  ]
});

calendar.render();

//Code for User profile
$("#logout").click(() => {  
  var newDiv = $(document.createElement('div'));
  newDiv.html('Are you sure you want to log out???');
  newDiv.dialog({
    title: "Log Out",
    draggable: true,
    modal: true,
    show: { effect: "bounce", duration: 400 },
    hide: { effect: "explode", duration: 500 },
    buttons: [{
      text: "Yes",
      class: "btn btn-md btn-primary",
      click: function () {
        $(this).dialog("close");
        $("#noti_body").empty();
        $("#profile").hide();
        $("#home").show();
        localStorage.removeItem('user');
      }
    },{
      text: "No",
      class: "btn btn-md btn-primary",
      click: function () {
        $(this).dialog("close");
      }
    }]
  });
})
//code to back homepage
$("#backHome").click(() => {
  $("#profile").hide();
  $("#home").show();
  toastr.success('Hi! back to home page.');

})


















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




//End of ready()

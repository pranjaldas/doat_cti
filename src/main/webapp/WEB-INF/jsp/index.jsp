<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="widthdevice-width, initial-scale=1">
    <title>CTI</title>
   <!--bootstrap css framework-->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
   <!--jquery cdn-->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <!-- Popper JS -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <!-- Latest compiled JavaScript -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="css/CTIcss.css">
   <!-- <link rel="stylesheet" href="css/style.css" /> -->

    
</head>

<body>
    <div class="header content">
        <a href ="index.html"><img src="img/assam.png" class="title-logo"  alt="Home"></a>
        <div class="titles">
          <p class="title">Central Trainng Institute (CTI)</p>
          <p class="subtitle">Kar Bhawan,Ganeshguri,Assam-781006</p>
        </div>
      </div>
      <div class="container-fluid"  >
        <nav class="navbar navbar-expand-md bg-primary navbar-dark" >
          
          
            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
              <ul class=" nav nav-tabs" style="padding-left: 20px;">
                <li class="nav-item">
                  <a class="nav-link" href="#home"  data-toggle="tab"><i class="fa fa-home"></i> Home</a>
                </li>
                <li class="nav-item">
                  <a href="#register" class="nav-link" data-toggle="tab"><i class="fa fa-bell"></i>  Register</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#calender" data-toggle="tab"><i class="fa fa-calendar"></i>    Training Calendar</a>
                </li>
                <li class="nav-item">
                  <a href="#selected" class="nav-link " data-toggle="tab"><i class="fa fa-user"></i>   Trainee List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about" data-toggle="tab"><i class="fa fa-info-circle"></i>    About</a>
                  </li>
              </ul>
            </div>
        </nav>
        </div>
    
        <div class="tab-content">
    
    
          <div class="tab-pane fade show active" id="home">
            <div class="container" id="con">
    
              <div class="card" id="whole-card">
          
                <div class="card-header" style="background: rgb(74, 212, 236) ; 
                padding: 5px; 
                border-radius: 20px;" >
                  <h4 align ="center"><marquee><b>NOTIFICATIONS</b></marquee></h4>
              </div>
              <div class="card-body">
    
                  <div id="notification" style="margin-top: 20px; margin-left: 20px;">
                  </div>
                  <script>
                    $(document).ready(function () {
                      
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
                          trainee_data += '<table class="table" style="border: 2px solid black ">';
                          trainee_data += '<thead>';
                          trainee_data += '<tr>';
                          trainee_data +='<td>' + '<b>'+"Subject: "+'</b>' + value.training_description+'</td>';
                          trainee_data +='</tr>';
                          trainee_data += '</thead>';
                          trainee_data += '<tbody>';
                          trainee_data += '<tr>';
                          trainee_data += '<td>' + '<b>'+"Training Program name: "+'</b>' + value.training_prg_name +'</td>';
                          trainee_data += '</tr>';
                          trainee_data += '<tr>';
                          trainee_data += '<td>' + '<b>'+"Training Program Type: " +'</b>'+ value.training_prg_type +  '</td>';                 
                          trainee_data += '</tr>';
                          trainee_data += '<tr>';
                          trainee_data += '<td>' + '<b>'+"Start date: "+'</b>' + value.training_start_date + '</td>';
                          trainee_data += '</tr>';
                          trainee_data += '<tr>';
                          trainee_data += '<td>' + '<b>'+"Duration: " +'</b>' + value.training_prg_duration + '</td>';
                          trainee_data += '</tr>';
                          trainee_data += '</tbody>';
                          trainee_data += '</table>';
                        });
                        
                      
                        $('#notification').append(trainee_data);

                      });

                    });
                  </script>
                 
              
              </div>
        
                </div>
              </div>
          </div>
    
    
    
          <div class="tab-pane" id="register">
             
                <div class="container" id="con">
    
                    <div class="card" id="whole-card">
                        <div class="card-header" style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
                            <h4 align="center"><b>REGISTRATION FORM</b></h4>
                        </div><br><br>
    
                  
                        <div class="card-body">
                  
                            <div class="alert alert-primary">
                                
                                <h7 style="color: #000;"> All Star-Marked (*) fileds are COMPULSORY<br>
                                    Please read all the training related instructions before submitting the form.</h>
                            </div>
                  
                            <p class="card-text">
                  
                                
                  
                                    <!--Register form-->
                  
                                    <div class="form-row" id="register_home">
                  
                  
                                        <div class="col-6 mb-11">
                                            <label for="job_title"><strong>Department Name:</strong><strong><sup
                                                        style="color: red; size: A5">*</sup></strong></label>
                                            <select class="custom-select text-uppercase caste" id="dept_name" name="job_title"
                                                required>
                                                <option>Select</option>
                                                <option value="Finance">Finance</option>
                                                <option value="Audit">Audit</option>
                                                <option value="NPS">NPS</option>
                                                <option value="DOAT">DOAT</option>
                                                
                                            </select>
                  
                                        </div>
                                        <div class="col-6 mb-3">
                                            <label for="text"><strong>Employee Number: </strong><strong><sup style="color: red; size: A5">*</sup></strong></label>
                                            <input class="form-control " type="text" id="empid" name="empid"
                                                placeholder="EmpId" required>
                  
                  
                                        </div>
                                            
                  
                  
                                        <div class="col-12 mb-3">
                                            <label for="name"><strong>Employee Full Name:</strong><sup
                                                    style="color: red; size: A5">*</sup></label>
                                           
                                                <input class="col-12 form-control fname " type="text" id="fname" name="fname"
                                                    placeholder=" name" required>
                                                
                                        </div>
                                        <div class="col-6 mb-3">
                                            <label for="phone"><strong>Employee Phone number </strong><strong><sup
                                                        style="color: red; size: A5">*</sup></strong></label>
                                            <input class="form-control " type="" name="phone" id="phone"
                                                placeholder="Enter Phone number" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" required
                                                maxlength="10">
                  
                  
                                        </div>
                                        <div class="col-6 mb-3">
                                            <label for="email"><strong>Email </strong><strong><sup
                                                        style="color: red; size: A5">*</sup></strong></label>
                                            <input class="form-control " type="Enter email" id="email" name="email"
                                                placeholder="Email Address" required>
                  
                  
                                        </div>
                                       
                  
                  
                                        <div class="col-6 mb-3">
                                            <label for="password"><strong>Password </strong><strong><sup
                                                    style="color: red; size: A5">*</sup></strong></label>
                                                    <input class="form-control" type="password" id="psw" placeholder="Enter Password" name="psw"
                                                    pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                                                    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                                                    required></input>
                                                     <!--PValidation-->
                                                    <div id="message">
                                                        <h3>Password must contain the following:</h3>
                                                        <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                                                        <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                                                        <p id="number" class="invalid">A <b>number</b></p>
                                                        <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                                                    </div>
                  
                                        </div>
                                        <div class="col-6 mb-3">
                                            <label for="conpassword"><strong>Confirm Password </strong><strong><sup
                                                    style="color: red; size: A5">*</sup></strong></label>
                                            <input class="form-control" type="password" id="conpassword"
                                                   placeholder="Confirm Password" required>
                                                   <br>
                                        </div>
                  
                  
                                        <div  align="center" class="align-self-center mx-auto">
                                            <button type="button" id="register"  class="btn btn-success btn-sm">REGISTER</button>
                                        </div>
                                    </div>
                  
                  
                               
                        
                                
                                               
                        </div>
                    </div>
                  
                  
                  </div>
          </div>
    
    
          
          <div class="tab-pane" id="calender">
            <div class="container" id="con">
    
              <div class="card" id="whole-card">
        
        
                <div class="card-header"  style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
                  <h3 align ="center"><strong>Calander</strong></h3>
              </div>
              <div class="card-body">
              
              </div>
        
                </div></div>
          </div>
    
          <div class="tab-pane" id="selected">
            <div class="container" id="con">
              <div class="card" id="whole-card">
        
        
                <div class="card-header" style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
                  <h4 align ="center"><strong>Selected Candidate</strong></h4>
              </div>
              <div class="card-body">
                <p>Selected Employee List for the Training program</p>
              <table class="table table-light table-striped" id="trainee_table">
                
                <thead>
                  
                  <tr>
                    <th><b>Sr.No.</b></th>
                    <th><b>Name</b></th>
                    <th><b>Degignation</b></th>
                    <th><b>EmpID</b></th>
                    <th><b>DDO_No</b></th>
                    <th><b>Traning Program</b></th>
                  </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
              </div>
        
              </div></div>
          </div>
          <script>
            $(document).ready(function () {
              var data = [];
              var settings = {
                "url": "http://localhost:8080/selectedTrainee",
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
                var sn=1;
                $.each(response.data, function (key, value) {
                  trainee_data += '<tr>';
                  trainee_data += '<td>' + sn + '</td>';
                  trainee_data += '<td>' + value.trainee_name + '</td>';
                  trainee_data += '<td>' + value.designation + '</td>';
                  trainee_data += '<td>' + value.ddo_code + '</td>';
                  trainee_data += '<td>' + value.employee_id + '</td>';
                  trainee_data += '<td>' + value.training_program_id + '</td>';
                  trainee_data += '</tr>';
                  sn++;
                });
                $('#trainee_table').append(trainee_data);
              });

            });
          </script>
    
          <div class="tab-pane " id="about">
            <div class="container" id="con">
    
              <div class="card" id="whole-card">
        
        
                <div class="card-header"  style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
                  <h4 align ="center"><strong>About</strong></h4>
              </div>
              <div class="card-body">
    
                  <div class="alert alert-danger " id="ale" style="margin-top: 25px; margin-left: 25px;">
    
                      <h7 style="color: #000;"><b>For any query:</b> <br>Call-9101445731 <br> Email-amlan122@gmail.com </h7>
                  </div>
              
              </div>
        
                </div></div>
          </div>
    
      </div>
    
     <!--footer-->
        <div class="footer">
            <p>© 2020 Copyright:
                <a href="#"> DOAT</a>
            </p>
        </div>
<script src="../js/post_registration.js"></script>
</body>
</html>

   <!--Validation JS-->
   <script>
    var myInput = document.getElementById("psw");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");
    var number = document.getElementById("number");
    var length = document.getElementById("length");

    // When the user clicks on the password field, show the message box
    myInput.onfocus = function () {
        document.getElementById("message").style.display = "block";
    }

    // When the user clicks outside of the password field, hide the message box
    myInput.onblur = function () {
        document.getElementById("message").style.display = "none";
    }

    // When the user starts to type something inside the password field
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

        // Validate capital letters
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
</script>

<script>
    var psw = document.getElementById("psw")
  , conpassword = document.getElementById("conpassword");

function validatePassword(){
  if(psw.value != conpassword.value) {
    conpassword.setCustomValidity("Passwords Don't Match");
  } else {
    conpassword.setCustomValidity('');
  }
}

psw.onchange = validatePassword;
conpassword.onkeyup = validatePassword;
</script>
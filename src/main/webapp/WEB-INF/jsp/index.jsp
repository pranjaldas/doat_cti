<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="widthdevice-width, initial-scale=1">
  <title>CTI</title>
  <!--bootstrap css framework-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <!--jquery cdn-->

  <!-- Popper JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <!-- Latest compiled JavaScript -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
    integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="css/CTIcss.css">
  <!-- <link rel="stylesheet" href="css/style.css" /> -->
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.structure.css">
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.theme.css">
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css">


</head>

<body>
  <div class="header content">
    <a href="index.html"><img src="img/assam.png" class="title-logo" alt="Home"></a>
    <div class="titles">
      <p class="title">Central Trainng Institute (CTI)</p>
      <p class="subtitle">Kar Bhawan,Ganeshguri,Assam-781006</p>
    </div>
  </div>
  <div class="container-fluid">
    <nav class="navbar navbar-expand-md bg-primary navbar-dark">


      <!-- Toggler/collapsibe Button -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Navbar links -->
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class=" nav nav-tabs" style="padding-left: 20px;">
          <li class="nav-item">
            <a class="nav-link" href="#home" data-toggle="tab"><i class="fa fa-home"></i> Home</a>
          </li>
          <li class="nav-item">
            <a href="#register" class="nav-link" data-toggle="tab"><i class="fa fa-bell"></i> Register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#calender" data-toggle="tab"><i class="fa fa-calendar"></i> Training Calendar</a>
          </li>
          <li class="nav-item">
            <a href="#selected" class="nav-link " data-toggle="tab"><i class="fa fa-user"></i> Trainee List</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#about" data-toggle="tab"><i class="fa fa-info-circle"></i> About</a>
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
                border-radius: 20px;">
            <h4 align="center">
              <marquee><b>NOTIFICATIONS</b></marquee>
            </h4>
          </div>
          <div class="card-body">

            <div id="notification" style="margin-top: 20px; margin-left: 20px;">
            </div>
           
            <input type="text" id="apply_emp_id_autocomplete" name="emp_no" class="form-control">
            <button class="btn btn-sm btn-primary" id="apply">apply</button>




            <div class="modal fade" id="modalApplyTraining" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
              aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">APPY FOR TRAINING</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body mx-3">
                    <div class="md-form mb-4">
                      <i class="fas prefix grey-text"><label data-error="wrong" data-success="right" for="defaultForm-pass">Your Employee ID:</label></i>
                      <input type="text" id="emp_id_autocomplete" name="emp_no" class="form-control">

                    </div>
                    <div class="md-form mb-4">
                      <i class="fas prefix grey-text"><label data-error="wrong" data-success="right" for="defaultForm-pass">Your Registration ID:</label></i>
                      <input type="text" id="" class="form-control validate">
                      
                    </div>
                    <div class="md-form mb-4">
                      <i class="fas prefix grey-text"><label data-error="wrong" data-success="right" for="defaultForm-pass">Your password:</label></i>
                      <input type="password" id="defaultForm-pass" class="form-control validate">
                      
                    </div>

                  </div>
                  
                  <div class="modal-footer d-flex justify-content-center">
                    <button class="btn btn-primary btn-sm">Apply</button>
                  </div>
                </div>
              </div>
            </div>


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
          <form class="form" id="register_employee">
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
                    <select class="custom-select text-uppercase caste" id="department_name" required>
                      <option value="">Select</option>
                    </select>
    
                  </div>
                  <div class="col-6 mb-3">
                    <label for="text"><strong>Employee Number: </strong><strong><sup
                          style="color: red; size: A5">*</sup></strong></label>
                    <input class="form-control " type="text" id="emp_id"  placeholder="Enter your Emplyee ID" required>
    
    
                  </div>
    
    
    
                  <div class="col-12 mb-3">
                    <label for="name"><strong>Employee Full Name:</strong><sup style="color: red; size: A5">*</sup></label>
    
                    <input class="col-12 form-control fname " type="text" id="fname" name="fname" placeholder=" name"
                      required>
    
                  </div>
                  <div class="col-6 mb-3">
                    <label for="phone"><strong>Employee Phone number </strong><strong><sup
                          style="color: red; size: A5">*</sup></strong></label>
                    <input class="form-control " type="" name="phone" id="phone" placeholder="Enter Phone number"
                      pattern="[0-9]{3}[0-9]{3}[0-9]{4}" required maxlength="10">
    
    
                  </div>
                  <div class="col-6 mb-3">
                    <label for="email"><strong>Email </strong><strong><sup
                          style="color: red; size: A5">*</sup></strong></label>
                    <input class="form-control " type="Enter email" id="email" name="email" placeholder="Email Address"
                      required>
    
    
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
                    <input class="form-control" type="password" id="conpassword" placeholder="Confirm Password" required>
                    <br>
                  </div>
    
    
                  <div align="center" class="align-self-center mx-auto">
                    <button type="button" id="registerButton" class="btn btn-success btn-sm">REGISTER</button>
                  </div>  
                
              </div>
  
            </div>

          </form>

          
        </div>


      </div>
    </div>



    <div class="tab-pane" id="calender">
      <div class="container" id="con">

        <div class="card" id="whole-card">


          <div class="card-header" style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
            <h3 align="center"><strong>Calander</strong></h3>
          </div>
          <div class="card-body">

          </div>

        </div>
      </div>
    </div>

    <div class="tab-pane" id="selected">
      <div class="container" id="con">
        <div class="card" id="whole-card">


          <div class="card-header" style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
            <h4 align="center"><strong>Selected Candidate</strong></h4>
          </div>
          <div class="card-body">
            <h3<p>Selected Employee List for the Training program</p></h3>
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

        </div>
      </div>
    </div>
    

    <div class="tab-pane " id="about">
      <div class="container" id="con">

        <div class="card" id="whole-card">


          <div class="card-header" style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
            <h4 align="center"><strong>About</strong></h4>
          </div>
          <div class="card-body">

            <div class="alert alert-danger " id="ale" style="margin-top: 25px; margin-left: 25px;">

              <h7 style="color: #000;"><b>For any query:</b> <br>Call-9678186292 <br> Email-pranjaldas525@gmail.com </h7>
            </div>

          </div>

        </div>
      </div>
    </div>

  </div>

  <!--footer-->
  <div class="footer">
    <p>© 2020 Copyright:
      <a href="#"> DOAT</a>
    </p>
  </div>
  
  <script
			  src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
			  integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
			  crossorigin="anonymous"></script>
  <script src="../js/index.js"></script>
</body>

</html>

<!-- Validation JS-->

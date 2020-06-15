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
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <!-- Material icons -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/CTIcss.css">
    <!-- <link rel="stylesheet" href="css/style.css" /> -->
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.structure.css">
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.theme.css">
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css">
    <link rel="stylesheet" href="css/mobiscroll.jquery.min.css">
    <!-- for loading animation -->
    <link rel="stylesheet" type="text/css" href="css/modal-loading.css" />
    <link rel="stylesheet" type="text/css" href="css/modal-loading-animate.css" />
    <!-- for full calender -->
    <link href='../packages/core/main.css' rel='stylesheet' />
    <link href='../packages/daygrid/main.css' rel='stylesheet' />
    <link href='../packages/timegrid/main.css' rel='stylesheet' />
    <link href='../packages/list/main.css' rel='stylesheet' />
    <script src='../packages/core/main.js'></script>
    <script src='../packages/interaction/main.js'></script>
    <script src='../packages/daygrid/main.js'></script>
    <script src='../packages/timegrid/main.js'></script>
    <script src='../packages/list/main.js'></script>
    <style>
        #profile {
            display: none;
        }
    </style>

</head>

<body >
    <div class="header content">
        <a href="index.html"><img src="img/assam.png" class="title-logo" alt="Home"></a>
        <div class="titles">
            <p class="title"><b>CENTRAL <span style="color: green;">TRAINING</span> INSTITUTE<span
                        style="color: coral;">(CTI)</span></b></p>
            <p class="subtitle">Kar Bhawan,Ganeshguri,Assam-781006</p>
        </div>
    </div>
    <div id="home">
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
                            <a class="nav-link" href="#indexhome" data-toggle="tab"><i class="fa fa-home"></i> Home</a>
                        </li>
                        <li class="nav-item">
                            <a href="#register" class="nav-link" data-toggle="tab"><i class="fa fa-bell"></i>
                                Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#calender" data-toggle="tab"><i class="fa fa-calendar"></i>
                                Training Calendar</a>
                        </li>
                        <li class="nav-item">
                            <a href="#selected" class="nav-link " data-toggle="tab"><i class="fa fa-user"></i> Trainee
                                List</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about" data-toggle="tab"><i class="fa fa-info-circle"></i>
                                About</a>
                        </li>
                        <li class="nav-item" style="float: right;">
                            <a class="nav-link" href="#myLoginModal" data-toggle="modal"><i
                                    class="fa fa-info-circle"></i> Log In</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="tab-content">
            <div class="tab-pane fade show active" id="indexhome">

                <div id="con" style="padding-left: 50px;padding-right: 50px;">
                    <div class="row">
                        <div class="col-lg-5">
                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="img/image2.jpeg" alt="First slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="img/image3.jpeg" alt="Second slide">
                                    </div>
                                
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                                    data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                                    data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-7 ">

                            <div class="card" id="whole-card">

                                <div class="card-header" style="background: rgb(74, 212, 236) ; 
                      padding: 5px; 
                      border-radius: 20px;">
                                    <h4 align="center">
                                        <marquee><b>NOTIFICATIONS</b></marquee>
                                    </h4>
                                </div>
                                <div class="card-body" style="overflow-y: scroll;
                height: 400px;
                padding: 1rem">

                                    <div id="notification" style="margin-top: 20px; margin-left: 20px;">
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </div>
        
            <!-- Apply model -->
            <div id="applyModal" class="modal fade">
                <div class="modal-dialog modal-dialog-centered modal-login">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title"><b>APPLY TRAINING</b></h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <form action="#" method="" id="apply_form">
                                <div class="form-group">
                                    <i class="fa fa-registered"></i>
                                    <input type="text" id="apply_reg_id" name="regId" class="form-control" placeholder="Registration Id"
                                        required="required">
                                </div>
                                <div class="alert alert-danger" id="user-regId-failure-alert" role="alert">
                                    <strong>Opps!</strong> <a href="#" class="alert-link">Registration ID is not valid</a>
                                </div>
                                <div class="form-group">
                                    <i class="fa fa-user"></i>
                                    <input type="text" id="apply_username" name="username" class="form-control" placeholder="Username"
                                        required="required">
                                </div>
                                <div class="form-group">
                                    <i class="fa fa-lock"></i>
                                    <input type="password" id="apply_password" name="password" class="form-control"
                                        placeholder="Password" required="required">
                                </div>
                                <div class="alert alert-danger" id="user-auth-failure-alert" role="alert">
                                    <strong>Opps!</strong> <a href="#" class="alert-link">username and password mismatch</a>
                                </div>
                                
                                <div class="form-group">
                                    <input type="button" id="apply_training_button" class="btn btn-primary btn-block btn-lg" value="Apply">
                                </div>
                            </form>
        
                        </div>
                        
                    </div>
                </div>
            </div>




            <div class="tab-pane" id="register">

                <div class="container" id="con">
                    <!-- Alert boxes start -->
                    <div class="alert alert-success" id="success-alert">
                        <button type="button" class="close" data-dismiss="alert">x</button>
                        <strong>Congratulations! </strong> you are succesfully registered, please check your email form
                        confirmation.
                    </div>
                    <div class="alert alert-danger" id="failure-alert" role="alert">
                        <button type="button" class="close" data-dismiss="alert">x</button>
                        <strong>Opps!</strong> <a href="#" class="alert-link">Some thing went wront, may be email is not
                            valid, change a few things
                            up</a> and
                        try submitting again.
                    </div>
                    <!-- Alert boxes end -->

                    <div class="card" id="whole-card">
                        <div class="card-header"
                            style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
                            <h4 align="center"><b>REGISTRATION FORM</b></h4>
                        </div><br><br>
                        <form class="form" id="register_employee">
                            <div class="card-body">

                                <div class="alert alert-primary">

                                    <h7 style="color: #000;"> All Star-Marked (*) fileds are COMPULSORY<br>
                                        Please read all the training related instructions before submitting the form.
                                        </h>
                                </div>

                                <p class="card-text">



                                    <!--Register form-->

                                <div class="form-row" id="register_home">

                                    <div class="col-6 mb-11">
                                        <label for="job_title"><strong>Department Name:</strong><strong><sup
                                                    style="color: red; size: A5">*</sup></strong></label>
                                        <select class="custom-select text-uppercase caste" id="department_name"
                                            required>
                                            <option value="">Select</option>
                                        </select>

                                    </div>
                                    <div class="col-6 mb-3">
                                        <label for="text"><strong>Employee Number: </strong><strong><sup
                                                    style="color: red; size: A5">*</sup></strong></label>
                                        <input class="form-control " type="text" id="emp_id"
                                            placeholder="Enter your Emplyee ID" required>


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
                                        <div class="alert alert-danger" id="used-email-failure-alert" role="alert">

                                            <strong>Opps!</strong> <a href="#" class="alert-link">This email is already
                                                registered</a>
                                        </div>


                                    </div>



                                    <div class="col-6 mb-3">
                                        <label for="password"><strong>Password </strong><strong><sup
                                                    style="color: red; size: A5">*</sup></strong></label>
                                        <input class="form-control" type="password" id="psw"
                                            placeholder="Enter Password" name="psw"
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


                                    <div align="center" class="align-self-center mx-auto">
                                        <button type="button" id="registerButton"
                                            class="btn btn-success btn-sm">REGISTER</button>
                                    </div>

                                </div>

                            </div>

                        </form>


                    </div>


                </div>
            </div>



            <div class="tab-pane" id="calender">
                <div id="con" style="padding-left: 50px;padding-right: 50px;">
                    <div class="row">
                        <div class="col-lg-8">
                            <div id="view_calendar" style="overflow-y: scroll;
                    height: 400px;
                    padding: 1rem"></div>
                        </div>
                        <div class="col-lg-4">

                            <table id="calendar_download">
                                <thead>
                                    <tr>
                                        <th>Training Name</th>
                                        <th>Month</th>
                                        <th>Download</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Service Training</td>
                                        <td>January 2020</td>
                                        <td align="center"><button onclick="download(this)"><i class="fa fa-file-pdf-o"
                                                    style="font-size:36px;color:red"></button></i></td>
                                    </tr>
                                    <tr>
                                        <td>Basic Training</td>
                                        <td>December 2019</td>
                                        <td align="center"><button onclick="download(this)"><i class="fa fa-file-pdf-o"
                                                    style="font-size:36px;color:red"></button></i></td>
                                    </tr>
                                    <tr>
                                        <td>Induction Training</td>
                                        <td>January 2020</td>
                                        <td align="center"><button onclick="download(this)"><i class="fa fa-file-pdf-o"
                                                    style="font-size:36px;color:red"></button></i></td>
                                    </tr>

                                    <tr>
                                        <td>Demo Training</td>
                                        <td>August 2019</td>
                                        <td align="center"><button onclick="download(this)"><i class="fa fa-file-pdf-o"
                                                    style="font-size:36px;color:red"></i></button></i></td>
                                    </tr>

                                </tbody>

                            </table>

                        </div>
                    </div>
                    <div id="dvTable">
                    </div>


                </div>
            </div>
            <div class="tab-pane" id="selected">
                <div class="container" id="con">
                    <div class="card" id="whole-card">

                        <div class="card-header"
                            style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
                            <h4 align="center"><strong>Selected Candidates</strong></h4>
                        </div>
                        <div class="card-body">
                            <h3<p>Selected Trainee List for the Training program</p>
                                </h3>
                                <table class="table table-light table-striped" id="trainee_table">

                                    <thead>

                                        <tr>
                                            <th><b>Sr.No.</b></th>
                                            <th><b>Name</b></th>
                                            <th><b>Degignation</b></th>
                                            <th><b>DDO_No</b></th>
                                            <th><b>EmpID</b></th>
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


                        <div class="card-header"
                            style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
                            <h4 align="center"><strong>About Us</strong></h4>
                        </div>
                        <div class="card-body">

                            <div class="alert alert-danger " id="ale" style="margin-top: 25px; margin-left: 25px;">

                                <h7 style="color: #000;"><b>For any query:</b> <br>Call-9678186292 <br>
                                    Email-pranjaldas525@gmail.com
                                </h7>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

        </div>




    </div>
    <!-- Modal HTML -->
    <div id="myLoginModal" class="modal fade">
        <div class="modal-dialog modal-dialog-centered modal-login">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Trainee Login</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="#" method="">
                        <div class="form-group">
                            <i class="fa fa-user"></i>
                            <input type="text" id="username" name="username" class="form-control" placeholder="Username"
                                required="required">
                        </div>
                        <div class="form-group">
                            <i class="fa fa-lock"></i>
                            <input type="password" id="password" name="password" class="form-control"
                                placeholder="Password" required="required">
                        </div>
                        <div class="alert alert-danger" id="login-failure-alert" role="alert">
                            <strong>Opps!</strong> <a href="#" class="alert-link">username and password mismatch</a>
                        </div>
                        <div class="form-group">
                            <input type="button" id="login" class="btn btn-primary btn-block btn-lg" value="Login">
                        </div>
                    </form>

                </div>
                <div class="modal-footer">
                    <a href="#">Forgot Password?</a>
                </div>
            </div>
        </div>
    </div>
    <div id="profile">
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
                            <a class="nav-link" href="#profileView" data-toggle="tab"><i class="fa fa-user"></i>
                                Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#activity" data-toggle="tab"><i class="fa fa-address-card"></i>
                                Activity</a>
                        </li>
                        <li class="nav-item" style="float: right;">
                            <a class="nav-link" id="logout"><i class="fa fa-info-circle"></i> Log Out</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>

        <div class="tab-content">
            <div class="tab-pane fade show active" id="profileView">

                <div id="con" class="container">


                    <div class="card" id="whole-card">
                        <div class="card-header">
                          <h3 class="card-title">
                            <i class="ion ion-clipboard mr-1"></i>
                            Registration Details
                          </h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="profile_trainee_table" id="trainee_registration">
                                <thead>
                                    <tr>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><i class="fa fa-registered" aria-hidden="true"></i>
                                            Registration ID:</td>
                                        <td class="updated" id="view_regid"></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-user" aria-hidden="true"></i>

                                            Trainee Name:</td>
                                        <td class="updated" id="view_regname"></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-lock" aria-hidden="true"></i>
                                            User Name:</td>
                                        <td class="updated" id="view_username"></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-phone" aria-hidden="true"></i>
                                            Phone No:</td>
                                        <td class="updated" id="view_userphone"></td>
                                    </tr>
                                    <tr>
                                        <td> <i class="fa fa-envelope" aria-hidden="true"></i>
                                            Email:</td>
                                        <td class="updated" id="view_useremail"></td>
                                    </tr>
                                </tbody>
                            </table>
            
                        </div>
                       
            
            
                        <!-- /.card-body -->
                        <div class="card-footer clearfix">
                            <button type="button" id="publish" onclick="fillRegistrationModal()" data-toggle="modal" data-target="#updateUserRegistrationDetails" class="btn btn-info float-right"><i class="fa fa-wrench" aria-hidden="true"></i>
                                Update </button>
                          </div>
                       
                      </div>
                       <!-- Registration Details update -->
                       <div class="modal fade" id="updateUserRegistrationDetails" tabindex="-1" role="dialog"
                       aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                       <div class="modal-dialog modal-dialog-centered" role="document">
                         <div class="modal-content">
                           <div class="modal-header">
                             <h5 class="modal-title" id="exampleModalLongTitle"><b>Update Registration Details:</b></h5>
                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                               <span aria-hidden="true">&times;</span>
                             </button>
                           </div>
                           <div class="modal-body">
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Registration Id:</label>
                              </div>
                              <div class="form-group col-6">
                                <input type="text" class="form-control" 
                                  id="editReg_registration_id" readonly/>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-4">
                                  <p class="font-weight-bold">
                                    <label>Trainee Name:</label>
                                </div>
                                <div class="form-group col-6">
                                  <input type="text" class="form-control" 
                                    id="editReg_name" readonly/>
                                  </p>
                                </div>
                              </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>New User Name:</label>
                              </div>
                              <div class="form-group col-6">
                                <input type="text" class="form-control" 
                                   id="editReg_username" />
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-4">
                                  <p class="font-weight-bold">
                                    <label>New Phone No.:</label>
                                </div>
                                <div class="form-group col-6">
                                  <input type="text" class="form-control" 
                                     id="editReg_phone"  />
                                  </p>
                                </div>
                              </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>New Email Address:</label>
                              </div>
                              <div class="form-group col-6">
                                <input type="text" class="form-control" 
                                   id="editReg_email"  />
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-4">
                                  <p class="font-weight-bold">
                                    <label>New Password:</label>
                                </div>
                                <div class="form-group col-6">
                                  <input type="password" class="form-control" 
                                     id="editReg_password" placeholder="Enter a New password" />
                                  </p>
                                </div>
                              </div>
                            
                           </div>
                           
                           <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal" id="saveRegUpdates">Save</button>
                          </div>
                         </div>
                       </div>
                     </div>

                      <div class="card" id="whole-card">
                        <div class="card-header">
                          <h3 class="card-title">
                            Department Details
                          </h3>
                          
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="profile_trainee_table" id="trainee_department">
                                <thead>
                                    <tr>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><i class="fa fa-key" aria-hidden="true"></i>
                                            Department ID:</td>
                                        <td id="view_depid"></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-info" aria-hidden="true"></i>
                                            Department Name:</td>
                                        <td id="view_dep_name"></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-map-marker" aria-hidden="true"></i>
                                            Location:</td>
                                        <td id="view_dept_loc"></td>
                                    </tr>
        
                                </tbody>
                            </table>
            
                        </div>
            
            
                        <!-- /.card-body -->
                    
                      </div>




                    <div class="card" id="whole-card">
                        <div class="card-header">
                          <h3 class="card-title">
                          
                            Employee Details
                          </h3>
                
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="profile_trainee_table" id="trainee_employment">
                                <thead>
                                    <tr>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><i class="fa fa-id-badge" aria-hidden="true"></i>
                                            Employee ID:</td>
                                        <td id="view_empid"></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-user-circle-o" aria-hidden="true"></i>
                                            Name:</td>
        
        
                                        <td id="view_name"></td>
                                    </tr>
                                    <tr>
                                        <td> <i class="fa fa-calendar" aria-hidden="true"></i>
                                            Join Date:</td>
                                        <td id="view_join_date"></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-graduation-cap" aria-hidden="true"></i>
                                            Designation:</td>
                                        <td id="view_desig"></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-info" aria-hidden="true"></i>
                                            Region:</td>
                                        <td id="view_region"></td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa fa-info" aria-hidden="true"></i>
                                            DDO Code:</td>
                                        <td id="view_ddo_code"></td>
                                    </tr>
                                </tbody>
                            </table>
        
            
                        </div>
            
            
                        <!-- /.card-body -->
                    
                      </div>

                   
                </div>



            </div>



            <div class="tab-pane" id="activity">
                <div class="container" id="con">

                    <div class="card" id="whole-card">
                        <div class="card-header">
                          <h3 class="card-title">
                            <i class="ion ion-clipboard mr-1"></i>
                            Trainings applied
                          </h3>
                          <div class="card-tools">
                            <div class="input-group">
                              <input type="text" class="form-control" placeholder="Search Trainings by ID">
                              <div class="input-group-append">
                                <button class="btn btn-secondary" type="button">
                                  <i class="fa fa-search"></i>
                                </button>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="profile_applications_table" class="table table-light table-striped">
                                <thead>
                                    <tr>
                                        <th><b>Sr.No.</b></th>
                                        <th><b>Application ID</b></th>
                                        <th><b>TrainingID</b></th>
                                        <th><b>Apply Date</b></th>                           
                                        <th><b>Status</b></th>
                                        <th><b>Alert</b></th>
                                        <th><b>Action</b></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- <tr>
                                        <td>896</td>
                                        <td>TRAIN12345JK</td>
                                        <td>Service Training</td>
                                        <td>60 days</td>
                                        <td>2020-07-06</td>
                                        <td>Pending</td>
                                        <td><a type="button" title="Update" class="edit"  style="color: #FFC107;margin: 0 5px;min-width: 24px;cursor: pointer; display: inline-block;"><i class="material-icons">&#xE254;</i></a></td>
                                    </tr>
                                     -->

                                </tbody>
                            </table>
            
                        </div>
            
            
                        <!-- /.card-body -->
                        <div class="card-footer clearfix">
                          <button type="button" class="btn btn-info float-right" data-toggle="modal"
                            data-target="#applyTrainingfromProfileModal"><i class="fas fa-plus"></i> Apply New</button>
                        </div>
                      </div>
                      <!-- Apply trainings -->
                      <div id="applyTrainingfromProfileModal" class="modal fade">
                        <div class="modal-dialog modal-dialog-centered modal-login">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"><b>APPLY TRAINING</b></h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <form action="#" method="" >
                                        <div class="form-group">
                                            <i class="fa fa-key" aria-hidden="true"></i>
                                            <input type="text" id="profile_apply" name="profile_apply" class="form-control" placeholder="Write Training Program Id">
                                                
                                        </div>
                                        <div class="alert alert-danger" id="trainingIdnotValid-failure-alert" role="alert">
                                            <strong>Opps!</strong> <a href="#" class="alert-link">Training ID is not valid</a>
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="button" id="profile_apply_training_button" class="btn btn-primary btn-block btn-lg" value="Apply">
                                        </div>
                                    </form>
                
                                </div>
                                
                            </div>
                        </div>
                    </div>

                      <div class="card" id="whole-card">
                        <div class="card-header">
                          <h3 class="card-title">
                            <i class="ion ion-clipboard mr-1"></i>
                            Trainings Ongoing
                          </h3>
                          
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body" style="overflow-y: scroll;
                        height:350px;
                        padding: 1rem">
                            <table class="table table-light table-striped" id="trainings_ongoing">

                                <thead>
                                    <tr>
                                        
                                        <th><b>TrainingID</b></th>
                                        <th><b>Trainer Name</b></th>
                                        <th><b>Date</b></th>
                                        <th><b>Start Time</b></th>
                                        <th><b>Attendance</b></th>
                                        <th><b>Preview</b></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>TRAIL52864JK</td>
                                        <td>Dr. Mrinal Bhatta</td>
                                        <td>2020-05-20</td>
                                        <td>10.00 AM</td>
                                        <td>Present</td>
                                        <td>Excelent Guy :)</td>
                                    </tr>
                                    <tr>
                                        <td>TRAIL52864JK</td>
                                        <td>Dr. Mrinal Bhatta</td>
                                        <td>2020-05-21</td>
                                        <td>10.00 AM</td>
                                        <td>Present</td>
                                        <td>Good :)</td>
                                    </tr>
                                    <tr>
                                        <td>TRAIL52864JK</td>
                                        <td>Dr. Mrinal Bhatta</td>
                                        <td>2020-05-22</td>
                                        <td>10.00 AM</td>
                                        <td>Present</td>
                                        <td>Good :)</td>
                                    </tr>
                                    <tr>
                                        <td>TRAIL52864JK</td>
                                        <td>Dr. Mrinal Bhatta</td>
                                        <td>2020-05-22</td>
                                        <td>10.00 AM</td>
                                        <td>Absent</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>TRAIL52864JK</td>
                                        <td>Dr. Mrinal Bhatta</td>
                                        <td>2020-05-24</td>
                                        <td>10.00 AM</td>
                                        <td>Present</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>TRAIL52864JK</td>
                                        <td>Dr. Mrinal Bhatta</td>
                                        <td>2020-05-25</td>
                                        <td>10.00 AM</td>
                                        <td>Present</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>TRAIL52864JK</td>
                                        <td>Dr. Mrinal Bhatta</td>
                                        <td>2020-05-26</td>
                                        <td>10.00 AM</td>
                                        <td>Present</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>TRAIL52864JK</td>
                                        <td>Dr. Mrinal Bhatta</td>
                                        <td>2020-05-27</td>
                                        <td>10.00 AM</td>
                                        <td>Present</td>
                                        <td>Very Good</td>
                                    </tr>
                                </tbody>
                            </table>
            
                        </div>
            
            
                        <!-- /.card-body -->
                        
                      </div>

                      <div class="card" id="whole-card">
                        <div class="card-header">
                          <h3 class="card-title">
                            <i class="ion ion-clipboard mr-1"></i>
                            Trainings Attended
                          </h3>
                          <div class="card-tools">
                            <div class="input-group">
                              <input type="text" class="form-control" placeholder="Search Trainings by ID">
                              <div class="input-group-append">
                                <button class="btn btn-secondary" type="button">
                                  <i class="fa fa-search"></i>
                                </button>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-light table-striped" id="trainings_attended">
                                <thead>
                                    <tr>
                                        <th><b>TrainingID</b></th>
                                        <th><b>Type</b></th>
                                        <th><b>Duration</b></t>
                                        <th><b>Start Date</b></th>
                                        <th><b>Status</b></th>
                                        <th><b>Score</b></th>
                                        <th><b>Attendance</b></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>TRAIL78945JK</td>
                                        <td>Basic Training</td>
                                        <td>45 days</td>
                                        <td>2020-01-12</td>
                                        <td>Completed</td>
                                        <td>86%</td>
                                        <td>60%</td>
                                    </tr>
                                    <tr>
                                        <td>TRAIK456783JK</td>
                                        <td>Induction Training</td>
                                        <td>30 days</td>
                                        <td>2019-12-05</td>
                                        <td>Comlpleted</td>
                                        <td>90%</td>
                                        <td>70%</td>
                                    </tr>
                                </tbody>
                            </table>
            
                        </div>
            
            
                        <!-- /.card-body -->
                        
                      </div>
            
                    
        

                </div>
            </div>

        </div>




    </div>
    <!-- footer light -->
    <div class="footer">
        
            <div class="row">
                <div class="col-3 padawan">
                    <p><a href="#" class="white">CTI - Mandatory Disclosure</a></p>
                    <p><a href="#" class="white">Information under RTI Act</a></p>
                    <p><a href="#" class="white">Certification Policy</a></p>
                </div>
                <div class="col-2 padawan" >
                    <p><a href="#" class="white">Trainees Acitivities</a></p>
                    <p><a href="#" class="white">Notice Archives</a></p>
                    <p><a href="#" class="white">About Us</a></p>
                    <p><a href="#" class="white">Location</a></p>
                    <p><a href="#" class="white">Address</a></p>
                    
                </div>
                <div class="col-2 padawan no-padding">
                    <img src="img/assam.png" id="logo-footer" alt="" style="width: 150px; height: 200px;">
                </div>
                <div class="col-2 padawan">
                    <p><a href="#" class="white">Training Programs</a></p>
                    <p><a href="#" class="white">Training Eligibility</a></p>
                    <p><a href="#" class="white">Trainers</a></p>
                    <p><a href="#" class="white">Examination</a></p>
                    <p><a href="#" class="white">The Observer</a></p>
                </div>
                <div class="col-3 padawan">
                    <!-- <h4 class="no-margin">Contact Us</h4><br> -->
                    <p>
                        Directorate Of Accounts and Treasuries,<br>
                        Govt. of Assam,<br>
                        G-S Road, Ganeshguri,<br>
                        Distt. - Kamrup<br>
                        PIN - 781006 , India<br>
                        Ph: +91-9678186292,<br>
                        +91-267310-314<br>
                        Email: cti@juet.ac.in
                    </p>
                </div>
        </div>
    </div>
    <!--footer-->
    <div class="footer-dark">
        Copyright © 2020 Directorate of Accounts & Treasuries, Govt. of Assam. All Rights Reserved | Site developed by <strong><a href="#" onclick="window.open('https://www.linkedin.com/in/pranjal-das-03bba217b')" class="white">Pranjal
                Das</a></strong>
    </div>

</body>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
    integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
<script src="../js/index.js"></script>
<!-- for event calender -->
<script src="js/mobiscroll.jquery.min.js"></script>
<!-- for sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- loading animation  -->
<script type="text/javascript" src="js/modal-loading.js"></script>
<!-- to pdf converter -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
<script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>

</html>

<!-- Validation JS-->
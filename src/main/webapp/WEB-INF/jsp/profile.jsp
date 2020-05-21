<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="widthdevice-width, initial-scale=1">
  <title>Profile</title>
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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/profile.css">
  <!-- <link rel="stylesheet" href="css/style.css" /> -->
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.structure.css">
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.theme.css">
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css">
  <link rel="stylesheet" href="css/mobiscroll.jquery.min.css">
  <!-- for loading animation -->
  <link rel="stylesheet" type="text/css" href="css/modal-loading.css" />
  <link rel="stylesheet" type="text/css" href="css/modal-loading-animate.css" />


</head>

<body>
  <div class="header content">
    <a href="index.html"><img src="img/assam.png" class="title-logo" alt="Home"></a>
    <div class="titles">
      <p class="title">Central Training Institute (CTI)</p>
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
            <a class="nav-link" href="#profile" data-toggle="tab"><i class="fa fa-user"></i> Profile</a>
          </li>
          <li class="nav-item">
            <a href="#activity" class="nav-link " data-toggle="tab"><i class="fa fa-address-card"></i> Activity</a>
          </li>
          <li class="nav-item" style="float: right;">
            <a class="nav-link" id="logout"><i class="fa fa-info-circle"></i> Log Out</a>
          </li>
        </ul>
      </div>
    </nav>
  </div>

  <div class="tab-content">
    <div class="tab-pane fade show active" id="profile">

      <div id="con" class="container">
        <div class="card" id="whole-card">


          <div class="card-header" style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
            <h4 align="center"><strong>Trainee Profile</strong></h4>
          </div>
          <div class="card-body">
            <table class="table table-light table-striped" id="trainee_registration">
              <thead>

                <th><i class="fa fa-info-circle" aria-hidden="true"></i>

                  <b>REGISTRATION DETAILS</b></th>

              </thead>
              <tbody>
                <tr>
                  <td><i class="fa fa-registered" aria-hidden="true"></i>
                    Registration ID:</td>
                  <td id="view_regid">AERSGDTH45212</td>
                </tr>
                <tr>
                  <td><i class="fa fa-lock" aria-hidden="true"></i>
                    User Name:</td>
                  <td id="view_username">EMP001234</td>
                </tr>
                <tr>
                  <td><i class="fa fa-phone" aria-hidden="true"></i>
                    Phone No:</td>
                  <td id="view_userphone">9678186292</td>
                </tr>
                <tr>
                  <td> <i class="fa fa-envelope" aria-hidden="true"></i>
                    Email:</td>
                  <td id="view_userphone">pranjaldas@gmail.com</td>
                </tr>
              </tbody>
            </table>
            <table class="table table-light table-striped" id="trainee_department">
              <thead>
                <tr>
                  <th ><i class="fa fa-info-circle" aria-hidden="true"></i>
                    <b>DEPARTMENT DETAILS</b></th>
                </tr>
              </thead>
              <tbody>
                <tr >
                  <td ><i class="fa fa-key" aria-hidden="true"></i>
                    Department ID:</td>
                  <td  id="view_depid">DEP005212</td>
                </tr>
                <tr >
                  <td ><i class="fa fa-info" aria-hidden="true"></i>
                    Department Name:</td>
                  <td id="view_dep_name">Information Technology</td>
                </tr>
                <tr >
                  <td ><i class="fa fa-map-marker" aria-hidden="true"></i>
                    Location:</td>
                  <td id="view_dept_loc">Kar Bhawan,Guwahati</td>
                </tr>

              </tbody>
            </table>
            <table class="table table-light table-striped" id="trainee_employment">
              <thead>
                <tr>
                  <th align="center"><b><i class="fa fa-info-circle" aria-hidden="true"></i>
                      EMPLOYMENT DETAILS</b></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><i class="fa fa-id-badge" aria-hidden="true"></i>
                    Employee ID:</td>
                  <td id="view_empid">EMP005212</td>
                </tr>
                <tr>
                  <td><i class="fa fa-user-circle-o" aria-hidden="true"></i>
                    Name:</td>


                  <td id="view_name">Pranjal Das</td>
                </tr>
                <tr>
                  <td> <i class="fa fa-calendar" aria-hidden="true"></i>
                    Join Date:</td>
                  <td id="view_join_date">18/12/2012</td>
                </tr>
                <tr>
                  <td><i class="fa fa-graduation-cap" aria-hidden="true"></i>
                    Designation:</td>
                  <td id="view_desig">Software Engineer</td>
                </tr>
                <tr>
                  <td><i class="fa fa-info" aria-hidden="true"></i>
                    Region:</td>
                  <td id="view_region">Guwahati</td>
                </tr>
                <tr>
                  <td ><i class="fa fa-info" aria-hidden="true"></i>
                    DDO Code:</td>
                  <td id="view_ddo_code">DDO00345</td>
                </tr>
              </tbody>
            </table>
           
          </div>

        </div>


      </div>


    </div>



    <div class="tab-pane" id="activity">
      <div class="container" id="con">
        <div class="card" id="whole-card">


          <div class="card-header" style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
            <h4 align="center"><strong>Activities</strong></h4>
          </div>
          <div class="card-body">

            <table class="table table-light table-striped" id="trainee_table">

              <thead>


              </thead>
              <tbody>
              </tbody>
            </table>
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


  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
    integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
  <script src="../js/index.js"></script>
  <!-- for event calender -->
  <script src="js/mobiscroll.jquery.min.js"></script>
  <!-- for sweet alert -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <!-- loading animation  -->
  <script type="text/javascript" src="js/modal-loading.js"></script>
  <script type="text/javascript" src="js/profile.js"></script>
</body>

</html>

<!-- Validation JS-->
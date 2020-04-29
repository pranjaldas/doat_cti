<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CTI</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!--jquery cdn-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.min.js"></script>
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css">
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.structure.css">
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.theme.css">
  <style>
    @import url("https://fonts.googleapis.com/css?family=Open+Sans");


    form .error {
      color: #ff0000;
    }
  </style>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>
      </ul>


      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">

        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#">
            <i class="far fa-bell"></i>
            <span class="badge badge-warning navbar-badge">15</span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <span class="dropdown-item dropdown-header">15 Notifications</span>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-envelope mr-2"></i> 4 new messages
              <span class="float-right text-muted text-sm">3 mins</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-users mr-2"></i> 8 friend requests
              <span class="float-right text-muted text-sm">12 hours</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-file mr-2"></i> 3 new reports
              <span class="float-right text-muted text-sm">2 days</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
          </div>
        </li>
      </ul>
    </nav>
    <!-- /.navbar -->


    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="#" class="brand-link">
        <img src="dist/img/assam.jpg" alt=" Logo" class="brand-image  elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">CTI</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user panel (optional) -->

        <div class="info">
          <a href="#" class="d-block">Admin</a>

        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
            <li class="nav-item ">
              <a href="#" class="nav-link active">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p> Dashboard</p>
              </a>
            </li>

            <li class="nav-item">
              <a href="#test" class="nav-link">
                <i class="nav-icon fas fa-table"></i>
                <p> Advertisement</p>
              </a>
            </li>

            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-chart-pie"></i>
                <p>
                  Applicants Details
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>View Total Applicants</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Verify Applicants</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Selected Applicants</p>
                  </a>
                </li>
              </ul>
            </li>


            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-edit"></i>
                <p>
                  Admit
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Create Admit</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>View admit</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-th"></i>
                <p>
                  Reports
                </p>
              </a>
            </li>

            <li class="nav-header">EXTRAS</li>

            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="nav-icon far fa-calendar-alt"></i>
                <p>
                  Calendar
                </p>
              </a>
            </li>

            <li class="nav-item ">
              <a href="#" class="nav-link">
                <i class="nav-icon far fa-envelope"></i>
                <p>
                  Notifications
                </p>
              </a>

            </li>





          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-6">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark"> Dashboard</h1>
            </div>
            <!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content-fluid">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-4 col-7">
              <!-- small box -->
              <div class="small-box bg-info">
                <div class="inner">
                  <h3>150</h3>

                  <p>Has logged in</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-4 col-7">
              <!-- small box -->
              <div class="small-box bg-success">
                <div class="inner">
                  <h3>53<sup style="font-size: 20px">%</sup></h3>

                  <p>Complete from fill up</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-4 col-7">
              <!-- small box -->
              <div class="small-box bg-warning">
                <div class="inner">
                  <h3>44</h3>

                  <p>Total Registrations</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->


          </div>

          <!-- Main row -->
          <div class="row" id="test">
            <!-- Left col -->
            <section class="col-lg-12 connectedSortable">
              <!-- Custom tabs-->
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">
                    Training Program
                  </h3>
                  <div class="card-tools">
                    <ul class="nav nav-pills ml-auto">
                      <li class="nav-item">
                        <a class="nav-link active" href="#view_trainings" data-toggle="tab">View</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#create_training" data-toggle="tab">Create</a>
                      </li>
                    </ul>
                  </div>
                </div><!-- /.card-header -->
                <div class="card-body">
                  <div class="tab-content">
                    <!-- -->
                    <div class=" tab-pane active" id="view_trainings" style="position: relative; height: auto;">

                      <table id="all_training_programs" class="table table-light table-striped">
                        <thead>
                          <tr>
                            <th><b> Training ID</b></th>
                            <th><b> Name</b></th>
                            <th><b> Type</b></th>
                            <th><b> Duration</b></t>
                            <th><b> Start Date</b></th>
                            <th><b> Create Date</b></th>
                            <th><b> Current Status</b></th>
                            <th><b> In display</b></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <!-- <td><input class="noBorder" readonly id="hslc_board__view" type="text"></td> -->
                            <td>THDBJBJFJMCS</td>
                            <td>Service Training</td>
                            <td>Basic</td>
                            <td>3 months</td>
                            <td>3/5/2020</td>
                            <td>3/5/2020</td>
                            <td>Created</td>
                            <td>Yes</td>
                            <td> <button type="button" id="#" class="btn btn-success btn-sm">Priview & Update</button>
                            </td>
                          </tr>

                        </tbody>
                      </table>
                    </div>

                    <div class="chart tab-pane" id="create_training" style="position: relative; height: auto;">
                      <div class="container">
                        <form id="training_form">
                          <div class="form-card">

                            <div class="form-row">
                              <div class="form-group col-11">
                                <p class="font-weight-bold">
                                  <label>Description about the Training Program:</label>
                                  <textarea cols="2" rows="3" class="form-control" placeholder="Write about the Program"
                                    id="training_description" name="training_description"></textarea>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Training Program Name:</label>
                              </div>
                              <div class="form-group col-6">
                                <input type="text" class="form-control" placeholder="Write name here"
                                  name="training_name" id="training_name" />
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-md-4">
                                <label>
                                  <p class="font-weight-bold">Training Program Type:
                                </label>
                              </div>

                              <div class="form-group col-md-6">
                                <select name="training_type" id="training_type" class="form-control">
                                  <option value="">Choose</option>
                                  <option value="Induction">Induction</option>
                                  <option value="Service">Service</option>
                                  <option value="Basic">Basic</option>
                                  <option value="Other">Other</option>
                                </select>
                              </div>
                            </div>

                            <div class="form-row">
                              <div class="form-group col-4">
                                <label>
                                  <p class="font-weight-bold">Training Program Duration:</p>
                                </label>
                              </div>
                              <div class="form-group col-6">
                                <input type="text" class="form-control" id="training_duration" name="training_duration"
                                  placeholder="Write duration of the program">
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <label>
                                  <p class="font-weight-bold">Training Program Start Date:</p>
                                </label>
                              </div>
                              <div class="form-group col-6">
                                <input class="form-control" type="date" name="training_start_date"
                                  id="training_start_date">
                              </div>
                            </div>

                            <div class="form-row">
                              <div class="form-group col-md-4">
                                <label>
                                  <p class="font-weight-bold">Display in Noticeboard ?
                                </label>
                              </div>

                              <div class="form-group col-md-6">
                                <select name="training_display" id="training_display" class="form-control">
                                  <option value="">Choose</option>
                                  <option value=true>Yes</option>
                                  <option value=false>No</option>
                                </select>
                              </div>
                            </div>
                            <div class="align-self-center mx-auto">
                              <button type="button" id="save_training" class="btn btn-success btn-md">SAVE</button>
                            </div>
                            <script>
                              $(document).ready(function () {

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
                                    console.log(response);
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
                                      training_prg_data += '<td>' + '<button type="button" id="#" class="btn btn-success btn-sm">Privew & Update</button>' + '</td>';
                                      training_prg_data += '</tr>';

                                    });
                                    $('#all_training_programs').append(training_prg_data);
                                  });
                                }

                                //Calling the Function at document load
                                updateAllTrainings();

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
                                    console.log(response);
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
                              });
                            </script>
                          </div>
                        </form>

                      </div>

                    </div>
                  </div>
                </div><!-- /.card-body -->
              </div>

              <!-- /.card -->

              <!-- Design form-->
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Trainees</h3>

                  <div class="card-tools">

                    <ul class="nav nav-pills ml-auto">
                      <li class="nav-item">
                        <a class="nav-link active" href="#view_trainees" data-toggle="tab">View selected</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#import_csv" data-toggle="tab">Import New</a>
                      </li>
                    </ul>

                  </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <div class="tab-content">
                    <div class="tab-pane active" id="view_trainees" style="position: relative; height: auto;">
                      <table id="" class="table table-light table-striped">
                        <thead>
                          <tr>
                            <th><b>EmployeeID</b></th>
                            <th><b>Name</b></th>
                            <th><b>Department</b></th>
                            <th><b>Designation</b></th>
                            <th><b>DDO Code</b></th>
                          </tr>
                        </thead>
                        <tbody>


                        </tbody>
                      </table>
                    </div>

                    <div class="chart tab-pane" id="import_csv" style="position: relative; height: auto;">
                      <div class="container">
                        <form id="import_trainee_form">
                          <div class="form-card">
                            <div class="form-row">
                              <div class="form-group col-4">
                                <label><b>Upload the csv file</b></label>
                              </div>
                              <div class="form-group col-4">
                                <input type="file" id="fileUpload" name="myfile">
                              </div>
                              <div class="form-group col-2">
                                <input class="btn btn-success btn-sm" type="button" id="remove" value="Remove" />
                              </div>
  
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <label>
                                  <p class="font-weight-bold">Select Training Program:</p>
                                </label>
                              </div>
                              <div class="form-group col-4">
                                <select class="custom-select text-uppercase caste" id="trainings_dropdown">
                                  <option value="">Select</option>
                                </select>
                              </div>
                              <div class="form-group col-4">
                                <input class="btn btn-primary btn-sm" type="button" id="upload" value="Upload" />
                              </div>
                            </div>
  
                          </div>
                        </form>
                        

                      </div>
                      <div class="container">
                        <table class="table table-light table-striped" id="trainee_table">
                          <thead>
                            <tr>
                              <th><b>EmployeeID</b></th>
                              <th><b>Name</b></th>
                              <th><b>Department</b></th>
                              <th><b>Designation</b></th>
                              <th><b>DDO Code</b></th>
                            </tr>
                          </thead>
                          <tbody>
                          </tbody>
                        </table>
                      </div>
                      <script type="text/javascript">
                        $(document).ready(function () {
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
                              console.log("all Trainings are", response);
                
                              PopulateDropDownList(response.data);

                            });
                          }
                          //To populate dropdownlist
                          
                          function PopulateDropDownList(data) {
                            console.log("ffrom populate",data);
                            console.log("type of data",typeof(data));
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
                            $("#remove").click(()=>{
                              $("#trainee_import_form")[0].reset();
                              $("#trainee_table tbody").remove();
                            
                            });

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
                                    trainee_data += '<td>' + '<button type="button" id="#" class="btn btn-success btn-sm">Select</button>' + '</td>';
                                    trainee_data += '<td>' + '<button type="button" id="#" class="btn btn-success btn-sm">Remove</button>' + '</td>';
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
                      
                          

                        });

                      </script>


                    </div>

                    
                  </div>

                </div>


              </div>

              <!-- /.card-body -->
              <div class="card-footer">

              </div>
              <!-- /.card-footer-->
          </div>

          <!--/.design form -->

          <!-- Centre -->
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">
                <i class="ion ion-clipboard mr-1"></i>
                centre list
              </h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">

            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
              <button type="button" class="btn btn-info float-right"><i class="fas fa-plus"></i> Add centre</button>
            </div>
          </div>
          <!-- /.card -->
      </section>
      <!-- /.Left col -->

    </div>
    <!-- /.row (main row) -->
  </div><!-- /.container-fluid -->
  </section>
  <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2020 <a href="http://adminlte.io">Amlanbrdl122</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.0.2
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->

  </aside>
  <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

  <!-- jQuery -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <script>
    $.widget.bridge('uibutton', $.ui.button)
  </script>
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- ChartJS -->
  <script src="plugins/chart.js/Chart.min.js"></script>
  <!-- Sparkline -->
  <script src="plugins/sparklines/sparkline.js"></script>
  <!-- JQVMap -->
  <script src="plugins/jqvmap/jquery.vmap.min.js"></script>
  <script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
  <!-- jQuery Knob Chart -->
  <script src="plugins/jquery-knob/jquery.knob.min.js"></script>
  <!-- daterangepicker -->
  <script src="plugins/moment/moment.min.js"></script>
  <script src="plugins/daterangepicker/daterangepicker.js"></script>
  <!-- Tempusdominus Bootstrap 4 -->
  <script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
  <!-- Summernote -->
  <script src="plugins/summernote/summernote-bs4.min.js"></script>
  <!-- overlayScrollbars -->
  <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.js"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="dist/js/pages/dashboard.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="dist/js/demo.js"></script>
  <!-- Jquery Ui plugin -->
  <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
  <!-- <script src="plugins/jquery-validation/jquery.validate.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
</body>

</html>
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
                  <h3 id="totalRegistrations"></h3>

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
                          

                        </tbody>
                      </table>
                    </div>
                    <!-- Modal to view each trainings -->
                    <div class="modal fade" id="previewTrainings" tabindex="-1" role="dialog"
                      aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle"><b>Training Program Details:</b></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Training Program ID:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_id"></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Training Description:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_description"></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Training Name:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_name"></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Training Type:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_type"></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Training Start Date:</label></p>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_start_date"></p>

                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Training Duration: </label></p>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_duration"></p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Advertise Date: </label></p>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_create_date"></p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label> Display Status:</label></p>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_display"></p>

                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Training Status:</label></p>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_status"></p>

                              </div>
                            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Modal End -->

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
                      <table id="applications_table" class="table table-light table-striped">
                        <thead>
                          <tr>
                            <th><b>EmployeeID</b></th>
                            <th><b>TrainingID</b></th>
                            <th><b>Name</b></th>
                            <th><b>Department</b></th>
                            <th><b>Designation</b></th>
                            <th><b>DDO Code</b></th>
                            <th><b>Status</b></th>
                          </tr>
                        </thead>
                        <tbody>
                         


                        </tbody>
                      </table>
                      <div class="card-footer clearfix">
                        <button type="button" id="publish" class="btn btn-info float-right"><i class="fas fa-plus"></i> Publish </button>
                      </div>
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
                              <th><button class="btn btn-sm btn-primary" id="select_all">Select All</button></th>
                              <th><button class="btn btn-sm btn-info" id="remove_all">Remove All</button></th>
                            </tr>
                          </thead>
                          <tbody>
                          </tbody>
                        </table>
                      </div>
                      


                    </div>


                  </div>

                </div>


              </div>

              <!-- /.card-body -->
              <div class="card-footer">

              </div>
              <!-- /.card-footer-->
          </div>
          <!-- Emloyee card -->
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">
                <i class="ion ion-clipboard mr-1"></i>
                Employees
              </h3>
              <div class="card-tools">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search Employee by name">
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
              <div class="container">
                <table class="table table-light table-striped" id="allEmployees">
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

            </div>
            <script>
             
            </script>

            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
              aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle"><b>Employee Details</b></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="form-row">
                      <div class="form-group col-4">
                        <p class="font-weight-bold">
                          <label>Employee ID:</label>
                      </div>
                      <div class="form-group col-6">
                        <p id="emp_id"></p>
                        </p>
                      </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-4">
                        <p class="font-weight-bold">
                          <label>Name:</label>
                      </div>
                      <div class="form-group col-6">
                        <p id="emp_name"></p>
                        </p>
                      </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-4">
                        <p class="font-weight-bold">
                          <label>Department:</label>
                      </div>
                      <div class="form-group col-6">
                        <p id="emp_dept"></p>
                        </p>
                      </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-4">
                        <p class="font-weight-bold">
                          <label>Designation:</label>
                      </div>
                      <div class="form-group col-6">
                        <p id="emp_desig"></p>
                        </p>
                      </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-4">
                        <p class="font-weight-bold">
                          <label>Join Date:</label></p>
                      </div>
                      <div class="form-group col-6">
                        <p id="emp_join_date"></p>

                      </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-4">
                        <p class="font-weight-bold">
                          <label>Original Salary: ₹</label></p>
                      </div>
                      <div class="form-group col-6">
                        <p id="emp_original_salary"></p>
                      </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-4">
                        <p class="font-weight-bold">
                          <label>Current Salary: ₹</label></p>
                      </div>
                      <div class="form-group col-6">
                        <p id="emp_current_salary"></p>
                      </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-4">
                        <p class="font-weight-bold">
                          <label> DDO code:</label></p>
                      </div>
                      <div class="form-group col-6">
                        <p id="emp_ddo_code"></p>

                      </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-4">
                        <p class="font-weight-bold">
                          <label>Region:</label></p>
                      </div>
                      <div class="form-group col-6">
                        <p id="emp_region"></p>

                      </div>
                    </div>

                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- Modal -->


            <!-- /.card-body -->
            <div class="card-footer clearfix">
              <button type="button" class="btn btn-info float-right" data-toggle="modal"
                data-target="#exampleModalCenter"><i class="fas fa-plus"></i> Add centre</button>
            </div>
          </div>
          <!-- /Employee Card End -->

          <!--/.design form -->

          <!-- Centre -->
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">
                <i class="ion ion-clipboard mr-1"></i>
                Events Handler
              </h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <div class="form-card">

                <div class="form-row">
                    <div class="form-group col-11">
                        <p class="font-weight-bold">
                            <label>Description about the event:</label>
                            <textarea cols="2" rows="3" class="form-control" placeholder="Write about the Program"
                                id="event_description" name="training_description"></textarea>
                        </p>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-4">
                        <label>
                            <p class="font-weight-bold">Event Start Date:</p>
                        </label>
                    </div>
                    <div class="form-group col-6">
                        <input class="form-control" type="date" name="training_start_date" id="event_start_date">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-4">
                        <label>
                            <p class="font-weight-bold">Event End Date:</p>
                        </label>
                    </div>
                    <div class="form-group col-6">
                        <input class="form-control" type="date" name="training_start_date" id="event_end_date">
                    </div>
                </div>
                <div class="align-self-center mx-auto">
                    <button type="button" id="sendEvent" class="btn btn-success btn-md">SAVE</button>
                </div>
    
    
            </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
              <button type="button" class="btn btn-info float-right" data-target="#previewTrainings"
                data-toggle="modal"><i class="fas fa-plus"></i> Events</button>
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
    <strong>Copyright &copy; 2020 <a href="http://adminlte.io">DOAT,Guwahati</a>.</strong>
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
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="js/admin.js"></script>
</body>

</html>
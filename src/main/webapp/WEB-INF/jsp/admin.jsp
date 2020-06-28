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
  <!-- Material icons -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- for loading animation -->
  <link rel="stylesheet" type="text/css" href="css/modal-loading.css" />
  <link rel="stylesheet" type="text/css" href="css/modal-loading-animate.css" />
  <!-- For Toaster messages -->
  <link rel="stylesheet" href="plugins/toastr/toastr.min.css">
  <script src="plugins/toastr/toastr.min.js"></script>
  <!-- My Css -->
  <link rel="stylesheet" type="text/css" href="css/adminStyle.css" />
  <!-- toggle checkbox -->
  <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
  <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
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
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a type="button" data-toggle="modal" data-target="#releaseCalendarModal" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Release Calendar</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>View Calendar</p>
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-item ">
              <a href="#notificationCard" class="nav-link">
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
     <!-- Modal to Release Calendar -->
     <div class="modal fade" id="releaseCalendarModal" tabindex="-1" role="dialog"
      aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title" id="exampleModalLongTitle"><b>Release Monthly Calendar:</b></h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
           <div class="form-row">
             <div class="form-group col-4">
               <p class="font-weight-bold">
                 <label>Select Month:</label>
             </div>
             <div class="form-group col-6">
              <select name="calendar_month" id="calendar_month" class="form-control">
                <option value="">Choose</option>
                <option value="January">January</option>
                <option value="February">February</option>
                <option value="March">March</option>
                <option value="April">April</option>
                <option value="May">May</option>
                <option value="June">June</option>
                <option value="July">July</option>
                <option value="August">August</option>
                <option value="September">September</option>
                <option value="October">October</option>
                <option value="November">November</option>
                <option value="December">December</option>
              </select>
               </p>
             </div>
           </div>
           <div class="form-row">
             <div class="form-group col-4">
               <p class="font-weight-bold">
                 <label>Select Year:</label>
             </div>
             <div class="form-group col-6">
              <select name="calendar_year" id="calendar_year" class="form-control">
                <option value="">Choose</option>
                <option value="2020">2020</option>
                <option value="2021">2021</option>
                <option value="2022">2022</option>
                <option value="2023">2023</option>
                <option value="2024">2024</option>
                
              </select>
               </p>
             </div>
           </div>
            
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" id="publishCalendar">Publish</button>
          </div>
         </div>
        
       </div>
     </div>
   
   <!-- Modal End -->

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
                  <h3 id="view_total_trainings"></h3>

                  <p>Total Training Programs</p>
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
                  <h3>0</h3>

                  <p>Total Trainees</p>
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
              <div class="row">
                <div class="col-lg-6">
                  <!-- Map card -->
                  <div class="card bg-gradient-primary">
                    <div class="card-header border-0">
                      <h3 class="card-title">
                        <i class="fas fa-map-marker-alt mr-1"></i>
                        Visitors
                      </h3>
                      <!-- card tools -->
                      <div class="card-tools">
                        <button type="button" class="btn btn-primary btn-sm daterange" data-toggle="tooltip"
                          title="Date range">
                          <i class="far fa-calendar-alt"></i>
                        </button>
                        <button type="button" class="btn btn-primary btn-sm" data-card-widget="collapse"
                          data-toggle="tooltip" title="Collapse">
                          <i class="fas fa-minus"></i>
                        </button>
                      </div>
                      <!-- /.card-tools -->
                    </div>
                    <div class="card-body">
                      <div id="world-map" style="height: 250px; width: 100%;"></div>
                    </div>
                    <!-- /.card-body-->
                    <div class="card-footer bg-transparent">
                      <div class="row">
                        <div class="col-4 text-center">
                          <div id="sparkline-1"></div>
                          <div class="text-white">Visitors</div>
                        </div>
                        <!-- ./col -->
                        <div class="col-4 text-center">
                          <div id="sparkline-2"></div>
                          <div class="text-white">Online</div>
                        </div>
                        <!-- ./col -->
                        <div class="col-4 text-center">
                          <div id="sparkline-3"></div>
                          <div class="text-white">Sales</div>
                        </div>
                        <!-- ./col -->
                      </div>
                      <!-- /.row -->
                    </div>
                  </div>
                  <!-- /.card -->
                </div>
                <div class="col-lg-6">
                  <!-- calender -->
                  <div class="card bg-gradient-success">
                    <div class="card-header border-0">

                      <h3 class="card-title">
                        <i class="far fa-calendar-alt"></i>
                        Calendar
                      </h3>
                      <!-- tools card -->
                      <div class="card-tools">
                        <!-- button with a dropdown -->
                        <div class="btn-group">
                          <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-bars"></i></button>
                          <div class="dropdown-menu float-right" role="menu">
                            <a href="#" class="dropdown-item">Add new event</a>
                            <a href="#" class="dropdown-item">Clear events</a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">View calendar</a>
                          </div>
                        </div>
                        <button type="button" class="btn btn-success btn-sm" data-card-widget="collapse">
                          <i class="fas fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-success btn-sm" data-card-widget="remove">
                          <i class="fas fa-times"></i>
                        </button>
                      </div>
                      <!-- /. tools -->
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body pt-0">
                      <!--The calendar -->
                      <div id="calendar" style="width: 100%"></div>
                    </div>
                    <!-- /.card-body -->
                  </div>
                </div>
              </div>



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
                            <th><b> Start Date</b></th>
                            <th><b> End Date</b></t>
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
                                  <label>Training End Date: </label></p>
                              </div>
                              <div class="form-group col-6">
                                <p id="prg_end_date"></p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Trainiers: </label></p>
                              </div>
                              <div class="form-group col-6">
                                <div id="prg_trainer"> </div>
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
                              <div class="form-group col-4">
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

                              <div class="form-group col-md-4">
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
                                  <p class="font-weight-bold">Training Program Start Date:</p>
                                </label>
                              </div>
                              <div class="form-group col-4">
                                <input class="form-control" type="date" name="training_start_date"
                                  id="training_start_date">
                              </div>
                            </div>

                            <div class="form-row">
                              <div class="form-group col-4">
                                <label>
                                  <p class="font-weight-bold">Training Program End Date:</p>
                                </label>
                              </div>
                              <div class="form-group col-4">
                                <input class="form-control" type="date" name="training_end_date" id="training_end_date"
                                  placeholder="Training End Date">
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <label>
                                  <p class="font-weight-bold">Training program Trainer:</p>
                                </label>
                              </div>
                              <div class="form-group col-4">
                                <div class="input-group">
                                  <input type="text" class="form-control" placeholder="Write Trainer Name and add him "
                                    id="training_prg_trainer">
                                  <div class="input-group-append">
                                    <button class="btn btn-secondary" title="Add Trainer" type="button"
                                      id="add_trainer_to_list">
                                      <i class="fa fa-plus" aria-hidden="true"></i>
                                    </button>
                                  </div>
                                </div>
                              </div>
                              <div class="form-group col-4">
                                <ul id="trainer_list_selected" class="list-group">

                                </ul>
                              </div>

                            </div>


                            <div class="form-row">
                              <div class="form-group col-md-4">
                                <label>
                                  <p class="font-weight-bold">Display in Noticeboard ?
                                </label>
                              </div>

                              <div class="form-group col-md-4">
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

              <div class="card" id="whole-card">
                <div class="card-header">
                  <h3 class="card-title">Training Application</h3>

                  <div class="card-tools">

                    <ul class="nav nav-pills ml-auto">
                      <li class="nav-item">
                        <a class="nav-link active" href="#view_trainees" data-toggle="tab"><i class="fa fa-eye"
                            aria-hidden="true"></i> View Applications </a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#import_csv" data-toggle="tab"><i class="fas fa-plus"></i> Import New
                        </a>
                      </li>
                    </ul>

                  </div>
                </div>
                <!-- /.cadrd-header -->
                <div class="card-body">
                  <div class="tab-content">
                    <div class="tab-pane active" id="view_trainees" style="position: relative; height: auto;">
                      <div id="accordian_select_objection">
                        <h3><i class="fa fa-check-square-o" aria-hidden="true"></i> Accepted Applications</h3>
                        <div>
                          <table id="applications_table" class="table table-light table-striped">
                            <thead>
                              <tr>
                                <th><b>App. Id</b></th>
                                <th><b>TrainingID</b></th>
                                <th><b>Name</b></th>
                                <th><b>Registration Id</b></th>
                                <th><b>Designation</b></th>
                                <th><b>Manager</b></th>
                                <th><b>Status</b></th>
                              
                              </tr>
                            </thead>
                            <tbody>
    
    
    
                            </tbody>
                          </table>
                        </div>
                        <h3><i class="fa fa-list" aria-hidden="true"> </i> Rejected Aplications</h3>
                        <div>
                          <table id="rejected_applications_table" class="table table-light table-striped">
                            <thead>
                              <tr>
                                <th><b>App. Id</b></th>
                                <th><b>TrainingID</b></th>
                                <th><b>Name</b></th>
                                <th><b>Registration Id</b></th>
                                <th><b>Designation</b></th>
                                <th><b>Manager</b></th>
                                <th><b>Status</b></th>
                              
                              </tr>
                            </thead>
                            <tbody>
    
    
    
                            </tbody>
                          </table>
                        </div>

                      </div>
                      
                      <div class="card-footer clearfix">
                        <button type="button" id="publish" class="btn btn-info float-right"><i class="fas fa-plus"></i>
                          Publish </button>
                      </div>
                    </div>
                    <!-- Modal to view each training Application -->
                    <div class="modal fade" id="updateApplicationModal" tabindex="-1" role="dialog"
                      aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle"><b>Training Application Details:</b></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Application Id:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="editApp_application_id"></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Registration No:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="editApp_regid" ></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Applicant Name:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="editApp_name"></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Employee Id:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="editApp_employee_id" readonly ></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Department Id:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="editApp_department_id" readonly ></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Designation:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="editApp_designation" readonly ></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Application Status:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="editApp_status" ></p>
                                </p>
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <p class="font-weight-bold">
                                  <label>Reason:</label>
                              </div>
                              <div class="form-group col-6">
                                <p id="view_reject_reason" ></p>
                                </p>
                              </div>
                            </div>



                          </div>

                          <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Modal End -->
                    <!-- Modal to send message -->
                    <div class="modal fade" id="message_applicant" tabindex="-1" role="dialog"
                      aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle"><b>Message Applicant:</b></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <div style="padding:10px">
                              <form id="msg_form">
                                <div class="form-row">
                                  <div class="form-group col-3">
                                    <p class="font-weight-bold">
                                      <label>Title:</label>
                                  </div>
                                  <div class="form-group col-9">
                                    <input class="form-control" type="text" name="msg_title" id="admin_msg_title"
                                      placeholder="Write Subject here"> </input>
                                  </div>

                                </div>
                                <div class="form-row">
                                  <div class="form-group col-12">
                                    <p class="font-weight-bold">
                                      <label>Subject:</label>
                                      <textarea cols="2" rows="3" class="form-control" placeholder="Write Subject Here"
                                        id="admin_msg_subject" name="training_description"></textarea>
                                    </p>
                                  </div>
                                </div>
                                <div class="form-row">
                                  <div class="form-group col-6">
                                    <button type="button" id="admin_msg_send" class="btn btn-sm btn-primary "><i
                                        class="fa fa-paper-plane" aria-hidden="true"></i>
                                      Send</button>
                                  </div>
                                  <div class="form-group col-6">
                                    <label class="checkbox-inline float-right">
                                      <input id="mailCheck" type="checkbox" data-toggle="toggle" chacked
                                        data-size="small"> Email
                                    </label>
                                  </div>
                                </div>



                              </form>



                            </div>

                          </div>


                        </div>
                      </div>
                    </div>
                    <!-- To email who do not have registered -->
                    <div class="modal fade" id="email_applicant" tabindex="-1" role="dialog"
                      aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle"><b>Message Applicant:</b></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <div style="padding:10px">
                              <form id="msg_form">
                                <div class="form-row">
                                  <div class="form-group col-3">
                                    <p class="font-weight-bold">
                                      <label>To:</label>
                                  </div>
                                  <div class="form-group col-9">
                                    <input class="form-control" type="email" name="email_address" id="email_address"
                                      placeholder="Applicat email address"> </input>
                                  </div>

                                </div>
                                <div class="form-row">
                                  <div class="form-group col-3">
                                    <p class="font-weight-bold">
                                      <label>Title:</label>
                                  </div>
                                  <div class="form-group col-9">
                                    <input class="form-control" type="text" name="email_title" id="admin_msg_title"
                                      placeholder="Write Subject here"> </input>
                                  </div>

                                </div>
                                <div class="form-row">
                                  <div class="form-group col-12">
                                    <p class="font-weight-bold">
                                      <label>Subject:</label>
                                      <textarea cols="2" rows="3" class="form-control" placeholder="Write Subject Here"
                                        id="email_subject" name="email_subject"></textarea>
                                    </p>
                                  </div>
                                </div>
                                <div class="form-row">
                                  <div class="form-group col-6">
                                    <button type="button" id="admin_msg_send" data-dismiss="modal" class="btn btn-sm btn-primary "><i
                                        class="fa fa-paper-plane" aria-hidden="true"></i>
                                      Send</button>
                                  </div>
                                  
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="chart tab-pane" id="import_csv" style="position: relative; height: auto;">
                      <div class="container">
                        <!-- Alert boxes start -->
                        <div class="alert alert-success" id="import-alert-success"
                          style="color: #155724;background-color: #d4edda;border-color: #c3e6cb;">
                          <button type="button" class="close" data-dismiss="alert">x</button>
                          <strong>CSV data </strong> imported succesfully
                        </div>
                        <div class="alert alert-success" id="set-alert-success"
                          style="color: #155724;background-color: #d4edda;border-color: #c3e6cb;">
                          <button type="button" class="close" data-dismiss="alert">x</button>
                          <strong>Criterias </strong> applies succesfully
                        </div>

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
                                <button class="btn btn-success btn-sm" type="button" id="remove"><i
                                    class="fa fa-minus-circle" aria-hidden="true"></i> Remove </button>

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
                                <button class="btn btn-primary btn-sm" type="button" id="upload"><i class="fa fa-upload"
                                    aria-hidden="true"></i> Upload</button>

                              </div>
                            </div>

                          </div>
                        </form>


                      </div>
                      


                        <div id="accordian">
                          <h3><i class="fa fa-cogs" aria-hidden="true"></i>
                            Set Criterias</h3>
                          <div>
                            <div class="alert alert-success"
                              style="color: #0c5460;background-color: #d1ecf1;border-color: #bee5eb;">
                              <button type="button" class="close" data-dismiss="alert">x</button>
                              <strong>Set the criterias carefully before selecting Training
                                Applications. </strong> 
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <label>
                                  <p class="font-weight-bold">Minimum years of work experience:</p>
                                </label>
                              </div>
                              <div class="form-group col-4">
                                <select name="experience_criteria" id="experience_criteria" class="form-control">
                                  <option value="">Choose</option>
                                  <option value=0>0 year after join date.</option>
                                  <option value=1>1 year after join date.</option>
                                  <option value=2>2 years after join date.</option>
                                  <option value=3>3 years after join date.</option>
                                  <option value=4>4 years after join date.</option>
                                  <option value=5>5 years after join date.</option>
                                  <option value=10>10 years after join date.</option>
                                  <option value=15>15 years after join date.</option>
                                  <option value=20>20 years after join date.</option>
                                  <option value=25>25 years after join date.</option>
                                  <option value=30>30 years after join date.</option>
                                </select>
                                
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <label>
                                  <p class="font-weight-bold">Minimum years left for retirement:</p>
                                </label>
                              </div>
                              <div class="form-group col-4">
                                
                                  <select name="retirement_criteria" id="retirement_criteria" class="form-control">
                                    <option value="">   Choose</option>
                                    <option value=0>    0 year before retire date. </option>
                                    <option value=1>    1 year before retire date. </option>
                                    <option value=2>    2 years before retire date.</option>
                                    <option value=3>    3 years before retire date.</option>
                                    <option value=4>    4 years before retire date.</option>
                                    <option value=5>    5 years before retire date.</option>
                                    <option value=10>   10 years before retire date.</option>
                                    <option value=15>   15 years before retire date.</option>
                                    <option value=20>   20 years before retire date.</option>
                                    <option value=25>   25 years before retire date.</option>
                                    <option value=30>   30 years before retire date.</option>
                                  </select>
                                
                                
                              </div>
                            </div>
                            <div class="form-row">
                              <div class="form-group col-4">
                                <label>
                                  <p class="font-weight-bold">Required Designations:</p>
                                </label>
                              </div>
                              <div class="form-group col-4">
                                <div class="input-group">
                                  <input type="text" class="form-control" placeholder="Write Trainer Name and add him "
                                    id="criteria_desig">
                                  <div class="input-group-append">
                                    <button class="btn btn-secondary btn-sm" title="Add Designation" type="button"
                                      id="criteria_add_desig">
                                      <i class="fa fa-plus" aria-hidden="true"></i>
                                    </button>
                                  </div>
                                </div>
                              </div>
                              <div class="form-group col-4">
                                <ul id="criteria_desig_list" class="list-group">

                                </ul>
                              </div>

                            </div>
                            <div class="form-row">
                              <div class="form-group col-6">
                                <button class="btn btn-primary  float-right" title="set criteria" type="button"
                                  id="criteria_set">
                                  <i class="fa fa-cog" aria-hidden="true"></i>

                                </button>
                              </div>
                              <div class="form-group col-6">
                                <button class="btn btn-primary " title="reset criteria" type="button"
                                  id="criteria_reset">
                                  <i class="fa fa-recycle" aria-hidden="true"></i>
                                </button>
                              </div>
                            </div>


                          </div>


                          <h3 id="importedData"><i class="fa fa-list" aria-hidden="true"></i>
                            Imported Candidates</h3>
                          <div >
                            <table class="table table-light table-striped" id="trainee_table">
                              <thead>
                                <tr>
                                  <th><b>EmployeeID</b></th>
                                  <th><b>Name</b></th>
                                  <th><b>Join Date</b></th>
                                  <th><b>Department</b></th>
                                  <th><b>Designation</b></th>
                                  <th><b>Retire Date</b></th>
                                  <th><b>Email</b></th>
                                  <th><button class="btn btn-primary btn-sm" type="button" id="select_all"
                                      value="select_all"><i class="fa fa-check-square-o" aria-hidden="true"></i>
                                      All</button></i>
                                  </th>
                                </tr>
                              </thead>
                              <tbody>
                              </tbody>
                            </table>

                          </div>
                          <h3><i class="fa fa-list" aria-hidden="true"></i> Registered Pending Candidates</h3>
                          <div>
                            <table class="table table-light table-striped" id="registered_applications_table">
                              <thead>
                                <tr>
                                  <th><b>App.Id</b></th>
                                  <th><b>Training Program</b></th>
                                  <th><b>EmployeeID</b></th>
                                  <th><b>Registration Id</b></th>
                                  <th><b>Name</b></th>
                                  <th><b>Apply Date</b></th>                               
                                  <th><b>App. Status</b></th>
                                  <th><button class="btn btn-primary btn-sm" type="button" id="select_all"
                                      value="select_all"><i class="fa fa-check-square-o" aria-hidden="true"></i>
                                      All</button></i>
                                  </th>
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
                  <input type="text" class="form-control" placeholder="Search Employee by name"
                    id="search_employee_byId">
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
             
                <table class="table table-light table-striped" id="allEmployees">
                  <thead>
                    <tr>
                      <th><b>EmployeeID</b></th>
                      <th><b>Name</b></th>
                      <th><b>Join Date</b></th>
                      <th><b>Department</b></th>
                      <th><b>Designation</b></th>
                      <th><b>Retire Date</b></th>
                      <th><b>DDO Code</b></th>
                      <th><b>Manager</b></th>
                    </tr>
                  </thead>
                  <tbody>
                  </tbody>
                </table>


            </div>


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
              <button type="button" class="btn btn-info float-right"><i class="fas fa-plus"></i> Add centre</button>
            </div>
          </div>
          <!-- /Employee Card End -->

          <!--/.design form -->

          <!-- Centre -->
          <div class="card" id="notificationCard">
            <div class="card-header">
              <h3 class="card-title">
                <i class="ion ion-clipboard mr-1"></i>
                Notifications
              </h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body" style="overflow-y: scroll;
            height:350px;
            padding: 1rem">
              <div class="container">
                <div id="admin_notifications">

                </div>
              </div>
            
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
              <button type="button" class="btn btn-info float-right" ><i class="fas fa-plus"></i> Events</button>
            </div>
          </div>
          <!-- View Msend message modal -->
          <div class="modal fade" id="admin_sent_msg_details" tabindex="-1" role="dialog"
          aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                  <div class="modal-header" style="padding: 1px;">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
                  <div class="modal-body" style="padding:0px">
                      <div id="sendMsgAccordion">
                          <h3><i class="fa fa-envelope" aria-hidden="true"></i> Send Message Details
                          </h3>
                          <div>
                              <div class="form-row">
                                  <div class="form-group col-6">
                                      <p class="font-weight-bold">
                                          <label>TO:</label>
                                  </div>
                                  <div class="form-group col-6">
                                      <p style="color: green;" id="send_msg_to"></p>
                                  </div>

                              </div>
                              <div class="form-row">
                                  <div class="form-group col-12">
                                      <p class="font-weight-bold">
                                          <label>SUBJECT:</label>
                                      <p style="color: green;" id="send_msg_sub"></p>
                                      </p>
                                  </div>
                              </div>
                              <div class="form-row">
                                  <div class="form-group col-6">
                                      <p class="font-weight-bold">
                                          <label>Refference Application Id:</label></p>
                                  </div>
                                  <div class="form-group col-6">
                                      <p style="color: green;" type="text" id="send_msg_ref_app_id"></p>

                                  </div>
                              </div>

                              <div class="form-row">
                                  <div class="form-group col-6">
                                      <p class="font-weight-bold">
                                          <label>Time:</label>
                                  </div>
                                  <div class="form-group col-6">
                                      <p style="color: green;" id="send_msg_time"></p>
                                      </p>
                                  </div>
                              </div>
                              <div class="form-row">
                                  <div class="form-group col-6">
                                      <p class="font-weight-bold">
                                          <label>Date:</label></p>
                                  </div>
                                  <div class="form-group col-6">
                                      <p style="color: green;" id="send_msg_date"></p>

                                  </div>
                              </div>
                          </div>
                      </div>


                  </div>


              </div>
          </div>
          </div>
          <div class="modal fade" id="toAdmin_msg_details" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="padding: 1px;">
                            <!-- <h5 class="modal-title" id="exampleModalLongTitle"><b>Notification Details:</b></h5> -->
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body" style="padding:0px">

                            <div id="replyAccordion">
                                <h3><i class="fa fa-envelope" aria-hidden="true"></i> Message
                                </h3>
                                <div>
                                    <div class="form-row">
                                        <div class="form-group col-6">
                                            <p class="font-weight-bold">
                                                <label>FROM:</label>
                                        </div>
                                        <div class="form-group col-6">
                                            <p style="color: green;" id="msg_from"></p>
                                        </div>

                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-12">
                                            <p class="font-weight-bold">
                                                <label>SUBJECT:</label>
                                            <p style="color: green;" id="the_msg"></p>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-6">
                                            <p class="font-weight-bold">
                                                <label>Refference Application Id:</label></p>
                                        </div>
                                        <div class="form-group col-6">
                                            <p style="color: green;" type="text" id="msg_ref_app_id"></p>

                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-6">
                                            <p class="font-weight-bold">
                                                <label>Time:</label>
                                        </div>
                                        <div class="form-group col-6">
                                            <p style="color: green;" id="msg_time"></p>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-6">
                                            <p class="font-weight-bold">
                                                <label>Date:</label></p>
                                        </div>
                                        <div class="form-group col-6">
                                            <p style="color: green;" id="msg_date"></p>

                                        </div>
                                    </div>
                                </div>
                                
                            </div>

                        </div>


                    </div>
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
      <b>Version</b> 1.0
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
  <!-- to add sweet alerts -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <!-- loading animation  -->
  <script type="text/javascript" src="js/modal-loading.js"></script>
  <script src="js/admin.js"></script>
</body>

</html>
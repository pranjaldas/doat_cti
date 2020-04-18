<!DOCTYPE html>
<html lang="">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CTI</title>
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/style.css" />   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/carousel.js"></script>
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
    <div class="header content">
        <a href ="index.html"><img src="img/assam.png" class="title-logo" width="120" height="140" alt="Home"></a>
        <div class="titles">
          <p class="title"><b>CENTRAL TRAINING INSTITUTE (CTI)</b></p>
          <p class="subtitle"></p><b>Bhawan,Ganeshguri,Assam-781006</b></p>
        </div>
      </div>

<div class="container-fluid"  >
        <nav class="navbar navbar-expand-md bg-primary navbar-dark" style="margin-top: 10px; margin-bottom: 10px; border-radius: 10px;">
          
          
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




            <div class="container" id="con">

                <div class="card" id="new">
          
          
                  <div class="card-header" style="background: rgb(74, 212, 236) ; padding: 5px; border-radius: 20px;">
                    <h4 align ="center"><strong>Selected Candidate</strong></h4>
                </div>
                <div class="card-body">
                <table class="table table-light table-striped" id="trainee_table">
                  <thead>
                    <tr>
                      <th><b>Name</b></th>
                      <th><b>Degignation</b></th>
                      <th><b>EmpID</b></th>
                      <th><b>DDO_No</b></th>
                      <th><b>Traning Program</b></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <!-- <td><input class="noBorder" readonly id="hslc_board__view" type="text"></td> -->
                      <td>John</td>
                      <td>Doe</td>
                      <td>545454</td>
                      <td>Doe</td>
                      <td>john@example.com</td>
                    </tr>
                    <tr>
                      <td>Mary</td>
                      <td>Moe</td>
                      <td>545454</td>
                      <td>Doe</td>
                      <td>mary@example.com</td>
                    </tr>
                    <tr>
                      <td>July</td>
                      <td>Dooley</td>
                      <td>545454</td>
                      <td>Doe</td>
                      <td>july@example.com</td>
                    </tr>
                  </tbody>
                </table>
                </div>
          
                  </div></div>


            <div class="footer">
              <p>© 2020 Copyright:<a href="#"> DOAT</a>
              </p>
          </div>
          <script>
          <div class="container">
          <h2>Json data array to table Conversion</h2>
                    
          <table class="table" id="trainee_table">
            <thead>
              <tr>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>Email</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>John</td>
                <td>Doe</td>
                <td>john@example.com</td>
              </tr>
              <tr>
                <td>Mary</td>
                <td>Moe</td>
                <td>mary@example.com</td>
              </tr>
              <tr>
                <td>July</td>
                <td>Dooley</td>
                <td>july@example.com</td>
              </tr>
            </tbody>
          </table>
        </div>

      

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script>
  $(document).ready(function(){
	var data=[];
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
	         var trainee_data='';
	         $.each(response.data, function(key,value){
	           trainee_data+='<tr>';
	           trainee_data+='<td>'+value.trainee_name+'</td>';
	           trainee_data+='<td>'+value.designation+'</td>';
	           trainee_data+='<td>'+value.ddo_code+'</td>';
	           trainee_data+='<td>'+value.employee_id+'</td>';     
	           trainee_data+='<td>'+value.training_program_id+'</td>';
	           trainee_data+='</tr>';
	         });
	        $('#trainee_table').append(trainee_data);
	     });    

  });
 </script>
    
</body>
<%--
  ~ Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
  ~ @Author: Pranjal Das
  --%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="widthdevice-width, initial-scale=1">
    <title>MainDashboard</title>
    <!-- Amlan Dependencies -->
    <!--bootstrap css framework-->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/dashstyle.css">
    <!--jquery cdn-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <!-- Amlan Dependencies end -->
    <!-- Pranjal Dependencies-->

    <!--Document Validation -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>


    <script type="text/javascript">
        // function Validate()
        // {
        //      var image =document.getElementById("image").value;
        //      if(image!='')
        //      {
        //            var checkimg = image.toLowerCase();
        //           if (!checkimg.match(/(\.jpg|\.png|\.JPG|\.PNG)$/)){ // validation of file extension using regular expression before file upload
        //               document.getElementById("image").focus();
        //               document.getElementById("errorName5").innerHTML="Wrong file selected"; 
        //               return false;
        //            }
        //             var img = document.getElementById("image"); 
        //             // alert(img.files[0].size);
        //             if(img.files[0].size <  51200)  // validation according to file size
        //             {
        //                 document.getElementById("errorName5").innerHTML="Image size less than 50kb";
        //                 return false;
        //             }
        //             if(img.files[0].size > 307200)
        //             {
        //                 document.getElementById("errorName5").innerHTML="Image size more than 300kb";
        //                 return false;
        //             }

        //         return document.getElementById("errorName4").innerHTML="Image Accepted";

        //       }


        function validateImage(id, flag_id) {
            var formData = new FormData();

            var file = document.getElementById(id).files[0];

            formData.append("Filedata", file);
            var t = file.type.split('/').pop().toLowerCase();
            if (t != "jpeg" && t != "jpg" && t != "png" && t != "bmp" && t != "gif") {
                alert('Wrong image format, please select in .jpg, .png, .jpeg format');
                document.getElementById(id).value = '';
                return false;
            }
            if (file.size > 51200) {
                alert('Image size less than 50kb');
                document.getElementById(id).value = '';
                return false;
            }
            if (img.files[0].size > 307200) {
                alert('Image size more than 300kb');
                document.getElementById(id).value = '';
                return false;
            }
            return document.getElementById("flag_id").innerHTML = "Image Accepted";
        }
    </script>
    <!-- Pranjal Dependencies end-->
</head>
<body>
<!--Header-->

<div class="header">
    <nav class="navbar navbar-expand-lg navbar-light">
        <!--logo-->
        <div class="logo">
            <a class="navbar-brand" href="a"><img src="../img/assa.png"></a>
        </div>
        <!--logo-tag-->
        <div class="info">
            <a class="navbar-brand"><strong>Directorate Of Accounts And Treasuries</strong><br>Kar
                Bhawan,Ganeshguri,Assam-781006</a>
        </div>
        <!--collapse-btn-->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!--collapse-info-->
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto ">
                <li class="nav-item ">
                    <a class="nav-link " href="firstpage.html">Home</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="#">About</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="#">Contact</a>
                </li>
            </ul>
        </div>
    </nav>
</div>

<!--tablayout-->
<section id="tabs">
    <div class="container mb-3 ">

        <nav>
            <div class="nav nav-tabs  nav-justified" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
                   aria-controls="nav-home" aria-selected="true"><strong>STEP-1</strong></a>
                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
                   aria-controls="nav-profile" aria-selected="false"><strong>STEP-2</strong></a>
                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab"
                   aria-controls="nav-contact" aria-selected="false"><strong>STEP-3</strong></a>
                <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab"
                   aria-controls="nav-about" aria-selected="false"><strong>STEP-4</strong></a>
            </div>
        </nav>
        <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <div class="card bg-light ">
                    <div class="card-header"><h1>Personal details:</h1></div>
                    <div class="card-body">
                        <form>
                            <!-- Name starts here -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Name:</b></label>
                                </div>
                                <div class="form-group col-md-4">

                                    <input type="text" class="form-control" placeholder="First name">
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" placeholder="Last name">
                                </div>

                            </div>

                            <!-- Fathers Name starts here -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Father's name:</b></label>
                                </div>
                                <div class="form-group col-md-4">

                                    <input type="text" class="form-control" placeholder="First name">
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" placeholder="Last name">
                                </div>
                            </div>

                            <!-- Mother's Name starts here -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Mother's name:</b></label>
                                </div>
                                <div class="form-group col-md-4">

                                    <input type="text" class="form-control" placeholder="First name">
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" placeholder="Last name">
                                </div>
                            </div>
                            <!-- Date of Birth -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Date of Birth:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" placeholder="Date of Birth">
                                </div>

                            </div>

                            <!-- Gender -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Gender:</b></label>
                                </div>
                                <div class="form-group col-md-8">
                                    <div class="form-group row-md-4">
                                        <div class="form-check-inline">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="gender">Male
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group row-md-4">
                                        <div class="form-check-inline">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="gender">Female
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group row-md-4">
                                        <div class="form-check-inline">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="gender">Others
                                            </label>
                                        </div>
                                    </div>


                                </div>

                            </div>
                            <!-- Religion -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Religion:</b></label>
                                </div>
                                <div class="form-group col-md-4">

                                    <input type="text" class="form-control" placeholder="Religion">
                                </div>

                            </div>
                            <!-- Category -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Category:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button"
                                                id="dropdownMenuButton"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Select Caste
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

                                            <a class="dropdown-item" href="#">General</a>
                                            <a class="dropdown-item" href="#">SC</a>
                                            <a class="dropdown-item" href="#">OBC</a>
                                            <a class="dropdown-item" href="#">MOBC</a>
                                            <a class="dropdown-item" href="#">EWC</a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                            <!-- Naationality -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Nationality:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" placeholder="Nationality">
                                </div>
                            </div>
                            <!-- Marital Status -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Marital Status:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value=""> Married
                                        </label>
                                    </div>

                                </div>
                                <div class="form-group col-md-4">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value=""> Unmarried
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- PRC -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Are you permanent Resident of
                                        India?</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value=""> Yes
                                        </label>
                                    </div>

                                </div>
                                <div class="form-group col-md-4">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value=""> No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- Handicaped -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Are you physically disabled ?</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value=""> Yes
                                        </label>
                                    </div>

                                </div>
                                <div class="form-group col-md-4">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value=""> No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- Experienced -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Are you currently working ?</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value=""> Yes
                                        </label>
                                    </div>

                                </div>
                                <div class="form-group col-md-4">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" value=""> No
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <!-- Button -->
                            <div class="form-row">
                                <div class="align-self-center mx-auto">
                                    <button type="button" class="btn btn-success btn-lg">Save & Next</button>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                <div class="card bg-light mb-3 ">
                    <div class="card-header">
                        <h1>Address:</h1>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group col-11">
                                <label for="inputAddress">
                                    <p class="font-weight-bold">Permanent Address:</p>
                                </label>
                                <textarea name="" id="inputAddress" cols="2" rows="3" class="form-control"></textarea>
                            </div>
                            <div class="form-group col-11">
                                <label for="inputAddress2">
                                    <p class="font-weight-bold">Corrospondance Address:</p>
                                </label>
                                <textarea name="" id="inputAddress" cols="2" rows="3" class="form-control"></textarea>
                            </div>
                            <div class="form-group col-4">
                                <label for="inputAddress2">
                                    <p class="font-weight-bold">City/Town:</p>
                                </label>
                                <input type="text" class="form-control" id="inputcity" placeholder="Enter City or Town">
                            </div>
                            <div class="form-group col-4">
                                <label for="inputAddress3">
                                    <p class="font-weight-bold">District:</p>
                                </label>
                                <input type="text" class="form-control" id="inputcity" placeholder="Enter Distict">
                            </div>
                            <div class="form-row"></div>
                            <div class="form-group col-md-3">
                                <label for="inputState">
                                    <p class="font-weight-bold">State:
                                </label>
                                <select id="inputState" class="form-control">
                                    <option selected>Choose</option>
                                    <option>Assam</option>
                                </select>


                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputZip">
                                    <p class="font-weight-bold">Zip:</p>
                                </label>
                                <input type="text" class="form-control" id="inputZip">
                            </div>

                            <!-- Button -->
                            <div class="form-row">
                                <div class="align-self-center">
                                    <button type="button" class="btn btn-success btn-lg">Pevious and Edit</button>
                                </div>
                                <div class="align-self-center mx-auto">
                                    <button type="button" class="btn btn-success btn-lg">Save and Next</button>
                                </div>
                            </div>
                        </form>
                    </div>


                </div>
            </div>
            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                <div class="card bg-light mb-3 ">
                    <div class="card-header">
                        <h1>Qualification:</h1>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label for="formGroupExampleInput"><b>10th/EQUIVALENT:</b></label>
                                </div>
                                <div class="form-group col-md-3">

                                    <input type="text" class="form-control" placeholder="BOARD/UNIVERSITY/INSTITUTE">
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" placeholder="SUBJECT">
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" placeholder="PERCENTAGE/CGPA">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label for="formGroupExampleInput"><b>12th/EQUIVALENT:</b></label>
                                </div>
                                <div class="form-group col-md-3">

                                    <input type="text" class="form-control" placeholder="BOARD/UNIVERSITY/INSTITUTE">
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" placeholder="STREAM">
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" placeholder="PERCENTAGE/CGPA">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label for="formGroupExampleInput"><b>GRADUATION:</b></label>
                                </div>
                                <div class="form-group col-md-3">

                                    <input type="text" class="form-control" placeholder="BOARD/UNIVERSITY/INSTITUTE">
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" placeholder="SPECIFICATION">
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" placeholder="PERCENTAGE/CGPA">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text" for="inputGroupSelect01"><b>DIPLOMA</b></label>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01">
                                        <option selected>Choose</option>
                                        <option value="1">YES</option>
                                        <option value="2">NO</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <div class="align-self-center">
                                        <button type="button" class="btn btn-success btn-lg">Pevious and Edit</button>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="align-self-center">
                                        <button type="button" class="btn btn-success btn-lg">Save and Next</button>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--doc upload-->
            <div class="tab-pane fade" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                <div class="card bg-light mb-3 ">
                    <div class="card-header"><h1>Documents Upload:</h1></div>
                    <div class="card-body">
                        <form>
                            <!-- Photo -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Photo:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="file" name="f[]" id="photo" accept="image/*"
                                           onchange="validateImage('photo','photo_accept')">

                                </div>
                                <div class="form-group col-md-4">

                                </div>


                            </div>

                            <!-- Signature -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Signature:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="file" name="f[]" id="signature" accept="image/*"
                                           onchange="validateImage('signature')">
                                </div>
                                <div class="form-group col-md-4">
                                    <span id="errorName5" style="color: red;"></span>
                                    <span id="" style="color:black;"></span>
                                </div>
                            </div>
                            <!-- HSLC -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>HSLC marksheet:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="file" name="f[]" id="hslc" accept="image/*"
                                           onchange="validateImage('hslc')">
                                </div>
                                <div class="form-group col-md-4">
                                    <span id="errorName5" style="color: red;"></span>
                                    <span id="" style="color:black;"></span>
                                </div>
                            </div>
                            <!-- HS -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>HS marksheet:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="file" name="f[]" id="hs" accept="image/*"
                                           onchange="validateImage('hs')">
                                </div>
                                <div class="form-group col-md-4">
                                    <span id="errorName5" style="color: red;"></span>
                                    <span style="color:black;"></span>
                                </div>
                            </div>
                            <!-- Degree Marksheet -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Digree marksheet:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="file" name="f[]" id="degree" accept="image/*"
                                           onchange="validateImage('degree')">
                                </div>
                                <div class="form-group col-md-4">
                                    <span id="errorName5" style="color: red;"></span>
                                    <span style="color:black;"></span>
                                </div>
                            </div>
                            <!-- Disability Certificate -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Disability Certificate:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="file" name="f[]" id="disability" accept="image/*"
                                           onchange="validateImage('disability')">
                                </div>
                                <div class="form-group col-md-4">
                                    <span id="errorName5" style="color: red;"></span>
                                    <span style="color:black;"></span>
                                </div>
                            </div>
                            <!-- Experience Certificate -->
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="formGroupExampleInput"><b>Experience Certificate:</b></label>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="file" name="f[]" id="experience" accept="image/*"
                                           onchange="validateImage('experience')">
                                </div>
                                <div class="form-group col-md-4">
                                    <span id="errorName5" style="color: red;"></span>
                                    <span style="color:black;"></span>
                                </div>
                            </div>


                            <!-- Button -->
                            <div class="form-row">
                                <div class="align-self-center mx-auto">
                                    <button type="button" class="btn btn-success btn-lg">Save and Next</button>
                                </div>


                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>


<!--footer-->
<div class="footer">
    <p>© 2020 Copyright:
        <a href="#"> DOAT</a>
    </p>
</div>


</body>
</html>

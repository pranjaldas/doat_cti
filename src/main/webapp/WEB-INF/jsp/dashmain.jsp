<%--
  ~ Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
  ~ @Author: Pranjal Das
  --%>

<%--
  Created by IntelliJ IDEA.
  User: Amlan
  Date: 11-03-2020
  Time: 03:17 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="widthdevice-width, initial-scale=1">
    <title>MainDashboard</title>
    <!-- Amlan Dependencies -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/dashstyle.css">
    <!--bootstrap css framework-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!--jquery cdn-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link type="text/css" href="lib/dashstyle.css" rel="stylesheet">
    <!-- Amlan Dependencies end -->
    <!-- Pranjal Dependencies -->
    <!--Document Validation -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <link rel="stylesheet" type="text/css" href="lib/bootstrap.min.css">
</head>

<body>
<!--Header-->

<div class="header">
    <nav class="navbar navbar-expand-lg navbar-light">
        <!--logo-->
        <div class="logo">
            <a class="navbar-brand" href="a"><img src="img/assa.png"></a>
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

<!-- MultiStep Form -->
<div class="container-fluid md-3" id="grad1">
    <p><strong>Fill all form field to go to next step</strong></p>
    <div class="row"></div>
    <div class="col-md-11 mx-0">
        <form id="msform">
            <!-- progressbar -->
            <ul id="progressbar">
                <li class="active" id="personal"><strong>Personal Information</strong></li>
                <li id="address"><strong>Address</strong></li>
                <li id="education"><strong>Education Qualification</strong></li>
                <li id="upload"><strong>Document Upload</strong></li>
                <li id="complete"><strong>Submit</strong></li>
                <li id="confirm"><strong>Finish</strong></li>
            </ul>

            <!-- fieldsets -->

            <fieldset action="/postDetails" object="personalDetails" method="POST">

                <div class="form-card">

                    <!-- Name starts here -->
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label for="formGroupExampleInput"><b>Full Name:</b></label>
                        </div>
                        <div class="form-group col-md-3">

                            <input type="text" class="form-control" placeholder="First name" name="fname" required>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="text" class="form-control" placeholder="Middle name" name="mname">
                        </div>
                        <div class="form-group col-md-3">
                            <input type="text" class="form-control" placeholder="Last name" name="lname" required>
                        </div>
                    </div>
                    <!-- Fathers Name starts here -->
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label for="formGroupExampleInput"><b>Father's name:</b></label>
                        </div>
                        <div class="form-group col-md-6">

                            <input type="text" class="form-control" placeholder="Father name" name="father" required>
                        </div>


                    </div>
                    <!-- Mother's Name starts here -->
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label for="formGroupExampleInput"><b>Mother's name:</b></label>
                        </div>
                        <div class="form-group col-md-6">

                            <input type="text" class="form-control" placeholder="Mother name" name="mother" required>
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
                                        <input type="radio" class="form-check-input" value="Male" name="gender">Male
                                    </label>
                                </div>
                            </div>
                            <div class="form-group row-md-4">
                                <div class="form-check-inline">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" value="Female" name="gender">Female
                                    </label>
                                </div>
                            </div>
                            <div class="form-group row-md-4">
                                <div class="form-check-inline">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" value="Others" name="gender">Others
                                    </label>
                                </div>
                            </div>


                        </div>

                    </div>
                    <!-- Religion -->
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="job_title"><strong>Religion:</strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                        </div>
                        <div class="form-group col-md-4">

                            <select class="custom-select text-uppercase caste" id="religion" name="religion" required>
                                <option>Select</option>
                                <option value="Hindu">Hindu</option>
                                <option value="muslim">Muslim</option>
                                <option value="christian">Christian</option>
                                <option value="other">other</option>
                            </select>
                        </div>

                    </div>
                    <!-- Category -->
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="job_title"><strong>Caste:</strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                        </div>

                        <div class="form-group col-md-4">
                            <select class="custom-select text-uppercase caste" id="category" name="category" required>
                                <option>Select</option>
                                <option value="General">General</option>
                                <option value="OBC">OBC</option>
                                <option value="ST">ST</option>
                                <option value="SC">SC</option>
                            </select>

                        </div>
                    </div>
                    <!-- Nationality -->
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="formGroupExampleInput"><b>Nationality:</b></label>
                        </div>
                        <div class="form-group col-md-4">
                            <input type="text" class="form-control" name="nationality" placeholder="Nationality">
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
                                    <input type="radio" class="form-check-input" value="Married" name="marital_status">Married
                                </label>
                            </div>

                        </div>
                        <div class="form-group col-md-4">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" value="Unmarried"
                                           name="marital_status">Unmarried
                                </label>
                            </div>
                        </div>
                    </div>
                    <!-- PRC -->
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="formGroupExampleInput"><b>Are you permanent Resident of India?</b></label>
                        </div>
                        <div class="form-group col-md-4">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" value="Yes" name="prc_status">Yes
                                </label>
                            </div>

                        </div>
                        <div class="form-group col-md-4">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" value="No" name="prc_status">No
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
                                    <input type="radio" class="form-check-input" value="Yes" name="disability_status">Yes
                                </label>
                            </div>

                        </div>
                        <div class="form-group col-md-4">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" value="No" name="disability_status">No
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
                                    <input type="radio" class="form-check-input" value="Yes"
                                           name="currently_working_status">Yes
                                </label>
                            </div>

                        </div>
                        <div class="form-group col-md-4">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" value="No"
                                           name="currently_working_status">No
                                </label>
                            </div>
                        </div>
                    </div>


                </div>
                <input type="submit" name="next" class="next action-button" value="Next Step"/>

            </fieldset>

            <fieldset>
                <div class="form-card">

                    <div class="form-group col-11">
                        <p class="font-weight-bold">
                            <label for="residential_address">Current Address</label>
                            <textarea cols="2" rows="3" class="form-control" placeholder="Enter address"
                                      name="residential_address" id="residential_address" required></textarea>
                        </p>
                    </div>
                    <div class="form-group col-11">
                        <p class="font-weight-bold">
                            <label for="residential_pin">Current Pin code</label>
                            <input type="text" placeholder="Enter Pincode" name="residential_pin" id="residential_pin"
                                   required/>
                        </p>
                    </div>
                    <div class="form-group col-11">
                        <label for="same_residential_permanent"><strong>If Permanent address is as Cureent
                            address</strong></label>
                        <input type="checkbox" name="same_residential_permanent" id="same_residential_permanent"
                               value="abcde" onclick="return auto_fill_address();"/>
                    </div>
                    <div class="form-group col-11">
                        <p class="font-weight-bold">
                            <label for="permanent_address">Parmanent Address</label>
                            <textarea cols="2" rows="3" class="form-control" placeholder="Enter  address"
                                      name="permanent_address" id="permanent_address"></textarea>
                        </p>
                    </div>
                    <div class="form-group col-11">
                        <p class="font-weight-bold">
                            <label for="permanent_pincode">Parmanent Pincode</label>
                            <input type="text" placeholder="Enter pincode" name="permanent_pincode"
                                   id="permanent_pincode"/>
                        </p>
                    </div>
                    <div class="form-group col-4">
                        <label for="inputAddress2"><p class="font-weight-bold">City/Town:</p></label>
                        <input type="text" class="form-control" id="inputcity" placeholder="Enter City or Town"
                               required>
                    </div>
                    <div class="form-row"></div>
                    <div class="form-group col-md-3">
                        <label for="inputState"><p class="font-weight-bold">District:</label>
                        <select id="inputState" class="form-control">
                            <option selected>Choose</option>
                            <option>1</option>
                        </select>
                    </div>

                    <div class="form-row"></div>
                    <div class="form-group col-md-3">
                        <label for="inputState"><p class="font-weight-bold">State:</label>
                        <select id="inputState" class="form-control">
                            <option selected>Choose</option>
                            <option>Assam</option>
                        </select>


                    </div>

                </div>
                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                <input type="button" name="next" class="next action-button" value="Next Step"/>
            </fieldset>


            <fieldset>
                <div class="form-card">
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
                            <div class="input-group">
                                <label class="input-group-text" for="inputGroupSelect01"><b>DIPLOMA</b></label>
                            </div>
                            <select class="custom-select" id="inputGroupSelect01">
                                <option selected>Choose</option>
                                <option value="1">YES</option>
                                <option value="2">NO</option>
                            </select>
                        </div>
                    </div>
                </div>
                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                <input type="button" name="next" class="next action-button" value="Next Step"/>
            </fieldset>

            <fieldset>
                <div class="form-card">
                    <!-- Photo -->
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="formGroupExampleInput"><b>Photo:</b></label>
                        </div>
                        <div class="form-group col-md-4">
                            <input type="file" name="f[]" id="photo" accept="image/*"
                                   onchange="validateImage('photo','photo_accept')">

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
                            <input type="file" name="f[]" id="hslc" accept="application/pdf"
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
                            <input type="file" name="f[]" id="hs" accept="application/pdf"
                                   onchange="validateImage('hs')">
                        </div>
                        <div class="form-group col-md-4">
                            <span id="errorName5" style="color: red;"></span>
                            <span id="" style="color:black;"></span>
                        </div>
                    </div>
                    <!-- Degree Marksheet -->
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="formGroupExampleInput"><b>Digree marksheet:</b></label>
                        </div>
                        <div class="form-group col-md-4">
                            <input type="file" name="f[]" id="degree" onchange="validateImage('degree')">
                        </div>
                        <div class="form-group col-md-4">
                            <span id="errorName5" style="color: red;"></span>
                            <span id="" style="color:black;"></span>
                        </div>
                    </div>
                    <!-- Disability Certificate -->
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="formGroupExampleInput"><b>Disability Certificate:</b></label>
                        </div>
                        <div class="form-group col-md-4">
                            <input type="file" name="f[]" id="disability" onchange="validateImage('disability')">
                        </div>
                        <div class="form-group col-md-4">
                            <span id="errorName5" style="color: red;"></span>
                            <span id="" style="color:black;"></span>
                        </div>
                    </div>
                    <!-- Experience Certificate -->
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="formGroupExampleInput"><b>Experience Certificate:</b></label>
                        </div>
                        <div class="form-group col-md-4">
                            <input type="file" name="f[]" id="experience" onchange="validateImage('experience')">
                        </div>
                        <div class="form-group col-md-4">
                            <span id="errorName5" style="color: red;"></span>
                            <span id="" style="color:black;"></span>
                        </div>
                    </div>

                </div>
                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>

                <input type="button" name="next" class="next action-button" value="Submit"/>
            </fieldset>


            <fieldset>
                <div class="form-card">
                    <div class="form-row">
                        <div class="form-group col-md-10">
                            <script>
                                $("#summary").html($("myForm").serialize());
                            </script>
                            <h3><b>You Have Successfully comple your form fillup</b></h3><br>
                            <h4>Do you want to submit the details</h4><br><br>
                            <h5><strong>Note:</strong>After final submit you cannot edi tyour details</h5>

                        </div>

                    </div>

                </div>
                <input type="button" name="previous" class="previous action-button-previous" value="Edit Details"/>
                <input type="button" name="next" class="next action-button" value="Final Submit"/>
            </fieldset>


            <fieldset>
                <div class="form-card">
                    <h2 class="fs-title text-center">Success !</h2> <br><br>
                    <div class="row justify-content-center">
                        <div class="col-3"><img src="https://img.icons8.com/color/96/000000/ok--v2.png"
                                                class="fit-image"></div>
                    </div>
                    <br><br>
                    <div class="row justify-content-center">
                        <div class="col-7 text-center">
                            <h5>You Have Successfully submited your details.</h5><br>
                            <h4>Thank You!!!</h4>
                        </div>
                    </div>
                </div>
            </fieldset>
        </form>
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


</body>

<script type="text/javascript">
    function auto_fill_address() {
        var same_addr = document.getElementById("same_residential_permanent").checked;
        var resaddr = document.getElementById("residential_address").value;
        var respin = document.getElementById("residential_pin").value;
        //alert(x);
        if (same_addr) {
            if ((resaddr == '' || resaddr == null) || (respin == '' || respin == null)) {
                alert('please fill address and pincode');
                document.getElementById("same_residential_permanent").checked = false;
            } else {
                document.getElementById("permanent_address").value = resaddr;
                document.getElementById("permanent_pincode").value = respin;
            }
        } else {
            document.getElementById("permanent_address").value = '';
            document.getElementById("permanent_pincode").value = '';
        }
    }
</script>


<script>
    $(document).ready(function () {

        var current_fs, next_fs, previous_fs; //fieldsets
        var opacity;

        $(".next").click(function () {

            current_fs = $(this).parent();
            next_fs = $(this).parent().next();

//Add Class Active
            $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

//show the next fieldset
            next_fs.show();
//hide the current fieldset with style
            current_fs.animate({opacity: 0}, {
                step: function (now) {
// for making fielset appear animation
                    opacity = 1 - now;

                    current_fs.css({
                        'display': 'none',
                        'position': 'relative'
                    });
                    next_fs.css({'opacity': opacity});
                },
                duration: 600
            });
        });

        $(".previous").click(function () {

            current_fs = $(this).parent();
            previous_fs = $(this).parent().prev();

//Remove class active
            $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

//show the previous fieldset
            previous_fs.show();

//hide the current fieldset with style
            current_fs.animate({opacity: 0}, {
                step: function (now) {
// for making fielset appear animation
                    opacity = 1 - now;

                    current_fs.css({
                        'display': 'none',
                        'position': 'relative'
                    });
                    previous_fs.css({'opacity': opacity});
                },
                duration: 600
            });
        });

        $('.radio-group .radio').click(function () {
            $(this).parent().find('.radio').removeClass('selected');
            $(this).addClass('selected');
        });

        $(".submit").click(function () {
            return false;
        })

    });
</script>

<style>
    * {
        margin: 0;
        padding: 0
    }

    #grad1 {
        background-color: #fff;

    }

    #msform {
        text-align: center;
        position: relative;
        margin-top: 20px
    }

    #msform fieldset .form-card {
        background: white;
        border: 0 none;
        border-radius: 0px;
        box-shadow: 0 2px 2px 2px rgba(0, 0, 0, 0.2);
        padding: 20px 40px 30px 40px;
        box-sizing: border-box;
        width: 100%;
        margin: 0 3% 20px 3%;
        position: relative
    }

    #msform fieldset {
        background: white;

        border-radius: 0.5rem;

        width: 100%;
        margin: 0;
        padding-bottom: 20px;
        position: relative;
    }

    #msform fieldset:not(:first-of-type) {
        display: none
    }

    #msform fieldset .form-card {
        text-align: left;
        color: rgb(36, 34, 34)
    }

    #msform input,
    #msform input:focus,
    #msform textarea:focus {
        -moz-box-shadow: none !important;
        -webkit-box-shadow: none !important;
        box-shadow: none !important;
        border: none;
        border-bottom: 2px solid;
        outline-width: 0
    }

    #msform .action-button {
        width: 100px;
        background: skyblue;
        font-weight: bold;
        color: white;
        border: 0 none;
        border-radius: 0px;
        cursor: pointer;
        padding: 10px 5px;
        margin: 10px 5px
    }

    #msform .action-button:hover,
    #msform .action-button:focus {
        box-shadow: 0 0 0 2px white, 0 0 0 3px skyblue
    }

    #msform .action-button-previous {
        width: 100px;
        background: #616161;
        font-weight: bold;
        color: white;
        border: 0 none;
        border-radius: 0px;
        cursor: pointer;
        padding: 10px 5px;
        margin: 10px 5px
    }

    #msform .action-button-previous:hover,
    #msform .action-button-previous:focus {
        box-shadow: 0 0 0 2px white, 0 0 0 3px #616161
    }

    select.list-dt {
        border: none;
        outline: 0;
        border-bottom: 1px solid #ccc;
        padding: 2px 5px 3px 5px;
        margin: 2px
    }

    select.list-dt:focus {
        border-bottom: 2px solid skyblue
    }

    .card {
        z-index: 0;
        border: none;
        border-radius: 0.4rem;
        position: relative
    }

    .fs-title {
        font-size: 25px;
        color: #2C3E50;
        margin-bottom: 10px;
        font-weight: bold;
        text-align: left
    }

    #progressbar {
        margin-bottom: 20px;
        overflow: hidden;
        color: rgb(255, 0, 0)
    }

    #progressbar .active {
        color: #000000
    }

    #progressbar li {
        list-style-type: none;
        font-size: 12px;
        width: 25%;
        float: left;
        position: relative;
    }

    #progressbar #personal:before {
        font-family: FontAwesome;
        content: "\f023"
    }

    #progressbar #address:before {
        font-family: FontAwesome;
        content: "\f007"
    }

    #progressbar #education:before {
        font-family: FontAwesome;
        content: "\f09d"
    }

    #progressbar #upload:before {
        font-family: FontAwesome;
        content: "\f08d"
    }

    #progressbar #complete:before {
        font-family: FontAwesome;
        content: "\f023"
    }

    #progressbar #confirm:before {
        font-family: FontAwesome;
        content: "\f00c"
    }

    #progressbar li:before {
        width: 50px;
        height: 50px;
        line-height: 45px;
        display: block;
        font-size: 18px;
        color: #ffffff;
        background: lightgray;
        border-radius: 50%;
        margin: 0 auto 10px auto;
        padding: 2px
    }

    #progressbar li:after {
        content: '';
        width: 100%;
        height: 2px;
        background: lightgray;
        position: absolute;
        left: 0;
        top: 25px;
        z-index: -1
    }

    #progressbar li.active:before,
    #progressbar li.active:after {
        background: skyblue
    }

    .radio-group {
        position: relative;
        margin-bottom: 25px
    }


    .fit-image {
        width: 20%;
        object-fit: cover
    }
</style>
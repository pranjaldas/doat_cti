<%--
  ~ Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
  ~ @Author: Pranjal Das
  --%>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="widthdevice-width, initial-scale=1">
    <title>Notification</title>

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

</head>
<body onload="Captcha();">


<!--header-->
<div class="header">
    <nav class="navbar navbar-expand-lg navbar-light">
        <!--logo-->
        <div class="logo">
            <a class="navbar-brand" href="a"><img src="../img/assa.png"></a>
        </div>
        <!--logo-tag-->
        <div class="info">
            <a class="navbar-brand"><strong>Directorate Of Accounts And Treasuries</strong><br>Kar
                Bhawan,Ganeshguri,Guwahati,Assam-781006</a>
        </div>

    </nav>
</div>
<!--Card-->
<div class="card-deck">

    <!--Card Notificationr-->
    <div class="card ">
        <div class="card-header " style="background: rgb(240, 243, 59); t">
            <h3 class="align-self-center"><strong> Instructions</strong></h3>
        </div>
        <div class="card-body">
            <div class="intro" id="eng-intro">

                <div class="intro-body p-6" id="body-into">
                    <p class="font-weight-bold">Steps to be Followed</p>
                    <li>
                        Register by providing required fields.
                    </li>
                    <li>
                        Password should contain a lowercase, a uppercase, a number and minimum 8 character.
                    </li>
                    <li>
                        Verify Mobile No. by providing OTP.
                    </li>
                    <li>
                        Fill up the Application Form.(Step by step)
                    </li>
                    <li>
                        Preview and Submit your Application Form.
                    </li>
                    <br>
                    <p class="font-weight-bold">For best performance use <br><br>
                    <ul>
                        <li><img class="ml-2" src="img/chrome.png" style="height:2rem;">Chrome</li>
                        <li><img class="ml-2" src="img/firefox.png" style="height:2rem;">Mozilla Firefox</li>
                        <li><img class="ml-2" src="img/opers.png" style="height:2rem;">Opera</li>
                    </ul>
                    </p>
                    <ol class=" text-justify">
                        <li>Candidates are requested to go through the complete advertisement and read the complete
                            instructions before
                            applying. <a href="#">Advertisement</a></li>
                        <li><b>For Passport Size Photograph:</b>
                            <ul class="ml-4">
                                <li>
                                    Photograph must be in colour and must be in white background and must have been
                                    taken after 1st January
                                    2020.
                                </li>
                                <li>
                                    The photograph must be below 100kb and should be in jpeg formate.
                                </li>

                            </ul>
                        </li>
                        <li><b>For Signature OR Thumb Impression:</b>
                            <ul class="ml-4">
                                <li>
                                    Signature OR thumb impression must be taken with a black or dark blue ink on a white
                                    paper.
                                </li>
                                <li>
                                    The signature should be below 100kb and should be in jpeg formate.
                                </li>

                            </ul>
                        </li>

                        <li><b>Documents to be uploaded:</b>
                            <ul class="ml-4">
                                <li>
                                    Admit card / certificate of HSLC or equivalent examination for proof of Age.
                                </li>
                                <li>
                                    Mark sheet of HSLC / HSSLC examination as applicable for the post concerned.
                                </li>
                                <li>
                                    Certificate of caste from the competent authority in respect of the candidates
                                    belonging to ST(P) /
                                    ST(H) / SC / OBC &amp; MOBC.
                                </li>
                                <li>
                                    Home Guard training and experienced certificate issued by competent authority to
                                    claim Age relaxation.
                                </li>
                                <li>
                                    EWS certificate from Competent Authority, if any. <a href="#">Annexure-I</a></li>

                                <li>
                                    Other relevant documents.
                                </li>
                            </ul>
                            <p style="color:rgb(231, 10, 10);font-weight: 700; margin-top: 1rem;">Note: All the
                                documents should be self-attested. The size of the scanned
                                documents should be 100KB to 250 KB (JPEG,JPG,PNG format only)</p>
                        </li>


                    </ol>
                </div>

            </div>
        </div>
    </div>
    <!--Card Login & Register-->
    <div class="card">
        <div class="card-header" style="background: rgb(240, 243, 59);">
            <h4><strong> Login </strong></h4>
        </div>
        <div class="card-body">
            <h5 class="card-title">(Already Registered Candidate)</h5>
            <p class="card-text">

                <!--login inline css-->
                <style>
                    /* Style all input fields */

                    input {
                        width: 100%;
                        padding: 12px;
                        border: 1px solid #ccc;
                        border-radius: 4px;
                        box-sizing: border-box;
                        margin-top: 6px;
                        margin-bottom: 16px;
                    }

                    /* Style the submit button */

                    input[type=submit] {
                        background-color: #4CAF50;
                        color: white;
                    }

                    /* Style the container for inputs */

                    .container {
                        background-color: #f1f1f1;
                        padding: 20px;
                    }

                    /* The message box is shown when the user clicks on the password field */

                    #message {
                        display: none;
                        background: #f1f1f1;
                        color: #000;
                        position: relative;
                        padding: 20px;
                        margin-top: 10px;
                    }

                    #message p {
                        padding: 16px 25px;
                        font-size: 15px;
                    }

                    /* Add a green text color and a checkmark when the requirements are right */

                    .valid {
                        color: green;
                    }

                    .valid:before {
                        position: relative;
                        left: -35px;
                        content: "✔";
                    }

                    /* Add a red text color and an "x" when the requirements are wrong */

                    .invalid {
                        color: red;
                    }

                    .invalid:before {
                        position: relative;
                        left: -35px;
                        content: "✖";
                    }
                </style>


                <!--Login-->
            <div class="container">
                <form action="/authentication" method="post" object="login" id="loginform">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" placeholder="username" required>

                    <label for="psw">Password</label>
                    <input type="password" id="psw" placeholder="type password" name="password"
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                           title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                           required></input>
                    <table>
                        <tr>
                            <td>
                                <input type="text" id="mainCaptcha"
                                       style="background-color: aqua; font-weight: bold;text-align: center"/>
                            </td>
                            <td>
                                <i class="fas fa-sync-alt" type="button" id="refresh" value="Refresh"
                                   style="margin-left: 30px" onclick="Captcha();"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" id="txtInput" placeholder="Enter the Captcha " required/>
                            </td>
                        </tr>

                    </table>
                    <div class="form-row">
                        <div class="align-self-center mx-auto">
                            <button id="submit" type="submit" class="btn btn-success btn-lg"
                                    onclick="return ValidCaptcha();">Login
                            </button>

                        </div>

                    </div>

                </form>
            </div>
            <script type="text/javascript">
                function Captcha() {
                    var alpha = ['A', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
                    var i;
                    for (i = 0; i < 6; i++) {
                        var a = alpha[Math.floor(Math.random() * alpha.length)];
                        var b = alpha[Math.floor(Math.random() * alpha.length)];
                        var c = alpha[Math.floor(Math.random() * alpha.length)];
                        var d = alpha[Math.floor(Math.random() * alpha.length)];
                        var e = alpha[Math.floor(Math.random() * alpha.length)];
                        var f = alpha[Math.floor(Math.random() * alpha.length)];
                        var g = alpha[Math.floor(Math.random() * alpha.length)];
                    }
                    var code = a + b + c + d + e + f + g;
                    document.getElementById("mainCaptcha").value = code
                }

                function ValidCaptcha() {
                    var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
                    var string2 = removeSpaces(document.getElementById('txtInput').value);
                    if (string1 == string2) {

                        return true;
                    } else {
                        return false;
                    }
                }

                function removeSpaces(string) {
                    return string.split(' ').join('');
                }
            </script>

            <!--login Validation-->
            <div id="message">
                <h3>Password must contain the following:</h3>
                <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                <p id="number" class="invalid">A <b>number</b></p>
                <p id="length" class="invalid">Minimum <b>8 characters</b></p>
            </div>

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
                };

                // When the user clicks outside of the password field, hide the message box
                myInput.onblur = function () {
                    document.getElementById("message").style.display = "none";
                };

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

            <!--Registration-->

            <div class="container">
                <h4><strong>FOR NEW CANDIDATES</strong></h4>
                <h5>Click below for registration .</h5>
                <form action="/register" object="register">
                    <button type="submit" class="btn btn-success btn-block">Register Here</button>
                </form>

            </div>
        </div>

    </div>
</div>


<!--FOOTER-->
<div class="footer">
    <p>© 2020 Copyright:
        <a href="#"> DOAT</a>
    </p>
</div>

</body>

</html>
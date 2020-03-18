<%--
  ~ Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
  ~ @Author: Pranjal Das
  --%>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/dashstyle.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <title>Register</title>
</head>

<body>

<!--HEADER-->
<div class="header">
    <nav class="navbar navbar-expand-lg navbar-light">
        <!--logo-->
        <div class="logo">
            <a class="navbar-brand" href="a"><img src="img/assa.png"></a>
        </div>
        <!--logo-tag-->
        <div class="info">
            <a class="navbar-brand"><strong>Directorate Of Accounts And Treasuries</strong><br>Kar
                Bhawan,Ganeshguri,Guwahati,Assam-781006</a>
        </div>

    </nav>
</div>

<div class="container">

    <div class="card" id="new">
        <div class="card-header" style="background: rgb(230, 233, 77) ;">
            <h3 align ="center"><strong>REGISTRATION FORM</strong></h3>
        </div>

        <div class="card-body">

            <div class="alert alert-primary">
                <strong>New Candidate</strong><br>
                <h7 style="color: #000;"> All Star-Marked (*) fileds are COMPULSORY<br>
                    Please read all the job related instructions before submitting the form.</h>
            </div>

            <p class="card-text">

                <form class="register-form" id="register-form" method="POST" action="/saveregistration"
                      object="registration">

                    <!--Register form-->

                    <div class="form-row" id="register_home">

                        <!--post name-->
                        <div class="col-4 mb-3 form-group">
                            <label for="job_title"><strong>Post:</strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                            <select class="custom-select text-uppercase caste" id="job_title" name="job_title" required>
                                <option>Select</option>
                                <option value="Junior Assistant">Junior Assistant</option>
                                <option value="Backend Developer">Backend Developer</option>
                                <option value="Frontend Developer">Frontend Developer</option>
                                <option value="Java Developer">Java Developer</option>
                                >
                            </select>
                            <br>
                        </div>


                        <div class="col-12 mb-3">
                            <label><strong>Full Name:</strong><sup style="color: red; size: A5">*</sup></label>
                            <div class="row" style=" padding:10px;">
                                <input class="col-4 form-control fname " type="text" id="fname" name="fname"
                                       placeholder="First name" required>
                                <input class="col-4 form-control  mname" type="text" id="mname" name="mname"
                                       placeholder="Middle name">
                                <input class="col-4 form-control  lname" type="text" id="lname" name="lname"
                                       placeholder="Last name" required>
                                <br></div>
                        </div>
                        <div class="col-4 mb-3">
                            <label for="phone"><strong>Phone number </strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                            <input class="form-control " type="" name="phone" id="phone"
                                   placeholder="Enter Phone number"
                                   pattern="[0-9]{3}[0-9]{3}[0-9]{4}" required maxlength="10">


                        </div>
                        <div class="col-4 mb-3">
                            <label for="email"><strong>Email </strong><strong><sup style="color: red; size: A5">*</sup></strong></label>
                            <input class="form-control " type="Enter email" id="email" name="email"
                                   placeholder="Email Address" required>


                        </div>
                        <div class="col-4 mb-3">
                            <label for="datepicker"><strong>Date of Birth </strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                            <input class="form-control" type="date" id="datepicker" name="date_of_birth" required>

                        </div>


                        <div class="col-6 mb-3">
                            <label for="password"><strong>Password </strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                            <input class="form-control" type="password" id="password" placeholder="Enter Password"
                                   name="password"
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


    <div class="align-self-center mx-auto">
        <button type="submit" class="btn btn-success btn-lg">REGISTER</button>
    </div>



    </form>

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
<!--Validation JS-->
<script>
    var myInput = document.getElementById("password");
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

<script>
    var psw = document.getElementById("password")
        , conpassword = document.getElementById("conpassword");

    function validatePassword(){
        if(psw.value != conpassword.value) {
            conpassword.setCustomValidity("Passwords Don't Match");
        } else {
            conpassword.setCustomValidity('');
        }
    }

    psw.onchange = validatePassword;
    conpassword.onkeyup = validatePassword;
</script>

<script>

</script>

<!--login inline css-->
<style>
    /* Style all input fields */



    /* Style the submit button */

    input[type=submit] {
        background-color: #4CAF50;
        color: white;
    }

    /* Style the container for inputs */

    .container {

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


</html>
<%--
  ~ Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
  ~ @Author: Pranjal Das
  --%>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
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
    <%--    Datepicker dependencies--%>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <title>Register</title>
</head>

<body>
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
    </nav>
</div>
<div class="container">
    <div class="register cre-box text-uppercase mt-3" style="background:#fff;">
        <div class="card">
            <div class="card-header" style="background: rgb(240, 243, 59);">
                <h4 align="center">Register</h4>
            </div>
            <div class="card-body">
                <h5 class="card-title" align="center">(new candidate)</h5>
                <p class="card-text">

                <form class="register-form" id="register-form" method="POST" action="/saveregistration"
                      object="registration">
                    <!--Register form-->

                    <div class="form-row" id="register_home">
                        <div class="col-6 mb-3 form-group">
                            <label for="job_title"><strong>Post </strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                            <select class="custom-select text-uppercase  caste" id="job_title" name="job_title"
                                    required>
                                <option>Select</option>
                                <option value="Junior Assistant">Junior Assistant</option>
                                <option value="Backend Developer">Backend Developer</option>
                                <option value="Frontend Developer">Frontend Developer</option>
                                <option value="Java Developer">Java Developer</option>
                                >
                            </select>
                        </div>
                        <div class="text-danger" id="errors"></div>
                        <div class="col-12 mb-3">
                            <label for="name"><strong>Name </strong><sup style="color: red;size: A5">*</sup></label>
                            <div class="row" style=" padding:10px;">
                                <input class="col-4 form-control fname " type="text" id="fname" name="fname"
                                       placeholder="First name" required>
                                <input class="col-4 form-control  mname" type="text" id="mname" name="mname"
                                       placeholder="Middle name">
                                <input class="col-4 form-control  lname" type="text" id="lname" name="lname"
                                       placeholder="Last name" required>
                                <br></div>
                        </div>
                        <div class="col-6 mb-3">
                            <label for="phone"><strong>Phone number </strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                            <input class="form-control " type="" name="phone" id="phone" placeholder="Phone number"
                                   pattern="[0-9]{3}[0-9]{3}[0-9]{4}" required maxlength="10">


                        </div>
                        <div class="col-6 mb-3">
                            <label for="email"><strong>Email </strong><strong><sup style="color: red; size: A5">*</sup></strong></label>
                            <input class="form-control " type="email" id="email" name="email"
                                   placeholder="Email Address" required>


                        </div>
                        <div class="col-6 mb-3">
                            <label for="datepicker"><strong>Date of Birth </strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                            <input class="form-control" type="date" id="datepicker" name="date_of_birth" required>

                        </div>


                        <div class="col-6 mb-3">
                            <label for="password"><strong>Password </strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                            <input class="form-control " type="password" id="password" name="password"
                                   placeholder="Enter password" required>


                        </div>
                        <div class="col-6 mb-3">
                            <label for="conpassword"><strong>Confirm Password </strong><strong><sup
                                    style="color: red; size: A5">*</sup></strong></label>
                            <input class="form-control datepicker " type="password" id="conpassword"
                                   placeholder="Enter password" required>

                        </div>


                        <div class="align-self-center mx-auto">
                            <button type="submit" class="btn btn-success btn-lg">Register</button>
                        </div>

                    </div>

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

</html>
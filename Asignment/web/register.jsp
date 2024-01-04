<%-- 
    Document   : login
    Created on : Nov 5, 2023, 9:18:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form</title>
        <!-- Bootstrap CSS link -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div style="text-align: center">
            <img src="img/banner.jpg" alt="alt"/>
        </div>
        <div style="text-align: center;color: white;background: orange">
            <h2 >Create new account</h2>
            <nav class=" navbar navbar-expand-lg bg-white navbar-light sticky-top p-0 wow fadeIn" data-wow-delay="0.1s" style="display: flex;justify-content: space-around">

                <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto p-4 p-lg-0">
                        <a href="info" class="nav-item nav-link active">Home</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <a href="#" class="nav-item nav-link">Service</a>

                        <a href="#" class="nav-item nav-link">Contact</a>
                        <a href="schoolRank.jsp" class="nav-item nav-link active">School Rank</a>
                    </div>
                </div>
            </nav>        
        </div>
        <div class="container mt-5">
            <form action="register" method="post" onsubmit="return checkPass()">
                <div class="row container">
                    <div class="col-sm-6">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control" id="username" name="user" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="username" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="" name="name" required>
                    </div>

                    <!-- Password -->
                    <div class="col-sm-6">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="pass" name="pass" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="username" class="form-label">Address</label>
                        <input type="text" class="form-control" id="" name="address" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="password" class="form-label">Re-enter Password</label>
                        <input type="password" class="form-control" id="re_pass" name="re-pass" required>
                        <small id="error" class="text-danger"></small>
                    </div>
                    <div class="col-sm-3">
                        <label for="username" class="form-label">Birthday</label>
                        <input type="date" class="form-control" id="" name="birth" required>
                    </div>
                    <div class="col-sm-3">
                        <label for="username" class="form-label">THPT</label>
                        <input type="text" class="form-control" id="" name="thpt" required>
                    </div>
                    <div class="col-sm-12" style="text-align: center">
                        <button type="submit" class="btn btn-primary" style="margin-top: 20px;width: 25%">Register</button>
                    </div>
                </div>
            </form>
        </div>

        <!-- Bootstrap JS and Popper.js scripts (required for Bootstrap components) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script>
                function checkPass() {
                    var pass = document.getElementById("pass").value;
                    var re_pass = document.getElementById("re_pass").value;
                    if (password === re_password) {
                        return true; // Prevent form submission
                    } else {
                        document.getElementById("error").innerText = "Passwords do not match!";
                        return false;
                    }
        </script>
    </body>
</html>

<%-- 
    Document   : home
    Created on : Oct 31, 2023, 9:13:28 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Tuyen Sinh DH</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/4c292f6960.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Topbar Start -->
        <div class="container-fluid bg-light p-0 wow fadeIn" data-wow-delay="0.1s">
            <div class="row gx-0 d-none d-lg-flex">
                <div class="col-lg-7 px-5 text-start">
                    <div class="h-100 d-inline-flex align-items-center py-3 me-4">
                        <small class="fa fa-map-marker-alt text-primary me-2"></small>
                        <small>123 Khu CNC, Hoa Lac</small>
                    </div>
                    <div class="h-100 d-inline-flex align-items-center py-3">
                        <small class="far fa-clock text-primary me-2"></small>
                        <small>Th.2 - Th.6 : 08.00 AM - 06.00 PM</small>
                    </div>
                </div>
                <div class="col-lg-5 px-5 text-end">
                    <div class="h-100 d-inline-flex align-items-center py-3 me-4">
                        <small class="fa fa-phone-alt text-primary me-2"></small>
                        <small>0123 456 789</small>
                    </div>
                    <div class="h-100 d-inline-flex align-items-center">
                        <a class="btn btn-sm-square rounded-circle bg-white text-primary me-1" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-sm-square rounded-circle bg-white text-primary me-1" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-sm-square rounded-circle bg-white text-primary me-1" href=""><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-sm-square rounded-circle bg-white text-primary me-0" href=""><i class="fab fa-instagram"></i></a>
                            <c:if test="${account eq null}">
                            <a href="login" class="btn">Log in</a>
                            <a href="register" class="btn">Register</a>
                        </c:if>
                        <c:if test="${account ne null}">
                            <a class="btn btn-sm-square rounded-circle bg-white text-primary me-0" href="logout"><i class="fa-solid fa-right-from-bracket"></i></a>
                            <input type="text" value="${account.user}" name="user" style="display: none">
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0 wow fadeIn" data-wow-delay="0.1s">
            <a href="info" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
                <h1 class="m-0 text-primary">FPT</h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="info" class="nav-item nav-link active">Home</a>
                    <a href="about.jsp" class="nav-item nav-link">About</a>
                    <a href="#" class="nav-item nav-link">Service</a>

                    <a href="#" class="nav-item nav-link">Contact</a>
                    <a href="tinh?user=${account.user}" class="nav-item nav-link active">School Rank</a>
                    
                </div>
            </div>
        </nav>
        <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid header bg-primary p-0 mb-5">
            <div class="row g-0 align-items-center flex-column-reverse flex-lg-row">
                <div class="col-lg-6 p-5 wow fadeIn" data-wow-delay="0.1s">
                    <h1 class="display-4 text-white mb-5">WHY DO MORE THAN 65,000 STUDENTS CHOOSE FPT UNIVERSITY?</h1>
                    <div class="row g-4">
                        <div class="col-sm-4">
                            <div class="border-start border-light ps-4">
                                <h2 class="text-white mb-1" data-toggle="counter-up">100</h2>
                                <p class="text-light mb-0">PERCENT OPPORTUNITY TO STUDY ABROAD</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="border-start border-light ps-4">
                                <h2 class="text-white mb-1" data-toggle="counter-up">100</h2>
                                <p class="text-light mb-0">PERCENT ACTUAL WORK AT ENTERPRISE FROM YEAR 3</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="border-start border-light ps-4">
                                <h2 class="text-white mb-1" data-toggle="counter-up">66</h2>
                                <p class="text-light mb-0">PERCENT PRACTICAL LEARNING TIME</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <div class="owl-carousel header-carousel">
                        <div class="owl-carousel-item position-relative">
                            <img class="img-fluid" src="img/carousel1.jpg
                                 " alt="">
                            <div class="owl-carousel-text">
                                <h1 class="display-1 text-white mb-0">Study Abroad</h1>
                            </div>
                        </div>
                        <div class="owl-carousel-item position-relative">
                            <img class="img-fluid" src="img/carousel2.jpg" alt="">
                            <div class="owl-carousel-text">
                                <h1 class="display-1 text-white mb-0">Internships</h1>
                            </div>
                        </div>
                        <div class="owl-carousel-item position-relative">
                            <img class="img-fluid" src="img/carousel3.jpg" alt="">
                            <div class="owl-carousel-text">
                                <h1 class="display-1 text-white mb-0">Practice</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                        <div class="d-flex flex-column">
                            <img class="img-fluid rounded w-75 align-self-end" src="img/about1.jpg" alt="">
                            <img class="img-fluid rounded w-50 bg-white pt-3 pe-3" src="img/about2.jpg" alt="" style="margin-top: -25%;">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                        <p class="d-inline-block border rounded-pill py-1 px-4">About Us</p>
                        <h1 class="mb-4">Why You Should Choose FPT University</h1>
                        <p>Why do 65,000 students choose to study at University?</p>
                        <p><i class="far fa-check-circle text-primary me-3"></i>Reputation for training quality</p>
                        <p><i class="far fa-check-circle text-primary me-3"></i>International environmental rights</p>
                        <p><i class="far fa-check-circle text-primary me-3"></i>Practical internship at the enterprise</p>
                        <p><i class="far fa-check-circle text-primary me-3"></i>Global job opportunities</p>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mt-3" href="#">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Service Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1>ADMISSION INFORMATION</h1>
                </div>


                <div class="row g-4">
                    <c:forEach var="e" items="${info}">
                        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                            <img src="${e.getImage()}" alt="haha"/>
                            <h3><a style="color: #F05123" href="displayInfo?id=${e.getId()}">${e.getTitle()}</a></h3>
                            <a style="color: #F05123" href="displayInfo?id=${e.getId()}">Get More</a>
                        </div>
                    </c:forEach>


                </div>

                <!-- load database-->  

            </div>
        </div>
        <!-- Service End -->




        <!-- Team Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <p class="d-inline-block border rounded-pill py-1 px-4">Teachers</p>
                    <h1>Our Experience Teachers</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item position-relative rounded overflow-hidden">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="img/team1.jpg" alt="">
                            </div>
                            <div class="team-text bg-light text-center p-4">
                                <h5>Dinh Huy Trang</h5>
                                <p class="text-primary">FPT HL</p>
                                <div class="team-social text-center">
                                    <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item position-relative rounded overflow-hidden">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="img/team2.jpg" alt="">
                            </div>
                            <div class="team-text bg-light text-center p-4">
                                <h5>Cu Trong Xoay</h5>
                                <p class="text-primary">FPT HCM</p>
                                <div class="team-social text-center">
                                    <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item position-relative rounded overflow-hidden">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="img/team3.jpg" alt="">
                            </div>
                            <div class="team-text bg-light text-center p-4">
                                <h5>BUI NGOC ANH</h5>
                                <p class="text-primary">FPT HL</p>
                                <div class="team-social text-center">
                                    <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item position-relative rounded overflow-hidden">
                            <div class="overflow-hidden">
                                <img class="img-fluid" src="img/team4.jpg" alt="">
                            </div>
                            <div class="team-text bg-light text-center p-4">
                                <h5>TRUONG GIA BINH</h5>
                                <p class="text-primary">FPT DN</p>
                                <div class="team-social text-center">
                                    <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Appointment Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <p class="d-inline-block border rounded-pill py-1 px-4">Appointment</p>
                        <h1 class="mb-4">Submit Your Application Now</h1>
                        <div class="bg-light rounded d-flex align-items-center p-5 mb-4">
                            <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-white" style="width: 55px; height: 55px;">
                                <i class="fa fa-phone-alt text-primary"></i>
                            </div>
                            <div class="ms-4">
                                <p class="mb-2">Contacts</p>
                                <h5 class="mb-0">0123 456 789</h5>
                            </div>
                        </div>
                        <div class="bg-light rounded d-flex align-items-center p-5">
                            <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-white" style="width: 55px; height: 55px;">
                                <i class="fa fa-envelope-open text-primary"></i>
                            </div>
                            <div class="ms-4">
                                <p class="mb-2">Mail</p>
                                <h5 class="mb-0">info@fpt.edu.vn</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="bg-light rounded h-100 d-flex align-items-center p-5">
                            <form action="add"  onsubmit="return validateForm()" method="post">
                                <div class="row g-3">
                                    <div class="col-12 col-sm-6">
                                        <input type="text" class="form-control border-0" placeholder="Your Name*" style="height: 55px;" name="name" required>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="text" class="form-control border-0"  placeholder="Your Phone*" id="telephone" style="height: 55px;" name="phone" required pattern="[0-9]{10}">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="email" class="form-control border-0" placeholder="Email*" style="height: 55px;" name="email" required>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="date" class="form-control border-0" placeholder="Birthday" style="height: 55px;" name="birth" required>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="text" class="form-control border-0" placeholder="Province/city*" style="height: 55px;" name="city" required>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="text" class="form-control border-0" placeholder="THPT" style="height: 55px;"name="thpt" required>     
                                    </div>
                                    <div class="col-12">
                                        <input type="text" class="form-control border-0" placeholder="Facebook link" style="height: 55px;" name="face" required>     
                                    </div>

                                    <p style="color: black">register*</p>
                                    <div class="row">
                                        <div class="col-3">
                                            <input type="checkbox" value="1" name="tu_van" >tư vấn
                                        </div>
                                        <div class="col-3">
                                            <input type="checkbox" value="1" name="tuyen_sinh" >tuyển sinh
                                        </div>
                                        <div class="col-3">
                                            <input type="checkbox" value="1" name="xet" >xét học bổng
                                        </div>
                                        <div class="col-3">
                                            <input type="checkbox" value="1" name="thi" >thi học bổng
                                        </div>
                                    </div>
                                    <button class="btn btn-primary w-100 py-3" type="submit">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->

        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <p class="d-inline-block border rounded-pill py-1 px-4">Testimonial</p>
                    <h1>What Say Our Patients!</h1>
                </div>
                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <c:forEach var="c" items="${listO}">
                        <div class="testimonial-item text-center">
                            <img class="img-fluid bg-light rounded-circle p-2 mx-auto mb-4" src="${c.image}" style="width: 100px; height: 100px;">
                            <div class="testimonial-text rounded text-center p-4">
                                <p>${c.review}</p>
                                <h5 class="mb-1">${c.name}</h5>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>



        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-4 col-md-6">
                        <h5 class="text-light mb-4">Address</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social rounded-circle" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social rounded-circle" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social rounded-circle" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social rounded-circle" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <h5 class="text-light mb-4">Services</h5>
                        <a class="btn btn-link" href="">Cardiology</a>
                        <a class="btn btn-link" href="">Pulmonary</a>
                        <a class="btn btn-link" href="">Neurology</a>
                        <a class="btn btn-link" href="">Orthopedics</a>
                        <a class="btn btn-link" href="">Laboratory</a>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <h5 class="text-light mb-4">Quick Links</h5>
                        <a class="btn btn-link" href="">About Us</a>
                        <a class="btn btn-link" href="">Contact Us</a>
                        <a class="btn btn-link" href="">Our Services</a>
                        <a class="btn btn-link" href="">Terms & Condition</a>
                        <a class="btn btn-link" href="">Support</a>
                    </div>

                </div>
            </div>

        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <script>
            function validateForm() {
                const checkboxes = document.querySelectorAll('input[type="checkbox"]');
                const checkedCheckboxes = Array.from(checkboxes).filter(checkbox => checkbox.checked);
                if (checkedCheckboxes.length === 0) {
                    alert("Please check at least one checkbox.");
                    return false; // Block form submission
                }
            }
        </script>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/tempusdominus/js/moment.min.js"></script>
        <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>

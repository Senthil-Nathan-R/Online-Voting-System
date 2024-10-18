<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Online Voting System</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Other head elements -->
    
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="./JS/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="./JS/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="./CSS/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <!-- ./CSS/result.css -->
    <link href="./CSS/home.css" rel="stylesheet">
</head>

<body>
    <!-- Navbar Start -->
    <div class="container-fluid sticky-top bg-light shadow-sm">
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0">
                <a href="index.jsp" class="navbar-brand">
                    <h1 class="m-0 text-uppercase text-secondary">Online Voting System</h1>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="#Home" class="nav-item nav-link active">Home</a>
                        <a href="#About" class="nav-item nav-link">About</a>
                        <a href="#Service" class="nav-item nav-link">Service</a>
                        <a href="#Contact" class="nav-item nav-link">Contact</a>
                        <a href="Signup.jsp" class="nav-item nav-link">Login</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 mb-5 hero-header" id="Home">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h2 class="display-1 text-white mb-md-4 py-4">Empowering Transparent and Secure Voting</h2>
                    <div class="pt-2">
                        <a href="Signup.jsp" class="btn btn-outline-light rounded-pill py-md-3 px-md-5 mx-2">VOTE NOW</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
    
    <div id="About" class="container-fluid py-5"></div>
    <!-- About Start -->
    <div class="container-fluid">
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-5 mb-5 mb-lg-0" id="about-img" style="min-height: 500px;">
                    <div class="position-relative h-100" >
                        <img class="position-absolute w-100 h-100 rounded"  src="./IMG/img2.webp" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-7" id="about-content">
                    <div class="mb-4">
                        <h5 class="d-inline-block text-secondary text-uppercase border-bottom border-5">About Us</h5>
                        <h1 class="display-6">Empowering Your Vote, Anytime, Anywhere – Secure and Reliable</h1>
                    </div>
                    <p>
                        Welcome to our Online Voting System, where we are committed to revolutionizing the way elections are conducted. In an era where technology plays a pivotal role in our daily lives, our platform offers a secure, efficient, and user-friendly solution designed to empower voters and simplify the electoral process. Our mission is to ensure that every vote counts, regardless of where you are, by providing a digital platform that guarantees the integrity, transparency, and accessibility of each election.
                        <br><br>
                        We leverage cutting-edge security protocols and a seamless interface to enable organizations, communities, and institutions to conduct elections with the utmost confidence. Our innovative system not only streamlines the voting process but also enhances voter engagement, making it easier for individuals to participate in democracy.
                        <br><br>
                        Our dedicated team is passionate about upholding the principles of democracy by making voting accessible, secure, and convenient for everyone. We believe in fostering a culture of participation and accountability, and we work tirelessly to ensure that our platform meets the highest standards of reliability and trustworthiness.
                        <br><br>
                        Join us in shaping the future of elections with technology that prioritizes the voice of the voter. Together, we can create a more inclusive and participatory electoral landscape for generations to come.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
    
    <div id="Service" class="container-fluid py-5"></div>
<!-- Services Start -->
<div id="Service" class="container-fluid py-5"></div>
<div class="container-fluid">
    <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
            <h5 class="d-inline-block text-secondary text-uppercase border-bottom border-5">Services</h5>
            <h1 class="display-6">Efficient and Secure Voting Solutions</h1>
        </div>
        <div class="row g-5">
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon bg-secondary mb-4">
                        <i class="fa fa-2x fa-lock text-light"></i> <!-- Secure Voting Platform -->
                    </div>
                    <h4 class="mb-3">Secure Voting Platform</h4>
                    <p class="m-0">Ensuring the highest level of encryption and data security to protect each vote.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon bg-secondary mb-4">
                        <i class="fa fa-2x fa-chart-bar text-light"></i> <!-- Real-Time Results -->
                    </div>
                    <h4 class="mb-3">Real-Time Results</h4>
                    <p class="m-0">Instant and transparent result tracking, available immediately after the election ends.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon bg-secondary mb-4">
                        <i class="fa fa-2x fa-desktop text-light"></i> <!-- User-Friendly Interface -->
                    </div>
                    <h4 class="mb-3">User-Friendly Interface</h4>
                    <p class="m-0">A seamless, easy-to-use design tailored for all voters, ensuring accessibility and convenience.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon bg-secondary mb-4">
                        <i class="fa fa-2x fa-user-check text-light"></i> <!-- Voter Verification -->
                    </div>
                    <h4 class="mb-3">Voter Verification</h4>
                    <p class="m-0">Implementing reliable voter authentication processes for accurate voter identity confirmation.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon bg-secondary mb-4">
                        <i class="fa fa-2x fa-headset text-light"></i> <!-- Comprehensive Support -->
                    </div>
                    <h4 class="mb-3">Comprehensive Support</h4>
                    <p class="m-0">24/7 assistance to ensure a smooth voting experience for all users throughout the process.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                    <div class="service-icon bg-secondary mb-4">
                        <i class="fa fa-2x fa-tools text-light"></i> <!-- Election Management -->
                    </div>
                    <h4 class="mb-3">Election Management</h4>
                    <p class="m-0">Tools and resources for managing all aspects of an election, from setup to completion.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Services End -->

       <div id="Contact" class="container-fluid py-5"></div>
    <!-- Contact Start -->
    <div class="container-fluid" >
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-secondary text-uppercase border-bottom border-5">Any Questions?</h5>
                <h1 class="display-6">Please Feel Free To Contact Us</h1>
            </div>
            <div class="row g-5 mb-5">
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-secondary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-location-arrow text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0">xyz Street, Chennai, Tamil Nadu</h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-secondary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-phone text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0">+91 9090909090</h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-secondary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-envelope-open text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0">onlinevotingsystem@gmail.com</h6>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center position-relative">
                <div class="col-lg-8">
                    <div class="bg-white rounded p-5 py-2 m-5 mb-0">
                        <form>
                            <div class="row g-3 form-control bg-light " >
                                <div class="col-12 col-sm-12">
                                    <input type="text" class="form-control  border-0" placeholder="Your Name" style="height: 55px;">
                                </div>
                                <div class="col-12 col-sm-12">
                                    <input type="email" class="form-control  border-0" placeholder="Your Email" style="height: 55px;">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control  border-0" placeholder="Subject" style="height: 55px;">
                                </div>
                                <div class="col-12">
                                    <textarea class="form-control  border-0" rows="5" placeholder="Message"></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-secondary  w-100 py-3" type="submit">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light mt-5 py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-light text-uppercase border-bottom border-5 border-secondary mb-4">Get In Touch</h4>
                    <p class="mb-4">Feel free to reach out to us, and we'll be happy to help!</p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-light me-3"></i>xyz Street, Chennai, Tamil Nadu</p>
                    <p class="mb-2"><i class="fa fa-envelope text-light me-3"></i>onlinevotingsystem@gmail.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-light me-3"></i>+91 9090909090</p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-light text-uppercase border-bottom border-5 border-secondary mb-4">Quick Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-light mb-2" href="#Home"><i class="fa fa-angle-right me-2"></i>Home</a>
                        <a class="text-light mb-2" href="#About"><i class="fa fa-angle-right me-2"></i>About Us</a>
                        <a class="text-light mb-2" href="#Service"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                        <a class="text-light" href="#Contact"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-light text-uppercase border-bottom border-5 border-secondary mb-4">Popular Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-light mb-2" href="#Home"><i class="fa fa-angle-right me-2"></i>Home</a>
                        <a class="text-light mb-2" href="#About"><i class="fa fa-angle-right me-2"></i>About Us</a>
                        <a class="text-light mb-2" href="#Service"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                        <a class="text-light" href="#Contact"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="d-inline-block text-light text-uppercase border-bottom border-5 border-secondary mb-4">Follow Us</h4>
                    <div class="d-flex">
                        <a class="btn btn-lg btn-light btn-lg-square rounded-circle me-2" href="#"><i class="fab fa-twitter text-secondary"></i></a>
                        <a class="btn btn-lg btn-light btn-lg-square rounded-circle me-2" href="#"><i class="fab fa-facebook-f text-secondary"></i></a>
                        <a class="btn btn-lg btn-light btn-lg-square rounded-circle me-2" href="#"><i class="fab fa-linkedin-in text-secondary"></i></a>
                        <a class="btn btn-lg btn-light btn-lg-square rounded-circle" href="#"><i class="fab fa-instagram text-secondary"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-light border-top border-secondary py-4">
        <div class="container">
            <div class="row g-5">
                <div class="text-center text-md-start">
                    <p class="mb-md-0 text-center">&copy; <a class="text-light" href="#">Senthil Nathan</a>. All Rights Reserved.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>



    <!-- Back to Top -->
    <a href="#" class="btn btn-primary btn-lg rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="./JS/lib/jquery/jquery.min.js"></script>
    <script src="./JS/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="./JS/lib/tempusdominus/js/moment.min.js"></script>
    <script src="./JS/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript ./JS/Signup.js-->
    <script src="./JS/bootstrap.bundle.min.js"></script>
    <script src="./JS/main.js"></script>
</body>

</html>

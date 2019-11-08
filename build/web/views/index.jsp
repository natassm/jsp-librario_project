<%-- 
    Document   : index
    Created on : Jul 18, 2019, 2:10:35 AM
    Author     : Natasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Librario | Home</title>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="views/css/style.css">
        <link rel="stylesheet" type="text/css" href="views/css/fixed.css">
    </head>
    <body data-spy="scroll" data-target="#navbarResponsive">
        <!-- Start Home Section -->
        <div id="home">
            <!-- NavBar -->
            <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
                <a href="#" class="navbar-logo"><img src="views/img/logo/logo.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
                    <span class="navbar-toggler-icon"></span>
		</button>
                
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a href="#home" class="nav-link">Home</a>
                        </li>
                        <li class="nav-item">
                            <a href="category" class="nav-link">Category</a>
                        </li>
                        <li class="nav-item">
                            <a href="#librarian" class="nav-link">Our Librarian</a>
                        </li>
                        <li class="nav-item">
                            <a href="login" class="nav-link">Login</a>
                        </li>
                        <li class="nav-item">
                            <a href="register" class="nav-link">Sign Up</a>
                        </li>
                        <li class="nav-item">
                            <a href="#contact" class="nav-link">Contact</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- End Navbar -->
            
            <!-- Image Slider -->
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="7000">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
		</ol>
                
                <!-- Carousel Inner -->
                <div class="carousel-inner" role="listbox">
                    <!-- Slide 1 -->
                    <div class="carousel-item active" style="background-image: url(views/img/bg/2.jpg);">
                        <div class="carousel-caption text-center">
                            <h1>HELLO</h1>
                            <h3>Welcome to  L I B R A R I O</h3>
                        </div>
                    </div>
                    
                    <!-- Slide 2 -->
                    <div class="carousel-item" style="background-image: url(views/img/bg/3.jpg);"></div>
                    
                    <!-- Slide 3 -->
                    <div class="carousel-item" style="background-image: url(views/img/bg/4.jpg);"></div>
                    
                    <!-- Slide 4 -->
                    <div class="carousel-item" style="background-image: url(views/img/bg/5.jpg);"></div>
                    
                    <!-- Slide 5 -->
                    <div class="carousel-item" style="background-image: url(views/img/bg/6.jpg);"></div>
		</div>
		<!-- End Carousel Inner -->

		<!-- Prev&Next Button -->
		<a href="#carouselExampleIndicators" class="carousel-control-prev" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		</a>

		<a href="#carouselExampleIndicators" class="carousel-control-next" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		</a>
		<!-- End Prev&Next Button -->
            
            </div>
            <!-- End Image Slider -->
        </div>
        <!-- End Home Section -->
        
        <!-- Start Category Section -->
        <div id="category" class="offset">
            
            <!-- Jumbotron Section -->
            <div class="jumbotron container-fluid">
                <div class="col-12 text-center">
                    <h3 class="heading text-center">Book Category</h3>
                    <div class="heading-underline"></div>
		</div>
                <!-- Row -->
                <div class="row padding">
                    <div class="col-sm-4">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/art1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Art</h4>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-4">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/business1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Bussines</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/children1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Children</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/college1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>College</h4>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-4">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/cook1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Cook</h4>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-4">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/creative.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Creative</h4>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-4">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/fiction1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Fiction</h4>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-4">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/note1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Notes</h4>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-4">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/novel1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Novel</h4>
                                </div>
                            </div>
			</div>
                    </div>
                    
                    
                    <div class="narrow text-center">
                        <div class="col-12">
                            <p class="lead">Want to See More Categories?</p>
                            <a href="category" class="btn btn-secondary btn-md">See More</a>
			</div>
                    </div>
                </div>
                <!-- End of Row2 -->
            </div>
            <!-- End of Jumbotron Section -->
        </div>
        <!-- End Category Section -->
        
        <!-- Start Librarian Section -->
        <div id="librarian" class="offset">
            
            <div class="col-12 text-center">
                <h3 class="heading">Our Librarian</h3>
		<div class="heading-underline"></div>
            </div>
            
            <!-- Start Row Padding -->
            <div class="row padding">
                
                <div class="col-md-6">
                    <div class="card text-center">
                        <img src="views/img/librarian/1.jpg" class="card-img-top">
                        <div class="card-body">
                            <h4>Susianti Ana</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                        </div>
                    </div>
		</div>
                <div class="col-md-6">
                    <div class="card text-center">
                        <img src="views/img/librarian/2.jpg" class="card-img-top">
			<div class="card-body">
                            <h4>Mei Mei</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                        </div>
                    </div>
		</div>
            </div>
            <!-- End of Row Padding -->
        
        </div>
        <!-- End Librarian Section -->
        
        <jsp:include page="layout/footer.jsp"></jsp:include>
        <jsp:include page="layout/scripts.jsp"></jsp:include>
    </body>
</html>


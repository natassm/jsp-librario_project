<%-- 
    Document   : category
    Created on : Jul 19, 2019, 1:52:22 AM
    Author     : Natasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Librario | Book's Category</title>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="views/css/category.css">
    </head>
    <body>
        <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="layout/sidebar.jsp"></jsp:include>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <jsp:include page="layout/navbar2.jsp"></jsp:include>

      <div class="container-fluid">
        
        <div class="row padding">
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/art1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Art</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/business1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Business</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/children1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Children</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/college1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>College</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/cook1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Cook</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/creative.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Creative</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/fashion1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Fashion</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/fiction1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Fiction</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/note1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Notes</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/novel1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Novel</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/romance2.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Romance</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>
                    <div class="col-sm-3">
                        <div class="category">
                            <div class="card text-center">
                                <img src="views/img/category/science1.jpg" class="card-img-top">
                                <div class="card-body">
                                    <h4>Science</h4>
                                    <a href="" class="btn btn-secondary btn-md" target="_blank">See More</a>
                                </div>
                            </div>
			</div>
                    </div>


      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
</div>
  <!-- /#wrapper -->
  <jsp:include page="layout/footer.jsp"></jsp:include>
  <jsp:include page="layout/scripts.jsp"></jsp:include>
  
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
  
    </body>
    
</html>

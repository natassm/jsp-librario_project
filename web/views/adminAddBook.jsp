<%-- 
    Document   : adminAddBook
    Created on : Jul 19, 2019, 9:03:41 AM
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
    <jsp:include page="layout/sidebarAdmin.jsp"></jsp:include>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <jsp:include page="layout/navbarAdmin.jsp"></jsp:include>

      <div class="container-fluid">
          <div class="container">
            <div class="row">
                <div class="col-md-12 mt-5 mt-3">
                    <h3>Add Book</h3>
                    <form action="addBook" method="post">
                        <div class="form-group">
                            <label>Title</label>
                            <input class="form-control" name="title" type="text" required/>
                        </div>
                        <div class="form-group">
                            <label>Author</label>
                            <input class="form-control" name="author" type="text" required/>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <input class="form-control" name="category" type="text" required/>
                        </div>
                        <div class="form-group">
                            <label>Shelf</label>
                            <input class="form-control" name="shelf" type="text" required/>
                        </div>
                        <div class="form-group">
                            <label>Publisher</label>
                            <input class="form-control" name="publisher" type="text" required/>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-sm btn-danger" type="reset">Reset</button>
                            <button class="btn btn-sm btn-primary" type="submit">Submit</button>
                        </div>
                    </form> 
                </div>
                </div>
        </div>
      </div>
    <!-- /#page-content-wrapper -->

  </div>
</div>
  <!-- /#wrapper -->
  <jsp:include page="layout/scripts.jsp"></jsp:include>
  
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
  
    </body>
    
</html>

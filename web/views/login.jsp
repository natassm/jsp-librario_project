<%-- 
    Document   : login
    Created on : Jul 19, 2019, 1:43:53 AM
    Author     : Natasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Librario | Login</title>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="views/css/loginregis.css">
    </head>
    <body>
        <body>
  <div class="container">
    <div class="row">
      <div class="col-lg-10 col-xl-9 mx-auto">
        <div class="card card-signin flex-row my-5">
          <div class="card-img-left d-none d-md-flex">
             <!-- Background image for card set in CSS -->
          </div>
          <div class="card-body">
            <h5 class="card-title text-center">Login</h5>
            <% if(request.getAttribute("alert") != null){%>
              <div class="alert alert-danger alert-dismissible fade show mt-3 mb-3" role="alert">
                  <%out.print(request.getAttribute("alert").toString()); %>
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div>
                  <%}%>
            <form action="login" method="post" class="form-signin">
              <div class="form-label-group">
                  <label for="inputUsername">Username</label>
                  <br>
                <input type="text" name="username" class="form-control" placeholder="Username" required="required">
                
              </div>
              <hr>
              <div class="form-label-group">
                  <label for="inputPassword">Password</label>
                  <br>
                <input type="password" name="password" class="form-control" placeholder="Password" required="required">
                
              </div>

              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Login</button>
              <a class="d-block text-center mt-2 small" href="register">Sign Up</a>
              <hr class="my-4">
              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Login with Google</button>
              <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Login with Facebook</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
            <jsp:include page="layout/scripts.jsp"></jsp:include>
    </body>
</html>

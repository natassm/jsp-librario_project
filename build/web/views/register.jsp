<%-- 
    Document   : register
    Created on : Jul 19, 2019, 1:47:16 AM
    Author     : Natasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Librario | Register</title>
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
             <!-- Background image for card set in CSS! -->
          </div>
          <div class="card-body">
            <h5 class="card-title text-center">Register</h5>
            <form class="form-signin" action="register" method="post">
              <div class="form-label-group">
                  <label>Username</label>
                  <br>
                <input type="text" name="username" class="form-control" placeholder="Username" required/>
              </div>
                
              <div class="form-label-group">
                <label>Name</label>
                <br>
                <input type="text" name="name" class="form-control" placeholder="Name" required>
              </div>

              <div class="form-label-group">
                <label>Email address</label>
                <br>
                <input type="email" name="email" class="form-control" placeholder="Email address" required>
              </div>
              
              <div class="form-label-group">
                <label>Password</label>
                <br>
                <input type="password" name="password" class="form-control" placeholder="Password" required>
              </div>
              
              <div class="form-label-group">
                <label>Role</label>
                <br>
                <select class="form-control" name="role">
                    <option value="Admin">Admin</option>
                    <option value="User">User</option>
                </select>
              </div>
              
              <hr>
              
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
              <a class="d-block text-center mt-2 small" href="login">Log In</a>
              <hr class="my-4">
              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Sign up with Google</button>
              <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Sign up with Facebook</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
            <jsp:include page="layout/scripts.jsp"></jsp:include>
    </body>
</html>

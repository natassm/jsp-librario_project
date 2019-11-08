<%-- 
    Document   : adminShelf
    Created on : Jul 19, 2019, 10:27:22 AM
    Author     : Natasha
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.TableController"%>
<%@page import="DBConnection.DBConnection"%>
<%@page import="DBConnection.DBConnection"%>
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
          <%
            DBConnection dbcon = new DBConnection();
            Connection con = dbcon.open();
            TableController bc = new TableController();
            ResultSet rs = bc.get2(con);
            %>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="mt-5 mb-5">Shelf</h3>
                    <table class="table table-bordered pb-5">
                        <thead>
                            <tr>
                                <td>Shelf ID</td>
                                <td>Shelf Info</td>
                            </tr>
                        </thead>
                        <tbody>
                            <%while (rs.next()){%>
                            <tr>
                                <td><% out.println(rs.getString("shelfID"));%></td>
                                <td><% out.println(rs.getString("shelfInfo"));%></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <% con.close(); %>
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
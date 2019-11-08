<%-- 
    Document   : book_all
    Created on : Jul 19, 2019, 2:38:59 AM
    Author     : Natasha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.BookController"%>
<%@page import="java.sql.Connection"%>
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
    <jsp:include page="layout/sidebar.jsp"></jsp:include>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <jsp:include page="layout/navbar2.jsp"></jsp:include>

      <div class="container-fluid">
          <%
            DBConnection dbcon = new DBConnection();
            Connection con = dbcon.open();
            BookController bc = new BookController();
            ResultSet rs = bc.get(con);
            %>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="mt-5 mb-5">List of Product</h3>
                    <table class="table table-bordered pb-5">
                        <thead>
                            <tr>
                                <td>Title</td>
                                <td>Author</td>
                                <td>Amount</td>
                                <td>Category</td>
                                <td>Shelf</td>
                                <td>Publisher</td>
                                <td>Publication Year</td>
                            </tr>
                        </thead>
                        <tbody>
                            <%while (rs.next()){%>
                            <tr>
                                <td><% out.println(rs.getString("bookTitle"));%></td>
                                <td><% out.println(rs.getString("bookAuthor"));%></td>
                                <td><% out.println(rs.getString("bookAmount"));%></td>
                                <td><% out.println(rs.getString("categoryID"));%></td>
                                <td><% out.println(rs.getString("shelfID"));%></td>
                                <td><% out.println(rs.getString("publisherID"));%></td>
                                <td><% out.println(rs.getString("publicationYear"));%></td>
                                <td>
                                    <form class="form-inline" method="post" action="DeleteBookServlet">
                                        <a href="EditBookServlet?id=<% out.print(rs.getString("bookID"));%>"
                                           class="btn btn-sm btn-primary">Edit</a>
                                        
                                           <input type="hidden" value="<% out.print(rs.getString("bookID"));%>"
                                                  name="id"/>
                                        
                                           <button onclick="return confirm('Are you sure?')" href="DeleteBookServlet?id=<% out.print(rs.getString("bookID"));%>"
                                                   type="submit" class="btn btn-sm btn-danger ml-1">Delete</button>
                                    </form>
                                </td>
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


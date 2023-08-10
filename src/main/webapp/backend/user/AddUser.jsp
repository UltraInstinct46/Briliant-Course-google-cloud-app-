<%-- 
    Document   : EditUser
    Created on : Jul 21, 2022, 7:17:03 AM
    Author     : killua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Custom styles for this template -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Add User</h1></center>
    <form class="container" action="../../User?proses=registeradmin" method="post">
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" placeholder="Name" name="name" required>
  </div>
   <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
  </div>
  <div class="form-group">
    <label for="roles">Roles</label>
    <select class="form-control" aria-label="Default select example" name="roles">
      <option value="customers">customers</option>
      <option value="admin">admin</option>
    </select>
  </div>
  <button type="submit" class="btn btn-success">Add</button>
  <a href="DataUser.jsp"><button type="button" class="btn btn-warning">Cancel</button></a>
    </div>
</form>
    </body>
</html>

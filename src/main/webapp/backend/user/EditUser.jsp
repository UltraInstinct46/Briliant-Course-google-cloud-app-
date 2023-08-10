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
        <title>Edit User</title>
    </head>
    <body>
        <%@ include file="../header.jsp"%>
    <center><h1>Edit User</h1></center>
    <form class="container" action="../../User?proses=updateuserdata" method="post">
  <div class="form-group">
    <label for="id">ID</label>
    <input type="text" class="form-control" id="id" aria-describedby="id" placeholder="ID" readonly name="id_user" value="<%=session.getAttribute("id_user")%>">
  </div>
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" placeholder="Name" name="name_user" value="<%=session.getAttribute("name_user")%>">
  </div>
   <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" placeholder="Email" name="email_user" value="<%=session.getAttribute("email_user")%>">
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" placeholder="Password" name="password_user" value="<%=session.getAttribute("password_user")%>">
  </div>
  <div class="form-group">
    <label for="roles">Roles</label>
    <select class="form-control" aria-label="Default select example" name="roles_user">
      <option value="customers" <%if(session.getAttribute("roles_user").equals("customers")){%>selected<%}%>>customers</option>
      <option value="admin" <%if(session.getAttribute("roles_user").equals("admin")){%>selected<%}%>>admin</option>
    </select>
  </div>
  <button type="submit" class="btn btn-success">Update</button>
  <a href="DataUser.jsp"><button type="button" class="btn btn-warning">Cancel</button></a>
    </div>
</form>
    </body>
</html>
